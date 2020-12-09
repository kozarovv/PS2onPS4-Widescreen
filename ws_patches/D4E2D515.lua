apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ring of Red (J) (SLPM_620.13)
--comment=Widescreen Hack ElHecht and Arapapa

--16:9 (803f013c 00008144 b0ffbd27)
--eeObj.WriteMem32(0x001059c4,0x3c013f60)

eeObj.WriteMem32(0x001104e8,0x08052865)
eeObj.WriteMem32(0x001104ec,0x00000000)
eeObj.WriteMem32(0x001104f0,0x00000000)

eeObj.WriteMem32(0x0014a194,0x3c013faa)
eeObj.WriteMem32(0x0014a198,0x3421aaab)
eeObj.WriteMem32(0x0014a19c,0x44810000)
eeObj.WriteMem32(0x0014a1a0,0x3c020026)
eeObj.WriteMem32(0x0014a1a4,0x2442aa30)
eeObj.WriteMem32(0x0014a1a8,0x46006b42)
eeObj.WriteMem32(0x0014a1ac,0xe44d0014)
eeObj.WriteMem32(0x0014a1b0,0x0804413b)

--003F013C 00108144 040041C4
--C03E013C 00108144 040041C4
eeObj.WriteMem32(0x00110cec,0x3c013ec0)
eeObj.WriteMem32(0x00110d20,0x3c013fab)

--803F013C 00008144 2C0060AC
--403F013C 00008144 2C0060AC
eeObj.WriteMem32(0x001070b8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)