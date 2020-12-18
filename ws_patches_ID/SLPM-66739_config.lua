apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Burnout Dominator (J) (SLPM_667.39)
--comment=Widescreen Hack (16:9) by Arapapa

--Force turn on Internal Widescreen (Full boot bypassing)
eeObj.WriteMem32(0x0038b128,0x24020002)

--Zoom fix
eeObj.WriteMem32(0x0043E8F0,0x3FAAAAAB)
end

emuObj.AddVsyncHook(widescreen)