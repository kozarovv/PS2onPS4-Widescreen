apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by nemesis2000 (pnach by nemesis2000)

--widescreen fix
eeObj.WriteMem32(0x002653d8,0x3c013f9d)
eeObj.WriteMem32(0x002653dc,0x44810000)
eeObj.WriteMem32(0x002653e0,0x46006302)
eeObj.WriteMem32(0x002653e4,0x3c020048)
eeObj.WriteMem32(0x002653e8,0x03e00008)
eeObj.WriteMem32(0x002653ec,0xe44c7484)

eeObj.WriteMem32(0x0037add4,0x0c0994f6)
eeObj.WriteMem32(0x003b9d14,0x0c0994f9)
eeObj.WriteMem32(0x003ba1b0,0x0c0994f9)
end

emuObj.AddVsyncHook(widescreen)