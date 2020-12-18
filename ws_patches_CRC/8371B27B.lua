apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0010c248,0x3c014370)
eeObj.WriteMem32(0x0010c088,0x3c013faa)

-- 16:10
--eeObj.WriteMem32(0x0010c248,0x3c194385)
--eeObj.WriteMem32(0x0010c24c,0x37395555)
--eeObj.WriteMem32(0x0010c288,0xafb90000)
--eeObj.WriteMem32(0x0010c088,0x3c013f99)
end

emuObj.AddVsyncHook(widescreen)