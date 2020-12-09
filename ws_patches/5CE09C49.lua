apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--06a30046 86050046
eeObj.WriteMem32(0x00228a58,0x080997d8)

eeObj.WriteMem32(0x00265f60,0x46000586)
eeObj.WriteMem32(0x00265f64,0x3c013faa)
eeObj.WriteMem32(0x00265f68,0x3421aaab)
eeObj.WriteMem32(0x00265f6c,0x4481f000)
eeObj.WriteMem32(0x00265f70,0x461eb582)
eeObj.WriteMem32(0x00265f74,0x0808a297)
end

emuObj.AddVsyncHook(widescreen)