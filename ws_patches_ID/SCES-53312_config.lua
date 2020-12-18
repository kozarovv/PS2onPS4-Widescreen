apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Soul Calibur III PAL (SCES_533.12)
--comment=Widescreen pnach by El_Patas

--Widescreen fix
eeObj.WriteMem32(0x0012A120,0x3C013F40)
eeObj.WriteMem32(0x0012A124,0x34210000)

--USE FAST BOOT, NOT FULL BOOT, OR IT MAY CRASH
end

emuObj.AddVsyncHook(widescreen)