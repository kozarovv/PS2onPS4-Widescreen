apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Go, Diego, Go! Safari Rescue (U)(SLUS-21718)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--83001646 140000e6
eeObj.WriteMem32(0x00118e34,0x08072814)

eeObj.WriteMem32(0x001ca050,0x46160083)
eeObj.WriteMem32(0x001ca054,0x3c013f40)
eeObj.WriteMem32(0x001ca058,0x4481f000)
eeObj.WriteMem32(0x001ca05c,0x461e1082)
eeObj.WriteMem32(0x001ca060,0x0804638e)
end

emuObj.AddVsyncHook(widescreen)