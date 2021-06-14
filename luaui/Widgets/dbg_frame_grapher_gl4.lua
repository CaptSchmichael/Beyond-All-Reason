-- reading on VAO vs VBO: http://webcache.googleusercontent.com/search?q=cache:-6vWVN6Rur8J:wiki.lwjgl.org/wiki/The_Quad_with_DrawArrays.html+&cd=4&hl=en&ct=clnk&gl=hu&client=firefox-b-d
-- reading on LuaVAO: https://github.com/beyond-all-reason/spring/blob/BAR/rts/Lua/LuaVAOImpl.cpp
-- reading on LuaVBO: https://github.com/beyond-all-reason/spring/blob/BAR/rts/Lua/LuaVBOImpl.cpp
-- Quick video on what VAO/VBO are: https://www.youtube.com/watch?v=WMiggUPst-Q

function widget:GetInfo()
	return {
		name = "Frame Grapher GL4",
		desc = "Draw frame time graph in bottom right",
		author = "Beherith",
		date = "2021.mar.29",
		layer = -100000,
		enabled = false, --  loaded by default
	}
end

---------------------------Speedups-----------------------------
local spGetTimer = Spring.GetTimer
local spDiffTimers = Spring.DiffTimers 
---------------------------Internal vars---------------------------
local timerstart = nil
----------------------------GL4 vars----------------------------

local rectShader = nil

local luaShaderDir = "LuaUI/Widgets/Include/"
local LuaShader = VFS.Include(luaShaderDir.."LuaShader.lua")
VFS.Include(luaShaderDir.."instancevbotable.lua")
local maxframes = 500

local rectInstanceTable = nil
local rectInstancePtr = 0

local vsSrc = [[
#version 420

layout (location = 0) in vec4 coords; // a set of coords coming from vertex buffer
layout (location = 1) in vec3 time_duration_wasgf; // a 'time' for the frame, in milliseconds, and a duration also in ms

uniform vec4 shaderparams; // .y contains the current actual time

//__ENGINEUNIFORMBUFFERDEFS__

out DataVS {
  vec3 v_time_duration_wasgf;
};

void main() {
	// current time will be equal to full right, e.g an x coord of 1
  
  float rect_width_pixels  = time_duration_wasgf.y / viewGeometry.x - 1 / viewGeometry.x; 
  float rect_height_pixels = 8 * time_duration_wasgf.y / viewGeometry.y;
  float rect_bottom_right  = 1.0 -  (shaderparams.x * 1.0 - time_duration_wasgf.x  ) / viewGeometry.x;

  gl_Position = vec4(
    rect_bottom_right - coords.x*rect_width_pixels,
    -1.0 + coords.y * rect_height_pixels,
    0.5 + 0.1*time_duration_wasgf.z,
    1.0
  );
  
  if (rect_bottom_right < 0 ) gl_Position.xy = vec2(-1.0);
  if (time_duration_wasgf.y > 200.0 ) gl_Position.xy = vec2(-1.0);
  
  //gl_Position = vec4(coords.x , coords.y, 0.5, 1.0); // easy debugging
  
  v_time_duration_wasgf = time_duration_wasgf ;
}
]]

local fsSrc = [[
#version 330

#extension GL_ARB_uniform_buffer_object : require
#extension GL_ARB_shading_language_420pack: require

//__ENGINEUNIFORMBUFFERDEFS__

uniform vec4 shaderparams;

in DataVS {
  vec3 v_time_duration_wasgf;
};

out vec4 fragColor;

void main() {
  float green = clamp(v_time_duration_wasgf.y/16.6, 0.0, 1.0);
  float red = clamp((v_time_duration_wasgf.y-16.6)/16.6, 0.0, 1.0);
  if (v_time_duration_wasgf.y > 16.6) green = clamp(1.0-(v_time_duration_wasgf.y-16.6)/16.6, 0.0, 1.0);
	fragColor = vec4(red,green,0,0.75 );
  if (v_time_duration_wasgf.z > 0.5 ) fragColor = vec4(0.0, 0.0, 1.0, 1.0);
}
]]
--------------------------------------------------------------------------------

function widget:Initialize()
  local rectvbo, numVertices = makeRectVBO(0,0,1,1,0,0,1,1)
  rectInstanceTable = makeInstanceVBOTable( {{id = 1,  name = "instances",size = 3}}, maxframes+1, "framegraphervbotable")
  rectInstanceTable.VAO = makeVAOandAttach(rectvbo,rectInstanceTable.instanceVBO)
  rectInstanceTable.numVertices = numVertices

  local engineUniformBufferDefs = LuaShader.GetEngineUniformBufferDefs()
  rectShader = LuaShader({
      vertex = vsSrc:gsub("//__ENGINEUNIFORMBUFFERDEFS__", engineUniformBufferDefs) ,
      fragment = fsSrc:gsub("//__ENGINEUNIFORMBUFFERDEFS__", engineUniformBufferDefs),
      uniformInt = {}, --  usually textures go here
      uniformFloat = {  shaderparams = {alpha, 0.5, 0.5, 0.5},} -- other uniform params
      })
    
  local shaderCompiled = rectShader:Initialize()
  if not shaderCompiled then
   Spring.Echo("Failed to compile shaders for: frame grapher v2")
   widgetHandler:RemoveWidget(self)
  end
  timerstart = Spring.GetTimer()
  timerold = Spring.GetTimer()
end 

function widget:Shutdown()
	if rectShader then rectShader:Finalize() end
end

local wasgameframe = 0
local prevframems = 0
function widget:GameFrame(n)
  wasgameframe =  wasgameframe + 1
end

function widget:DrawScreen()
	local timernew = spGetTimer()
	local lastframeduration = spDiffTimers(timernew, timerold)*1000 -- in MILLISECONDS
	timerold = timernew
  local lastframetime = spDiffTimers(timernew, timerstart) * 1000 -- in MILLISECONDS
  
  
  rectInstancePtr = rectInstancePtr+1
  if rectInstancePtr >= maxframes then rectInstancePtr = 0 end
  pushElementInstance(rectInstanceTable, {lastframetime, lastframeduration, 0}, rectInstancePtr, true)
  if wasgameframe>0 then
      
    rectInstancePtr = rectInstancePtr+1
    if rectInstancePtr >= maxframes then rectInstancePtr = 0 end
    pushElementInstance(rectInstanceTable, {lastframetime, lastframeduration-prevframems, 1}, rectInstancePtr, true)
  end
  
  
  rectShader:Activate()
   -- We should be setting individual uniforms AFTER activate
  rectShader:SetUniform("shaderparams", lastframetime,0,0,0)
  drawInstanceVBO(rectInstanceTable)
  rectShader:Deactivate()
  wasgameframe = 0
  prevframems = lastframeduration
end
