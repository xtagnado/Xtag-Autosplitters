state("ares")				{}	// Auto-Split made by Xtagnado (Discord: Xtagnado#0430)	
state("bizhawk.multiclient")		{}	// Feel free to use, share and change by your own purposes
state("bsnes")				{}	// Just leave the credits to future questions and updates
state("emuhawk")			{}	// I suggest you to play in BizHawk 2.8 x64 with Snes9x Core
state("higan")				{}	
state("lucia")				{}	
state("snes9x")				{}	
state("snes9x-x64")			{}	
init {
    var states = new Dictionary<int, long> {
		{	21905408	,	0x000000C59EB0	},	// Ares v115
		{	46374912	,	0x000000DE8678	},	// Ares v117
		{	66867200	,	0x7FF7EF483678	},	// Ares v118
		{	334737408	,	0x0000141D08F8	},	// Ares v121a
		{	334901248	,	0x0000141F7FF8	},	// Ares v122
		{	334778368	,	0x0000141D9BB8	},	// Ares v123
		{	1409929216	,	0x0000543354B8	},	// Ares v124
		{	1413222400	,	0x7FF76F8E50F8	},	// Ares v125	** Mesmo processo da versão v125.1 **
//		{	1413222400	,	0x7FF7B05450F8	},	// Ares v125.1	** Mesmo processo da versão v125 **
		{	1413255168	,	0x7FF7E6ECCEB8	},	// Ares v126
		{	472829952	,	0x7FF7BA79A3B8	},	// Ares v127
		{	473198592	,	0X7FF73FFD6798	},	// Ares v128
		{	473194496	,	0x7FF6BF804858	},	// Ares v129
		{	477085696	,	0x7FF7CF281628	},	// Ares v130
		{	477089792	,	0x7FF6A8B02628	},	// Ares v130.1
		{	472035328	,	0x7FF737BCFCE8	},	// Ares v131
		{	472420352	,	0x7FF70DE3CA40	},	// Ares v132
		{	474517504	,	0x7FF6BA012108	},	// Ares v133
		{	5914624		,	0x0000006EFBA4	},	// snes9x-1.53-win32
		{	6909952		,	0x000140405EC8	},	// snes9x-1.53-win32-x64
		{	6447104		,	0x0000007410D4	},	// snes9x-1.54-win32 & snes9x-1.54.1-win32
		{	7946240		,	0x0001404DAF18	},	// snes9x-1.54-win32-x64 & snes9x-1.54.1-win32-x64
		{	6602752		,	0x000000762874	},	// snes9x-1.55-win32
		{	8355840		,	0x0001405BFDB8	},	// snes9x-1.55-win32-x64
		{	9003008		,	0x0001405D8C68	},	// snes9x-1.56-win32-x64
		{	9015296		,	0x0001405D9298	},	// snes9x-1.56.1-win32-ddraw x64 & snes9x-1.56.2-win32-x64
		{	8945664		,	0x0001405C80A8	},	// snes9x-1.56.1-win32-x64
		{	6991872		,	0x0000007A6EE4	},	// snes9x-1.57-win32
		{	9048064		,	0x0001405ACC58	},	// snes9x-1.57-win32-x64
		{	7000064		,	0x0000007A7EE4	},	// snes9x-1.58-win32
		{	9060352		,	0x0001405AE848	},	// snes9x-1.58-win32-x64
		{	8953856		,	0x000000975A54	},	// snes9x-1.59.2-win32
		{	12537856	,	0x0001408D86F8	},	// snes9x-1.59.2-win32-x64		
		{	9027584		,	0x00000094DB54	},	// snes9x-1.60-win32
		{	12836864	,	0x0001408D8BE8	},	// snes9x-1.60-win32-x64
		{	9646080		,	0x00000097EE04	},	// snes9x-rr-1.60-win32
		{	13565952	,	0x000140925118	},	// snes9x-rr-1.60-win32-x64
	};
    long memoryOffset;
    if (states.TryGetValue(modules.First().ModuleMemorySize, out memoryOffset)) {
        if (memory.ProcessName.ToLower().Contains("snes9x")) {
            memoryOffset = memory.ReadValue<int>((IntPtr)memoryOffset);
        }
    }

    if (memoryOffset == 0) {
        throw new Exception("Memory not yet initialized.");
    }
		vars.watchers = new MemoryWatcherList {
			new MemoryWatcher<byte> ((IntPtr)memoryOffset + 0x036F) { Name = "InGame" },
			new MemoryWatcher<byte> ((IntPtr)memoryOffset + 0x035C) { Name = "World" },
			new MemoryWatcher<byte> ((IntPtr)memoryOffset + 0x035D) { Name = "Stage" },
			new MemoryWatcher<byte> ((IntPtr)memoryOffset + 0x1b20) { Name = "Snake" },
		};
}
update {
    vars.watchers.UpdateAll(game);
	}
start {
    return vars.watchers["InGame"].Old == 00 && vars.watchers["InGame"].Current == 01;
	}
reset {
    return vars.watchers["InGame"].Old == 01 && vars.watchers["InGame"].Current == 00;
	}
split {
	var Stage = vars.watchers["World"].Changed || vars.watchers["Stage"].Changed  ;
	var Snake = vars.watchers["Snake"].Old != 03 && vars.watchers["Snake"].Current == 03;
	return	Stage || Snake;
	}
