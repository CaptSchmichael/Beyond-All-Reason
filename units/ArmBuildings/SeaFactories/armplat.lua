local unitName = Spring.I18N('units.names.armplat')

return {
	armplat = {
		acceleration = 0,
		brakerate = 0,
		buildcostenergy = 5000,
		buildcostmetal = 1450,
		builder = true,
		buildpic = "ARMPLAT.PNG",
		buildtime = 12000,
		canmove = true,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		corpse = "DEAD",
		description = Spring.I18N('units.descriptions.armplat'),
		energystorage = 200,
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 7,
		footprintz = 7,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1820,
		minwaterdepth = 30,
		name = unitName,
		objectname = "Units/ARMPLAT.s3o",
		radardistance = 50,
		script = "Units/ARMPLAT.cob",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 169,
		terraformspeed = 1000,
		waterline = 39,
		workertime = 200,
		yardmap = "wwwwwwwwCCCCCwwCCCCCwwCCCCCwwCCCCCwwCCCCCwwwwwwww",
		buildoptions = {
			[1] = "armcsa",
			[2] = "armsaber",
			[3] = "armsb",
			[4] = "armseap",
			[5] = "armsfig",
			[6] = "armsehak",
		},
		customparams = {
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			subfolder = "armbuildings/seafactories",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "1.25 -7.62939453125e-06 -0.375",
				collisionvolumescales = "108.669647217 46.9999847412 117.478393555",
				collisionvolumetype = "Box",
				damage = 1092,
				description = Spring.I18N('units.dead', { name = unitName }),
				energy = 0,
				footprintx = 7,
				footprintz = 7,
				height = 20,
				hitdensity = 100,
				metal = 1734,
				object = "Units/armplat_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			build = "seaplok1",
			canceldestruct = "cancel2",
			underattack = "warning1",
			unitcomplete = "untdone",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "seaplsl1",
			},
		},
	},
}
