apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Midnight Club 3 - DUB Edition (E)(SLES-52942)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--43a51846 640103e6
eeObj.WriteMem32(0x0052df18,0x08150c14)

eeObj.WriteMem32(0x00543050,0x4618a543)
eeObj.WriteMem32(0x00543054,0x3c013f40)
eeObj.WriteMem32(0x00543058,0x4481f000)
eeObj.WriteMem32(0x0054305c,0x461ead42)
eeObj.WriteMem32(0x00543060,0x0814b7c7)

--Render fix
--003f013c 00008144 02a50046 (2nd)
eeObj.WriteMem32(0x0052de5c,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)