apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Baldur's Gate: Dark Alliance II (SLUS-20675)

eeObj.WriteMem32(0x001ed388,0x3c013f1f)
eeObj.WriteMem32(0x001ed38c,0x342149f1)
eeObj.WriteMem32(0x001ed39c,0x3c014440)

eeObj.WriteMem32(0x0023fc24,0x3c013f1f)
eeObj.WriteMem32(0x0023fc28,0x342149f1)
eeObj.WriteMem32(0x0023fc34,0x3c014440)

eeObj.WriteMem32(0x0027f854,0x3c013f1f)
eeObj.WriteMem32(0x0027f858,0x342149f1)
eeObj.WriteMem32(0x0027f864,0x3c014440)

eeObj.WriteMem32(0x002c8698,0x3c013f1f)
eeObj.WriteMem32(0x002c869c,0x342149f1)
eeObj.WriteMem32(0x002c86a8,0x3c014440)

--render fix value by No.47
--eeObj.WriteMem32(0x002c456c,0x3c014288)
eeObj.WriteMem32(0x002c4574,0x3c013fe3)
eeObj.WriteMem32(0x002c4578,0x3421d70a)

--eeObj.WriteMem32(0x002c82d4,0x3c014288)
eeObj.WriteMem32(0x002c82dc,0x3c013fe3)
eeObj.WriteMem32(0x002c82e0,0x3421d70a)
end

emuObj.AddVsyncHook(widescreen)