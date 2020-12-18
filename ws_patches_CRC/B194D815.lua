apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Wild Water Adrenaline featuring Salomon (E)(SLES-53595)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
--42ad0046 2000037e
eeObj.WriteMem32(0x0011a74c,0x0809d7d4)
eeObj.WriteMem32(0x00275f50,0x4600ad42)
eeObj.WriteMem32(0x00275f54,0x3c013f40)
eeObj.WriteMem32(0x00275f58,0x4481f000)
eeObj.WriteMem32(0x00275f5c,0x461ead42)
eeObj.WriteMem32(0x00275f60,0x080469d4)

end

emuObj.AddVsyncHook(widescreen)