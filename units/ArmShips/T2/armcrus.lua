return {
	armcrus = {
		acceleration = 0.93*1.25/60,
		activatewhenbuilt = true,
		brakerate = 0.93*1.25/900,
		buildangle = 16384,
		buildcostenergy = 44000,
		buildcostmetal = 4000,
		buildpic = "ARMCRUS.DDS",
		buildtime = 84000*1.1,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTSUB SHIP NOTAIR NOTHOVER SURFACE CAPITALSHIP",
		collisionvolumeoffsets = "0 -17 0",
		collisionvolumescales = "50 50 147",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "BattleCruiser (Good vs Capital Ships)",
		energymake = 2.6,
		energyuse = 2.5,
		explodeas = "largeexplosiongeneric",
		pushresistant = true,
		floater = true,
		footprintx = 3,
		footprintz = 9,
		icontype = "sea",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 12000,
		maxvelocity = 0.93*1.25,
		minwaterdepth = 30,
		movementclass = "BOATCRUISER3X9",
		name = "Conqueror",
		nochasecategory = "VTOL",
		objectname = "ARMCRUS",
		seismicsignature = 0,
		selfdestructas = "largeexplosiongeneric",
		sightdistance = 1400,
		sonardistance = 700,
		turninplace = 0,
		turninplaceanglelimit = 10,
		turninplacespeedlimit = 1.9008,
		turnrate = 85,
		waterline = 5,
		customparams = {
			
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-4.49415588379 -0.469155969238 -3.86915588379",
				collisionvolumescales = "72.6282958984 60.4258880615 162.154632568",
				collisionvolumetype = "Box",
				damage = 2704,
				description = "Conqueror Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 3,
				footprintz = 9,
				height = 4,
				hitdensity = 100,
				metal = 2000,
				object = "ARMCRUS_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2016,
				description = "Conqueror Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 1000,
				object = "2X2A",
                collisionvolumescales = "35.0 4.0 6.0",
                collisionvolumetype = "cylY",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = {
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
			explosiongenerators = {
				[1] = "custom:barrelshot-medium",
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
				[1] = "sharmmov",
			},
			select = {
				[1] = "sharmsel",
			},
		},
		weapondefs = {
			armcrus_kine = {
				accuracy = 256,
				areaofeffect = 8,
				avoidfeature = false,
				sizedecay = 0.1,
				alphadecay = 0.5,
				burst = 2,
				burstrate = 0.1,
				projectiles = 1,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-small",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "HeavyPlasmaCannon",
				noselfdamage = true,
				range = 1200,
				reloadtime = 5,
				soundhit = "xplomed2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "cannhvy1",
				targetmoveerror = 0.1,
				turret = true,
				size = 1.2,
				tolerance = 0,
				firetolerance = 200,
				weapontype = "Cannon",
				weaponvelocity = 600,
				separation = 1.0,
				nogap = false,
				stages = 5,
				damage = {
					bombers = 1,
					default = 81,
					fighters = 1,
					subs = 1,
					vtol = 1,
					scouts = 325,
					corvettes = 81,
					destroyers = 32,
					cruisers = 32,
					carriers = 32,
					flagships = 32,
					battleships = 32,
				},
			},
				armcrus_hvkine = {
				accuracy = 256,
				areaofeffect = 16,
				avoidfeature = false,
				sizedecay = 0.2,
				alphadecay = 0.2,
				burst = 2,
				burstrate = 0.2,
				projectiles = 1,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-medium",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "HeavyPlasmaCannon",
				noselfdamage = true,
				range = 1200,
				reloadtime = 2.5,
				soundhit = "xplomed2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "cannhvy1",
				targetmoveerror = 0.1,
				turret = true,
				size = 2,
				tolerance = 0,
				firetolerance = 200,
				weapontype = "Cannon",
				weaponvelocity = 500,
				separation = 1.0,
				nogap = false,
				stages = 5,
				damage = {
					bombers = 1,
					default = 162,
					fighters = 1,
					subs = 1,
					vtol = 1,
					scouts = 650,
					corvettes = 162,
					destroyers = 65,
					cruisers = 65,
					carriers = 65,
					flagships = 65,
					battleships = 65,
				},
			},
			adv_decklaser = {
				areaofeffect = 8,
				avoidfeature = false,
				beamtime = 0.01,
				beamttl = 20,
				beamdecay = 0.8,
				corethickness = 0.1,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0.02,
				energypershot = 3,
				explosiongenerator = "custom:laserhit-small-green",
				firestarter = 50,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 5,
				name = "Laser",
				noselfdamage = true,
				range = 200,
				reloadtime = 0.7,
				rgbcolor = "0 1 1",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "lasrfir1",
				soundtrigger = 1,
				targetmoveerror = 0.2,
				thickness = 1,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 750,
				damage = {
					bombers = 1,
					default = 5,
					fighters = 1,
					subs = 1,
					vtol = 1,
					scouts = 55,
					corvettes = 125,
					destroyers = 5,
					cruisers = 5,
					carriers = 5,
					flagships = 5,
					battleships = 5,
				},
			},
			heavyplasmacannon_front = {
				accuracy = 300,
				areaofeffect = 32,
				avoidfeature = false,
				sizedecay = 0.2,
				burst = 2,
				burstrate = 0.01,
				alphadecay = 0.2,
				projectiles = 1,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-medium",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "HeavyPlasmaCannon",
				noselfdamage = true,
				range = 1200,
				reloadtime = 15,
				soundhit = "xplomed2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "largegun",
				targetmoveerror = 0.1,
				turret = true,
				tolerance = 0,
				firetolerance = 200,
				weapontype = "Cannon",
				weaponvelocity = 400,
				separation = 1.0,
				nogap = false,
				size = 3,
				stages = 7,
				damage = {
					bombers = 1,
					default = 750,
					fighters = 1,
					corvettes = 75000,
					scouts = 150000,
					lightsubmarines = 1,
					heavysubmarines = 1,
					destroyers = 750,
					cruisers = 750,
					carriers = 750,
					battleships = 750,
					flagships = 750,
					vtol = 1,
				},
			},
			heavyplasmacannon_rear = {
				accuracy = 300,
				areaofeffect = 32,
				avoidfeature = false,
				sizedecay = 0.2,
				alphadecay = 0.2,
				projectiles = 1,
				burst = 2,
				burstrate = 0.01,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-medium",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "HeavyPlasmaCannon",
				noselfdamage = true,
				range = 1200,
				reloadtime = 15,
				soundhit = "xplomed2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "largegun",
				targetmoveerror = 0.1,
				turret = true,
				tolerance = 0,
				firetolerance = 200,
				weapontype = "Cannon",
				weaponvelocity = 400,
				separation = 1.0,
				nogap = false,
				size = 3,
				stages = 7,
				damage = {
					bombers = 1,
					default = 750,
					fighters = 1,
					corvettes = 75000,
					scouts = 150000,
					lightsubmarines = 1,
					heavysubmarines = 1,
					destroyers = 750,
					cruisers = 750,
					carriers = 750,
					battleships = 750,
					flagships = 750,
					vtol = 1,
				},
			},
		},
		weapons = {
			[1] = {
				def = "HEAVYPLASMACANNON_REAR",
				badtargetcategory = "LIGHTBOAT VTOL CORVETTE SUBMARINE",
				onlytargetcategory = "SURFACE",
				maindir = "0 0 1",
				maxangledif = 280,
			},
			[2] = {
				badtargetcategory = "LIGHTBOAT VTOL CORVETTE SUBMARINE",
				def = "HEAVYPLASMACANNON_FRONT",
				maindir = "0 0 -1",
				maxangledif = 280,
				onlytargetcategory = "SURFACE",
			},
			[3] = {
				def = "ARMCRUS_HVKINE",
				badtargetcategory = "LIGHTBOAT VTOL CORVETTE SUBMARINE",
				maindir = "0 0 1",
				maxangledif = 320,
				onlytargetcategory = "SURFACE",
			},
			[5] = {
				def = "ARMCRUS_KINE",
				badtargetcategory = "VTOL CAPITALSHIP",
				maindir = "-2 0 1",
				maxangledif = 240,
				onlytargetcategory = "SURFACE",
			},
			[4] = {
				def = "ARMCRUS_KINE",
				badtargetcategory = "VTOL CAPITALSHIP",
				maindir = "2 0 1",
				maxangledif = 240,
				onlytargetcategory = "SURFACE",
			},
			[7] = {
				badtargetcategory = "VTOL CAPITALSHIP",
				def = "ARMCRUS_KINE",
				maindir = " 1 0 0",
				maxangledif = 220,
				onlytargetcategory = "SURFACE",
			},
			[6] = {
				badtargetcategory = "VTOL CAPITALSHIP",
				def = "ARMCRUS_KINE",
				maindir = "-1 0 0",
				maxangledif = 220,
				onlytargetcategory = "SURFACE",
			},
			[8] = {
				def = "ADV_DECKLASER",
				badtargetcategory = "VTOL CAPITALSHIP",
				maindir = "1 0 0",
				maxangledif = 160,
				onlytargetcategory = "SURFACE",
			},
			[9] = {
				badtargetcategory = "VTOL CAPITALSHIP",
				def = "ADV_DECKLASER",
				maindir = "1 0 0",
				maxangledif = 160,
				onlytargetcategory = "SURFACE",
			},
			[10] = {
				badtargetcategory = "VTOL CAPITALSHIP",
				def = "ADV_DECKLASER",
				maindir = "-1 0 0",
				maxangledif = 160,
				onlytargetcategory = "SURFACE",
			},
			[11] = {
				badtargetcategory = "VTOL CAPITALSHIP",
				def = "ADV_DECKLASER",
				maindir = "-1 0 0",
				maxangledif = 160,
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
