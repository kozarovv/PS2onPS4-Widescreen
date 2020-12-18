apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x00104d74,0x3c013f40)
eeObj.WriteMem32(0x00104d78,0x44810000)
eeObj.WriteMem32(0x00104d80,0x4600c602)

--sprite fix
eeObj.WriteMem32(0x00151ee0,0x3c033f40)
eeObj.WriteMem32(0x00151ef4,0x3c033f80)
eeObj.WriteMem32(0x00151ef8,0xac830010)
eeObj.WriteMem32(0x00151efc,0xac800014)
eeObj.WriteMem32(0x00151f00,0xac800018)
eeObj.WriteMem32(0x00151f04,0xac80001c)
eeObj.WriteMem32(0x00151f08,0x03e00008)
eeObj.WriteMem32(0x00151f0c,0xac830020)

--text width
eeObj.WriteMem32(0x001302f4,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)