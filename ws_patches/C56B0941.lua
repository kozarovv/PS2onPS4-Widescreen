apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Short Track Racing - Trading Paint (U)(SLUS-21857)
--comment=Widescreen Hack by Arapapa

-- FOV (16:9)

--X-Fov
eeObj.WriteMem32(0x00279134,0x3c013faa)
eeObj.WriteMem32(0x00279140,0x3421aaab)
eeObj.WriteMem32(0x00279144,0x4481f000)
eeObj.WriteMem32(0x00279154,0x461e0002)
end

emuObj.AddVsyncHook(widescreen)