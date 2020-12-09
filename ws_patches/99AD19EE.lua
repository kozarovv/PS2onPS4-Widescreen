apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Star Wars - Episode III - Revenge of the Sith (PAL-M3) (SLES-53155)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x004dbd44,0x3c023f40)
eeObj.WriteMem32(0x0051bca0,0x3c013f40)
eeObj.WriteMem32(0x0051bcac,0x4481f000)
eeObj.WriteMem32(0x0051bcf0,0x461e4a42)

-- 16:10
--eeObj.WriteMem32(0x004dbd30,0x3c013f55)
--eeObj.WriteMem32(0x004dbd34,0x34215555)
--eeObj.WriteMem32(0x004dbd3c,0x4481f800)
--eeObj.WriteMem32(0x004dbd50,0x4600f806)
--eeObj.WriteMem32(0x0051bca0,0x3c013f55)
--eeObj.WriteMem32(0x0051bca4,0x34215555)
--eeObj.WriteMem32(0x0051bcac,0x4481f000)
--eeObj.WriteMem32(0x0051bcf0,0x461e4a42)
end

emuObj.AddVsyncHook(widescreen)