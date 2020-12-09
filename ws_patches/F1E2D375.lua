apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Yoshitsune Eiyuuden - The Story of Hero Yoshitsune (K)(SLKA-25258)
--comment=Widescreen Hack (NTSC-K by Arapapa)

--Widescreen hack 16:9

--X-Fov
--4c3f023c cdcc4334 c842053c
eeObj.WriteMem32(0x00139584,0x3c023f19)
eeObj.WriteMem32(0x00139588,0x3443999a)

--Render Fix
--a043043c 803f0523c 7043033c
eeObj.WriteMem32(0x001397ec,0x3c0443e0)
end

emuObj.AddVsyncHook(widescreen)