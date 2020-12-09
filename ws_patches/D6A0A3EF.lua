apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Free Running (E)(SLES-54559)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov

eeObj.WriteMem32(0x0019c8b0,0x080a2598)

eeObj.WriteMem32(0x00289660,0x46000843)
eeObj.WriteMem32(0x00289664,0x3c013f40)
eeObj.WriteMem32(0x00289668,0x44815000)
eeObj.WriteMem32(0x0028966c,0x460a0842)
eeObj.WriteMem32(0x00289670,0x0806722d)

--Render fix
eeObj.WriteMem32(0x00214570,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)