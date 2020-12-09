apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--a80020c6 003f023c 00088244 
eeObj.WriteMem32(0x0036c428,0x3c023f21)

--Y-Fov
--43a81446 a00030c6 a40031c6
eeObj.WriteMem32(0x0036c468,0x0808a268)

eeObj.WriteMem32(0x002289a0,0x4614a843)
eeObj.WriteMem32(0x002289a4,0x3c013f40)
eeObj.WriteMem32(0x002289a8,0x4481f000)
eeObj.WriteMem32(0x002289ac,0x461e0842)
eeObj.WriteMem32(0x002289b0,0x080db11b)
end

emuObj.AddVsyncHook(widescreen)