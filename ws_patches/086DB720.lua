apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x002afdc4,0x3f199999)
eeObj.WriteMem32(0x002afe04,0x3f199999)
eeObj.WriteMem32(0x003e2f54,0x3f199999)
eeObj.WriteMem32(0x003e2f94,0x3f199999)
eeObj.WriteMem32(0x003e37f4,0x3f199999)
eeObj.WriteMem32(0x003e3834,0x3f199999)
eeObj.WriteMem32(0x003e4ab4,0x3f199999)
eeObj.WriteMem32(0x003e4af4,0x3f199999)
eeObj.WriteMem32(0x003e4f84,0x3f199999)
eeObj.WriteMem32(0x003e4fc4,0x3f199999)
eeObj.WriteMem32(0x003e54a4,0x3f199999)
eeObj.WriteMem32(0x003e54e4,0x3f199999)
eeObj.WriteMem32(0x003e5e34,0x3f199999)
eeObj.WriteMem32(0x003e5e74,0x3f199999)
eeObj.WriteMem32(0x003e6364,0x3f199999)
eeObj.WriteMem32(0x003e63a4,0x3f199999)
eeObj.WriteMem32(0x003e6734,0x3f199999)
eeObj.WriteMem32(0x003e6774,0x3f199999)
eeObj.WriteMem32(0x003e6d64,0x3f199999)
eeObj.WriteMem32(0x003e6da4,0x3f199999)
eeObj.WriteMem32(0x003ec544,0x3f199999)
eeObj.WriteMem32(0x005275b4,0x3f199999)
eeObj.WriteMem32(0x00600bc4,0x3f199999)
eeObj.WriteMem32(0x00606f24,0x3f199999)
eeObj.WriteMem32(0x00616b74,0x3f199999)
eeObj.WriteMem32(0x006236c4,0x3f199999)
eeObj.WriteMem32(0x002afe44,0x3f199999)

--Render fix
eeObj.WriteMem32(0x0012D4FC,0x3C0143D6)
eeObj.WriteMem32(0x00117740,0x3C0143D6)
end

emuObj.AddVsyncHook(widescreen)