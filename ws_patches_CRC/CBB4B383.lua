apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Rogue Galaxy [PAL-M5] (SLES_545.52)
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x001C5E40,0x3C023F10)

--Compass
eeObj.WriteMem32(0x00377F9C,0x3C023F10)

--Black border fix
eeObj.WriteMem32(0x00261FB4,0x3C020000)

--FMV's fix
eeObj.WriteMem32(0x001D4E2C,0x24060000)
eeObj.WriteMem32(0x001D4E7C,0x240201C0)
end

emuObj.AddVsyncHook(widescreen)