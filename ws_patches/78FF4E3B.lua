apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=16:9 Hack by Brandondorf9999

-----
eeObj.WriteMem32(0x000C0000,0x3C023F40)
eeObj.WriteMem32(0x000C0004,0x34420000)
eeObj.WriteMem32(0x000C0008,0x44828800)
eeObj.WriteMem32(0x000C000C,0x46000803)
eeObj.WriteMem32(0x000C0010,0x46008802)
eeObj.WriteMem32(0x000C0014,0x0805A938)
eeObj.WriteMem32(0x000C0018,0x3C023F80)
eeObj.WriteMem32(0x000C001C,0x34420000)
eeObj.WriteMem32(0x000C0020,0x44828800)
eeObj.WriteMem32(0x000C0024,0x46000803)
eeObj.WriteMem32(0x000C0028,0x46008802)
eeObj.WriteMem32(0x000C002C,0x0805A93B)
eeObj.WriteMem32(0x0016A4B4,0x3C023F80)
eeObj.WriteMem32(0x0016A4DC,0x08030000)
eeObj.WriteMem32(0x0016A4E8,0x08030006)
eeObj.WriteMem32(0x002AD094,0x24050002)
end

emuObj.AddVsyncHook(widescreen)