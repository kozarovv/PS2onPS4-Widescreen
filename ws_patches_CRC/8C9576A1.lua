apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Burnout - Dominator (U)(SLUS-21596)
--comment=Widescreen Hack (16:9) by Arapapa

--Force turn on Internal Widescreen (Full boot bypassing)
eeObj.WriteMem32(0x0038b128,0x24020002)

--Zoom fix
--9A 99 99 3F 39 8E E3 3F 80 02 00 00
eeObj.WriteMem32(0x0043E8F0,0x3FAAAAAB)

end

emuObj.AddVsyncHook(widescreen)