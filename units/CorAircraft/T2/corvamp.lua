local unitName = Spring.I18N('units.names.corvamp')

return {
	corvamp = {
		acceleration = 0.35,
		airsightdistance = 1100,
		blocking = false,
		brakerate = 0.0875,
		buildcostenergy = 3700,
		buildcostmetal = 105,
		buildpic = "CORVAMP.PNG",
		buildtime = 6554,
		canfly = true,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON VTOL NOTSUB NOTSHIP NOTHOVER",
		collide = false,
		cruisealt = 160,
		description = Spring.I18N('units.descriptions.corvamp'),
		explodeas = "smallExplosionGenericAir",
		footprintx = 2,
		footprintz = 2,
		icontype = "air",
		maxacc = 0.2075,
		maxaileron = 0.01488,
		maxbank = 0.8,
		maxdamage = 260,
		maxelevator = 0.01113,
		maxpitch = 0.625,
		maxrudder = 0.00663,
		maxslope = 10,
		maxvelocity = 12.65,
		maxwaterdepth = 0,
		name = unitName,
		nochasecategory = "NOTAIR",
		objectname = "Units/CORVAMP.s3o",
		script = "Units/CORVAMP.cob",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericAir",
		sightdistance = 250,
		speedtofront = 0.06475,
		stealth = true,
		turnradius = 64,
		turnrate = 980,
		usesmoothmesh = true,
		wingangle = 0.06363,
		wingdrag = 0.21,
		customparams = {
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "coraircraft/t2",
			techlevel = 2,
			fighter = 1,
		},
		sfxtypes = {
			crashexplosiongenerators = {
				[1] = "crashing-tiny",
				[2] = "crashing-tiny2",
			},
			pieceexplosiongenerators = {
				[1] = "airdeathceg3",
				[2] = "airdeathceg4",
				[3] = "airdeathceg2",
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
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "vtolcrac",
			},
		},
		weapondefs = {
			corvtol_advmissile = {
				areaofeffect = 8,
				avoidfeature = false,
				burnblow = true,
				canattackground = false,
				cegtag = "missiletrailfighter",
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-tiny-air",
				firestarter = 0,
				flighttime = 1.4,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "cormissile.s3o",
				name = "Guided a2a/a2g missile launcher",
				noselfdamage = true,
				range = 740,
				reloadtime = 1,
				smoketrail = true,
				smokePeriod = 4,
				smoketime = 8,
				smokesize = 1.8,
				smokecolor = 0.55,
				smokeTrailCastShadow = false,
				castshadow = false,
				soundhit = "xplosml2",
				soundhitwet = "splshbig",
				soundstart = "Rocklit3",
				startvelocity = 515,
				texture1 = "null",
				texture2 = "smoketrail",
				tolerance = 8000,
				tracks = true,
				turnrate = 28000,
				weaponacceleration = 450,
				weapontimer = 7,
				weapontype = "MissileLauncher",
				weaponvelocity = 935,
				customparams = {
					expl_light_color = "1 0.55 0.5",
					expl_light_mult = 1.59,
					expl_light_radius_mult = 1.92,
					light_color = "1 0.6 0.5",
					light_radius_mult = 0.72,
					light_mult = 1.7,
				},
				damage = {
					bombers = 600,
					commanders = 8,
					default = 24,
					fighters = 800,
					subs = 8,
					vtol = 500,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR",
				def = "CORVTOL_ADVMISSILE",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
