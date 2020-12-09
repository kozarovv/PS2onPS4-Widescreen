apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Rampage - Total Destruction (NTSC-U & PAL)(SLUS-21323 & SLES-53800)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--403f023c 140001c6 00008244
eeObj.WriteMem32(0x0025e694,0x3c023f10)
end

emuObj.AddVsyncHook(widescreen)