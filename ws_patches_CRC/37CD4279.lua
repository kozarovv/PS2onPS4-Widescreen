apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (NTSC-K by Arapapa)


--0000803F 5555953F 0000803F
eeObj.WriteMem32(0x00C40380,0x3f400000)

--0000803F B76D5B3F 0000803F
eeObj.WriteMem32(0x00C40390,0x3fb00000)

--0000803F B76D5B3F 0000803F
eeObj.WriteMem32(0x00C40398,0x3fb00000)
end

emuObj.AddVsyncHook(widescreen)