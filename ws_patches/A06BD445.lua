apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=CID the Dummy (U)(SLUS-21754)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--06a30046 86050046
eeObj.WriteMem32(0x00228aa0,0x08030000)

eeObj.WriteMem32(0x000c0000,0x46000586)
eeObj.WriteMem32(0x000c0004,0x3c013faa)
eeObj.WriteMem32(0x000c0008,0x3421aaab)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461eb582)
eeObj.WriteMem32(0x000c0014,0x0808a2a9)
end

emuObj.AddVsyncHook(widescreen)