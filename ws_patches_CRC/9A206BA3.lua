apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Conan - The Dark Axe (E)(SLES-52451)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Y-Fov
eeObj.WriteMem32(0x001085d4,0x3c013f10)
--eeObj.WriteMem32(0x001086b4,0x3c0140d5)

--Zoom
eeObj.WriteMem32(0x00267018,0x3c013f20)

--Render Fix
--80bf013c 00088144 944662ae 803f013c
--eeObj.WriteMem32(0x0019de9c,0x3c01bfb0)
--eeObj.WriteMem32(0x0019dea8,0x3c013fb0)

--Render Distance
--eeObj.WriteMem32(0x001177c0,0x3c014000)

--X-Fov
--eeObj.WriteMem32(0x00108674,0x3c013ec0)
--eeObj.WriteMem32(0x0010867c,0x3c014070)
end

emuObj.AddVsyncHook(widescreen)