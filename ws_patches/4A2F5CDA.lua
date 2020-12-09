apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x001048e4,0x3c013f40)
eeObj.WriteMem32(0x001048e8,0x44810000)
eeObj.WriteMem32(0x001048f0,0x4600c602)

--sprite fix
eeObj.WriteMem32(0x00150fa0,0x3c033f40)
eeObj.WriteMem32(0x00150fb4,0x3c033f80)
eeObj.WriteMem32(0x00150fb8,0xac830010)
eeObj.WriteMem32(0x00150fbc,0xac800014)
eeObj.WriteMem32(0x00150fc0,0xac800018)
eeObj.WriteMem32(0x00150fc4,0xac80001c)
eeObj.WriteMem32(0x00150fc8,0x03e00008)
eeObj.WriteMem32(0x00150fcc,0xac830020)

--text width
eeObj.WriteMem32(0x0012faa4,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)