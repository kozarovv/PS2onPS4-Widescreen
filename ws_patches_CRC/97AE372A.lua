apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=7 Blades [PAL] (SLES-50109)
--comment=Widescreen hack by Arapapa

--Gameplay 16:9
eeObj.WriteMem32(0x00396334,0x3C013FAB)
eeObj.WriteMem32(0x002EF7EC,0x3C013FAB)

--X-FOV (Needs Render fix)
--eeObj.WriteMem32(0x002EF990,0x3C013F10)
end

emuObj.AddVsyncHook(widescreen)