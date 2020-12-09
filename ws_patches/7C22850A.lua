apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by nemesis2000 (pnach by nemesis2000)

--zoom for arcade mode (widescreen)
eeObj.WriteMem32(0x00222144,0x3c0342c0)

--aspect correction for widescreen mode
eeObj.WriteMem32(0x001875e4,0x3c0143f0)
eeObj.WriteMem32(0x001875e8,0x46800860)
eeObj.WriteMem32(0x001875ec,0x44810000)
eeObj.WriteMem32(0x001875f0,0x46150842)
eeObj.WriteMem32(0x001875f4,0x46000803)
eeObj.WriteMem32(0x001875f8,0x46140003)

--black borders fix
eeObj.WriteMem32(0x0017c5d0,0x46000001)
eeObj.WriteMem32(0x0017c5e0,0x46000001)
eeObj.WriteMem32(0x0017c620,0x46000001)
eeObj.WriteMem32(0x0017c630,0x46000001)

--widescreen switch fix
eeObj.WriteMem32(0x00222320,0x24020340)
eeObj.WriteMem32(0x00222360,0x24020340)
end

emuObj.AddVsyncHook(widescreen)