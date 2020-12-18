apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f043c 7f4b023c
eeObj.WriteMem32(0x001996a0`,0x3c043f40)

--Zoom
--323f043c 6c0745ac c3b88234  3F6E4BA9
--eeObj.WriteMem32(0x0013f828,0x3c043f6e)
--eeObj.WriteMem32(0x0013f830,0x34824ba9)
end

emuObj.AddVsyncHook(widescreen)