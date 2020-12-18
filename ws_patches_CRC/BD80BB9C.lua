apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Heroes of Might and Magic - Quest for the DragonBone Staff SLUS_201.58
--comment=Widescreen Hack
eeObj.WriteMem32(0x00117494,0x3C013Ff2)
eeObj.WriteMem32(0x00117498,0x342158bb)
eeObj.WriteMem32(0x002B3030,0x3F81DE51)
eeObj.WriteMem32(0x002B2F10,0x3FB9BDDE)
end

emuObj.AddVsyncHook(widescreen)