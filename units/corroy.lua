return {
	corroy = {
		acceleration = 0.050000000745058,
		activatewhenbuilt = true,
		brakerate = 0.10000000149012,
		buildangle = 16384,
		buildcostenergy = 5756,
		buildcostmetal = 1021,
		buildpic = "CORROY.DDS",
		buildtime = 13368,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON SHIP NOTSUB NOTAIR",
		collisionvolumeoffsets = "0 -1 0",
		collisionvolumescales = "34 28 80",
		collisionvolumetest = 1,
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Destroyer",
		energymake = 1.8999999761581,
		energyuse = 1.8999999761581,
		explodeas = "BIG_UNITEX",
		floater = true,
		footprintx = 4,
		footprintz = 4,
		icontype = "sea",
		idleautoheal = 28,
		idletime = 900,
		maxdamage = 2800,
		maxvelocity = 3.2200000286102,
		minwaterdepth = 12,
		movementclass = "BOAT4",
		name = "Enforcer",
		nochasecategory = "VTOL",
		objectname = "CORROY",
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT",
		sightdistance = 465,
		sonardistance = 400,
		turnrate = 193,
		waterline = 3.5,
		windgenerator = 0.0010000000474975,
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				damage = 1680,
				description = "Enforcer Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 5,
				footprintz = 5,
				height = 4,
				hitdensity = 100,
				metal = 577,
				object = "CORROY_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2016,
				description = "Enforcer Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 249,
				object = "5X5D",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "shcormov",
			},
			select = {
				[1] = "shcorsel",
			},
		},
		weapondefs = {
			core_roy = {
				areaofeffect = 64,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH4",
				gravityaffected = "true",
				impulseboost = 0.12300000339746,
				impulsefactor = 0.12300000339746,
				name = "HeavyCannon",
				noselfdamage = true,
				range = 710,
				reloadtime = 2.5,
				soundhit = "xplomed2",
				soundstart = "cannhvy1",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 320,
				damage = {
					default = 310,
					hgunships = 45,
					l1bombers = 45,
					l1subs = 5,
					l2fighters = 45,
					vtol = 45,
				},
			},
			depthcharge = {
				areaofeffect = 32,
				avoidfriendly = false,
				burnblow = true,
				collidefriendly = false,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.99000000953674,
				explosiongenerator = "custom:FLASH2",
				impulseboost = 0.12300000339746,
				impulsefactor = 0.12300000339746,
				model = "DEPTHCHARGE",
				name = "DepthCharge",
				noselfdamage = true,
				range = 400,
				reloadtime = 2.5,
				soundhit = "xplodep2",
				soundstart = "torpedo1",
				startvelocity = 100,
				tolerance = 1000,
				tracks = true,
				turnrate = 1700,
				turret = true,
				waterweapon = true,
				weaponacceleration = 15,
				weapontimer = 3,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 100,
				damage = {
					default = 210,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "CORE_ROY",
				onlytargetcategory = "NOTAIR",
			},
			[2] = {
				def = "DEPTHCHARGE",
			},
		},
	},
}
