apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Street Boyz (E)(SLES-53407)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002284f4,0x3c013f40)
eeObj.WriteMem32(0x002284f8,0x44810000)
eeObj.WriteMem32(0x00228500,0x4600c602)

--Render fix #1
eeObj.WriteMem32(0x0015ffa0,0x3c013f2b)
eeObj.WriteMem32(0x0015ffdc,0x3c01bf2b)


end

emuObj.AddVsyncHook(widescreen)