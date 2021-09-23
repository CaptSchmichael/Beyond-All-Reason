local unitName = Spring.I18N('units.names.coresupp')

return {
	coresupp = {
		acceleration = 0.11054,
		brakerate = 0.11054,
		buildangle = 16384,
		buildcostenergy = 1000,--1450,
		buildcostmetal = 100,--145,
		buildpic = "CORESUPP.PNG",
		buildtime = 1400,--2350,
		canmove = true,
		category = "ALL WEAPON SHIP NOTSUB NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 -2 -1",
		collisionvolumescales = "14 14 41",--"19 19 58",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = Spring.I18N('units.descriptions.coresupp'),
		explodeas = "mediumexplosiongeneric",
		floater = true,
		footprintx = 2,
		footprintz = 2,
		icontype = "sea",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 430,
		maxvelocity = 3.66,
		minwaterdepth = 12,
		movementclass = "BOAT2",
		name = unitName,
		nochasecategory = "UNDERWATER VTOL",
		objectname = "Units/CORESUPP.s3o",
		script = "Units/CORESUPP.cob",
		seismicsignature = 0,
		selfdestructas = "mediumexplosiongenericSelfd",
		sightdistance = 500,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 663,
		waterline = 0,
		customparams = {
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corships",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "2.05702972412 -6.65740128174 -1.55792999268",
				collisionvolumescales = "37.2419281006 12.2129974365 67.4956207275",
				collisionvolumetype = "Box",
				damage = 300,
				description = Spring.I18N('units.dead', { name = unitName }),
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 50,
				object = "Units/coresupp_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 500,
				description = Spring.I18N('units.heap', { name = unitName }),
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 25,
				object = "Units/cor4X4B.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:waterwake-tiny-long",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
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
			laser = {
				areaofeffect = 12,
				avoidfeature = false,
				beamtime = 0.16,
				corethickness = 0.1,--0.14,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				energypershot = 5,
				explosiongenerator = "custom:laserhit-small-red",
				firestarter = 30,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 5,--8.8,
				minintensity = 0.6,
				name = "LightLaser",
				noselfdamage = true,
				range = 280,
				reloadtime = 1,--0.63333,
				rgbcolor = "1 0 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "lasrfir3",
				soundtrigger = 1,
				targetmoveerror = 0.1,
				thickness = 1.7,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 2250,
				damage = {
					bombers = 6,
					default = 37,
					fighters = 6,
					vtol = 6,
				},
			},
		},
		weapons = {
			[1] = {
				def = "LASER",
				maindir = "0 0 1",
				maxangledif = 285,
				onlytargetcategory = "NOTSUB",
			},
			[2] = {
				def = "LASER",
				maindir = "0 0 -1",
				maxangledif = 285,
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
