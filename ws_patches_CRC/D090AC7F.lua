apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shadow Hearts - From the New World [NTSC-J] (SLPM-66071)
--comment=Widescreen Hack (pnach NTSC-J by Arapapa)

--black borders fix (optional)
(c843033c 803f023c to c843033c 0000023c)
eeObj.WriteMem32(0x002f76a4,0x3c020000)

-- 16:9
eeObj.WriteMem32(0x00202d4c,0x3c013f40)
eeObj.WriteMem32(0x00202d50,0x44810000)
eeObj.WriteMem32(0x00202d58,0x4600c602)
-- Render-Fix
eeObj.WriteMem32(0x002282cc,0x3c033fc0)

-- 16:10
--eeObj.WriteMem32(0x00202d4c,0x3c013f55)
--eeObj.WriteMem32(0x00202d50,0x34215555)
--eeObj.WriteMem32(0x00202d58,0x44810000)
--eeObj.WriteMem32(0x00202d5c,0x4600c602)
-- Render-Fix
--eeObj.WriteMem32(0x002282cc,0x3c033fd5)
end

emuObj.AddVsyncHook(widescreen)