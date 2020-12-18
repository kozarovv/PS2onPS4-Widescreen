apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Little Giant

--16:9
eeObj.WriteMem32(0x0022a91c,0x3c013f40)
eeObj.WriteMem32(0x0022a920,0x44810000)
eeObj.WriteMem32(0x0022a928,0x4600c602)
eeObj.WriteMem32(0x001dca68,0x3C014220)
end

emuObj.AddVsyncHook(widescreen)