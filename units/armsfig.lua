return {
	armsfig = {
		acceleration = 0.47999998927116,
		brakerate = 10,
		buildcostenergy = 4274,
		buildcostmetal = 72,
		buildpic = "ARMSFIG.DDS",
		buildtime = 7279,
		canfly = true,
		canmove = true,
		cansubmerge = true,
		category = "ALL NOTLAND MOBILE WEAPON ANTIGATOR NOTSUB ANTIFLAME ANTIEMG ANTILASER VTOL NOTSHIP",
		collide = false,
		cruisealt = 70,
		description = "Seaplane Swarmer",
		energymake = 0.69999998807907,
		energyuse = 0.69999998807907,
		explodeas = "BIG_UNITEX",
		footprintx = 3,
		footprintz = 3,
		icontype = "air",
		idleautoheal = 5 ,
		idletime = 1800 ,
		maxdamage = 125,
		maxslope = 10,
		maxvelocity = 10.359999656677,
		maxwaterdepth = 255,
		name = "Tornado",
		nochasecategory = "NOTAIR",
		objectname = "ARMSFIG",
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT",
		sightdistance = 550,
		turnrate = 1625,
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			repair = "repair1",
			underattack = "warning1",
			working = "reclaim1",
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
				[1] = "seapsel1",
			},
		},
		weapondefs = {
			armsfig_weapon = {
				areaofeffect = 48,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH2",
				firestarter = 70,
				impulseboost = 0.12300000339746,
				impulsefactor = 0.12300000339746,
				metalpershot = 0,
				model = "missile",
				name = "GuidedMissiles",
				noselfdamage = true,
				range = 550,
				reloadtime = 0.85000002384186,
				smoketrail = true,
				soundhit = "xplosml2",
				soundstart = "Rocklit3",
				startvelocity = 420,
				texture2 = "armsmoketrail",
				tolerance = 8000,
				tracks = true,
				turnrate = 19384,
				weaponacceleration = 146,
				weapontimer = 6,
				weapontype = "MissileLauncher",
				weaponvelocity = 522,
				damage = {
					bombers = 210,
					commanders = 5,
					default = 12,
					fighters = 90,
					subs = 3,
					vtol = 100,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR",
				def = "ARMSFIG_WEAPON",
			},
		},
	},
}
