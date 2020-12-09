apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x0015c33c,0x3c0143a8)
eeObj.WriteMem32(0x0033ec38,0x3c013f9f)
eeObj.WriteMem32(0x0033ec3c,0x4481a800)
eeObj.WriteMem32(0x0015c360,0x3c013f9f)
eeObj.WriteMem32(0x0015c364,0x44817000)
eeObj.WriteMem32(0x0015c3ac,0x00000000)
eeObj.WriteMem32(0x0015c43c,0x3c014500)
eeObj.WriteMem32(0x0033ec20,0x3c014500)
end

emuObj.AddVsyncHook(widescreen)