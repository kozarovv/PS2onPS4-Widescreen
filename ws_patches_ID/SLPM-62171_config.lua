apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Simple 2000 Series Vol.05 - The Blockbuster Hyper (J)(SLPM-62171)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Matrix hack
eeObj.WriteMem32(0x0015a434,0x3c013f40)
eeObj.WriteMem32(0x0015a438,0x44810000)
eeObj.WriteMem32(0x0015a440,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)