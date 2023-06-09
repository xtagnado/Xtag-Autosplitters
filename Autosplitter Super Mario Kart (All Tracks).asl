state("ares")				{}	// Auto-Split made by Xtagnado (Discord: Xtagnado#0430)	
state("bizhawk.multiclient"){}	// Feel free to use, share and change by your own purposes
state("bsnes")				{}	// Just leave the credits to future questions and updates
state("emuhawk")			{}	// I suggest you to play in BizHawk 2.8 x64 with Snes9x Core
state("higan")				{}	
state("lucia")				{}	
state("snes9x")				{}	
state("snes9x-x64")			{}	
init {
    var states = new Dictionary<int, long> {
		{	10330112	,	0x789414		},	// snes9x 1.52-rr
        {	7729152		,	0x890EE4		},	// snes9x 1.54-rr
		{	5914624		,	0x6EFBA4		},	// snes9x 1.53
		{	6909952		,	0x140405EC8		},	// snes9x 1.53 (x64)
		{	6447104		,	0x7410D4		},	// snes9x 1.54/1.54.1
		{	7946240		,	0x1404DAF18		},	// snes9x 1.54/1.54.1 (x64)
		{	6602752		,	0x762874		},	// snes9x 1.55
		{	8355840		,	0x1405BFDB8		},	// snes9x 1.55 (x64)
		{	6856704		,	0x78528C		},	// snes9x 1.56/1.56.2
		{	9003008		,	0x1405D8C68		},	// snes9x 1.56 (x64)
		{	6848512		,	0x7811B4		},	// snes9x 1.56.1
		{	8945664		,	0x1405C80A8		},	// snes9x 1.56.1 (x64)
		{	9015296		,	0x1405D9298		},	// snes9x 1.56.2 (x64)
		{	6991872		,	0x7A6EE4		},	// snes9x 1.57
		{	9048064		,	0x1405ACC58		},	// snes9x 1.57 (x64)
		{	7000064		,	0x7A7EE4		},	// snes9x 1.58
		{	9060352		,	0x1405AE848		},	// snes9x 1.58 (x64)
		{	8953856		,	0x975A54		},	// snes9x 1.59.2
		{	12537856	,	0x1408D86F8		},	// snes9x 1.59.2 (x64)
		{	9646080		,	0x00000097EE04	},	// snes9x-rr 1.60		
		{	13565952	,	0x000140925118	},	// snes9x-rr 1.60 x64	
		{	9027584		,	0x00000094DB54	},	// snes9x 1.60			
		{	12836864	,	0x0001408D8BE8	},	// snes9x 1.60 x64	
//		{	12836864	,	0x00000497AFE2	},	// snes9x 1.60 x64	
		{	12509184	,	0x915304		},	// higan v102
		{	13062144	,	0x937324		},	// higan v103
		{	15859712	,	0x952144		},	// higan v104
		{	16756736	,	0x94F144		},	// higan v105tr1
		{	16019456	,	0x94D144		},	// higan v106
		{	15360000	,	0x8AB144		},	// higan v106.112
		{	22388736	,	0xB0ECC8		},	// higan v107
		{	23142400	,	0xBC7CC8		},	// higan v108
		{	23166976	,	0xBCECC8		},	// higan v109
		{	23224320	,	0xBDBCC8		},	// higan v110
		{	23781376	,	0xBB0CC8		},	// higan v110 (x64)
		{	10096640	,	0x72BECC		},	// bsnes v107
		{	10338304	,	0x762F2C		},	// bsnes v107.1
		{	47230976	,	0x765F2C		},	// bsnes v107.2/107.3
		{	142282752	,	0xA65464		},	// bsnes v108
		{	131354624	,	0xA6ED5C		},	// bsnes v109
		{	131543040	,	0xA9BD5C		},	// bsnes v110
		{	51924992	,	0xA9DD5C		},	// bsnes v111
		{	52056064	,	0x000000AAED7C	},	// bsnes v112			
		{	52477952	,	0x000000B16D7C	},	// bsnes v115			
//		{	35414016	,	0x023A1BF0		},	// lsnes rr2-B23
		{	7061504		,	0x036F11500240	},	// BizHawk 2.3.0		BSNES
		{	7249920		,	0x36F11500240	},	// BizHawk 2.3.1
		{	6938624		,	0x36F11500240	},	// BizHawk 2.3.2
		{	4538368		,	0x036F05F94040	},	// BizHawk 2.6.0		BSNES
		{	4562944		,	0x036F05F95040	},	// BizHawk 2.7.0 x64	BSNES
//		{	4571136		,	0x036F06095040	},  // BizHawk 2.8 x64		BSNES 
		{	4571136		,	0x036F003B815C	},  // BizHawk 2.8 x64		BSNES v115+
//		{	4571136		,	0x036F004CE860	},  // BizHawk 2.8 x64		Snes9x
//		{	4571136		,	0x036F01AC9160	},  // BizHawk 2.8 x64		Faust
		{	21905408	,	0x000000C59EB0	},	// Ares v115			
		{	46374912	,	0x000000DE8678	},	// Ares v117			
		{	66867200	,	0x7FF7EF483678	},	// Ares v118			
		{	334737408	,	0x0000141D08F8	},	// Ares v121a			
		{	334901248	,	0x0000141F7FF8	},	// Ares v122			
		{	334778368	,	0x0000141D9BB8	},	// Ares v123			
		{	1409929216	,	0x0000543354B8	},	// Ares v124			
		{	1413222400	,	0x7FF76F8E50F8	},	// Ares v125			
		{	1413255168	,	0x7FF7E6ECCEB8	},	// Ares v126			
		{	472829952	,	0x7FF7BA79A3B8	},	// Ares v127			
		{	473198592	,	0X7FF73FFD6798	},	// Ares v128			
		{	473194496	,	0x7FF6BF804858	},	// Ares v129
	};
		long memoryOffset;
		if (states.TryGetValue(modules.First().ModuleMemorySize, out memoryOffset)){
		}
		vars.watchers = new MemoryWatcherList {
			new MemoryWatcher<byte> ((IntPtr)memoryOffset + 0x1D00) { Name = "Copa" },
			new MemoryWatcher<byte> ((IntPtr)memoryOffset + 0x1D02) { Name = "Fase" },
			new MemoryWatcher<byte> ((IntPtr)memoryOffset + 0x1D20) { Name = "Confirm" },
			new MemoryWatcher<byte> ((IntPtr)memoryOffset + 0x010B) { Name = "Finish" },
			new MemoryWatcher<byte> ((IntPtr)memoryOffset + 0x015E) { Name = "Reset" },
			};
}
update {
    vars.watchers.UpdateAll(game);
		if(	vars.watchers["Copa"].Current == 0 && vars.watchers["Fase"].Current == 0 && 			vars.watchers["Confirm"].Old == 6 && vars.watchers["Confirm"].Current == 7)
	}
start {
    return vars.watchers["Copa"].Current == 0 && vars.watchers["Fase"].Current == 0 && vars.watchers["Confirm"].Old == 6 && vars.watchers["Confirm"].Current == 7;
	}
reset {
	return vars.watchers["Reset"].Old != 0 && vars.watchers["Reset"].Current == 0;
	}
split {
	var Stage = vars.watchers["Finish"].Old != 64 && vars.watchers["Finish"].Current == 64;
	return	Stage;
	}