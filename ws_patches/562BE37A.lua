apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht (NTSC-K by Arapapa)

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001341a8,0x3c023f80)
eeObj.WriteMem32(0x001341ac,0x344a0000)
end

emuObj.AddVsyncHook(widescreen)