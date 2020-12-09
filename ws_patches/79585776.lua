apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0030101c,0x3c013f40)
eeObj.WriteMem32(0x00301028,0x4481f000)
eeObj.WriteMem32(0x0030102c,0x461ec602)
eeObj.WriteMem32(0x00264980,0x3c0143d6)
eeObj.WriteMem32(0x0012a0ac,0x3c014456)

-- 16:10
--eeObj.WriteMem32(0x0030101c,0x3c013f55)
--eeObj.WriteMem32(0x00301020,0x34215555)
--eeObj.WriteMem32(0x00301028,0x4481f000)
--eeObj.WriteMem32(0x0030102c,0x461ec602)
--eeObj.WriteMem32(0x00264980,0x3c0143c1)
--eeObj.WriteMem32(0x0012a0ac,0x3c014441)
end

emuObj.AddVsyncHook(widescreen)