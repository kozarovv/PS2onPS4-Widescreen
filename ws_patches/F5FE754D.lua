apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Nitrobike (U)(SLUS-21738)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x00429eac,0x3c013faa)
eeObj.WriteMem32(0x00429eb0,0x3421aaab)
eeObj.WriteMem32(0x00429eb8,0x4481f000)
eeObj.WriteMem32(0x00429ebc,0x461ebdc2)

--Zoom
--003f013c 00608144 00009344 00000000 20008046
eeObj.WriteMem32(0x0039bf14,0x3c013f16)

--eeObj.WriteMem32(0x00429eac,0x3c013f40)
--eeObj.WriteMem32(0x00429eb0,0x44810000)
--eeObj.WriteMem32(0x00429eb8,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)