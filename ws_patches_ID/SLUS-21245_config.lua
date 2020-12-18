apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Suikoden Tactics (SLUS-21245)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x0037e94c,0x3c013f40)
eeObj.WriteMem32(0x0037e950,0x44810000)
eeObj.WriteMem32(0x0037e958,0x4600c602)

eeObj.WriteMem32(0x0061223C,0x3f400000)
eeObj.WriteMem32(0x0061114C,0x3f400000)

--FMV's fix
eeObj.WriteMem32(0x003bb58c,0x24101E00)
eeObj.WriteMem32(0x003bb740,0x24110190)
end

emuObj.AddVsyncHook(widescreen)