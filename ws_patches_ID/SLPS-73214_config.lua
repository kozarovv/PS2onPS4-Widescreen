apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shadow Hearts II - Director's Cut (PlayStation2 the Best) [NTSC-J] (SLPS-73214])
--comment=Widescreen Hack

--black borders fix (optional)
(c843033c 803f023c to c843033c 0000023c)
eeObj.WriteMem32(0x004047e4,0x3c020000)

-- 16:9
eeObj.WriteMem32(0x00202c94,0x3c013f40)
eeObj.WriteMem32(0x00202c98,0x44810000)
eeObj.WriteMem32(0x00202ca0,0x4600c602)

-- Render-Fix
eeObj.WriteMem32(0x002253bc,0x3c033fc0)
--eeObj.WriteMem32(0x0022531c,0x3c033fc0)

-- 16:10
--eeObj.WriteMem32(0x00202c94,0x3c013f55)
--eeObj.WriteMem32(0x00202c98,0x34215555)
--eeObj.WriteMem32(0x00202ca0,0x44810000)
--eeObj.WriteMem32(0x00202ca4,0x4600c602)
--eeObj.WriteMem32(0x002253bc,0x3c033fd5)
end

emuObj.AddVsyncHook(widescreen)