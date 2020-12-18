apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0038130C,0x3C013F40)
eeObj.WriteMem32(0x00381310,0x44810000)
eeObj.WriteMem32(0x00381318,0x4600C602)

--Font width
eeObj.WriteMem32(0x0061D94C,0x3F400000)
eeObj.WriteMem32(0x0061EA3C,0x3F400000)

--FMV's fix
eeObj.WriteMem32(0x003BDF4C,0x24101E00)
eeObj.WriteMem32(0x003BE100,0x24110190)
end

emuObj.AddVsyncHook(widescreen)