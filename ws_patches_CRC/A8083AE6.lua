apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=RC Revenge Pro (U)((SLUS-20153)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--02a51846 100020e6
eeObj.WriteMem32(0x001a3aac,0x08030000)

eeObj.WriteMem32(0x000c0000,0x4618a502)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461ea502)
eeObj.WriteMem32(0x000c0010,0x08068eac)
end

emuObj.AddVsyncHook(widescreen)