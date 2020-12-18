apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol. 95 - The Zombie vs. Kyuukyuusha (J)(SLPS-20456)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f033c 9080828f
eeObj.WriteMem32(0x0013671c,0x3c033f40)

--Render Fix
--003f023c 00088244 00000000 (1st)
eeObj.WriteMem32(0x001367b8,0x3c023f30)
end

emuObj.AddVsyncHook(widescreen)