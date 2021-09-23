local unitName = Spring.I18N('units.names.corfav')

return {
	corfav = {
		acceleration = 0.11933,
		brakerate = 0.23865,
		buildcostenergy = 270,
		buildcostmetal = 26,
		buildpic = "CORFAV.PNG",
		buildtime = 1150,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE GROUNDSCOUT EMPABLE",
		collisionvolumeoffsets = "0 -1 0",
		collisionvolumescales = "28 17 33",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = Spring.I18N('units.descriptions.corfav'),
		explodeas = "tinyExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = false,
		maxdamage = 95,
		maxslope = 26,
		maxvelocity = 4.6,
		maxwaterdepth = 12,
		movementclass = "TANK1",
		name = unitName,
		nochasecategory = "VTOL",
		objectname = "Units/CORFAV.s3o",
		script = "Units/CORFAV.cob",
		seismicsignature = 0,
		selfdestructas = "tinyExplosionGenericSelfd",
		sightdistance = 600,
		trackoffset = -3,
		trackstrength = 3,
		tracktype = "StdTank",
		trackwidth = 27,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 3.2274,
		turnrate = 612,
		customparams = {
			basename = "base",
			cannon1name = "turret",
			longdescription = Spring.I18N('units.longDescriptions.corfav'),
			driftratio = "0.7",
			firingceg = "",
			flare1name = "flare",
			kickback = "0",
			model_author = "Mr Bob, PtaQ",
			normaltex = "unittextures/cor_normal.dds",
			restoretime = "3000",
			rockstrength = "0",
			sleevename = "turret",
			subfolder = "corvehicles",
			turretname = "turret",
			wpn1turretx = "200",
			wpn1turrety = "200",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -2.81028394531 1.25487518311",
				collisionvolumescales = "27.7855834961 9.28491210938 30.4499664307",
				collisionvolumetype = "Box",
				damage = 132,
				description = Spring.I18N('units.dead', { name = unitName }),
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 16,
				object = "Units/corfav_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 66,
				description = Spring.I18N('units.heap', { name = unitName }),
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 6,
				object = "Units/cor2X2B.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
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
				[1] = "vcormove",
			},
			select = {
				[1] = "vcorsel",
			},
		},
		weapondefs = {
			cor_laser = {
				areaofeffect = 8,
				avoidfeature = false,
				beamtime = 0.18,
				beamttl = 1,
				burstrate = 0.2,
				corethickness = 0.1,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0.02,
				edgeeffectiveness = 0.15,
				energypershot = 5,
				explosiongenerator = "custom:laserhit-tiny-yellow",
				firestarter = 50,
				hardstop = true,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 3.85,
				name = "Laser",
				noselfdamage = true,
				range = 180,
				reloadtime = 1,
				rgbcolor = "1 1 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundstart = "lasrfir1",
				soundtrigger = 1,
				targetmoveerror = 0.2,
				thickness = 0.95,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 800,
				customparams = {
					expl_light_mult = 0.5,
					expl_light_radius_mult = 0.5,
					light_mult = 0.5,
				},
				damage = {
					bombers = 2,
					default = 35,
					fighters = 2,
					subs = 5,
					vtol = 2,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "COR_LASER",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
