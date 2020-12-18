apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen pnach by El_Patas

--Widescreen fix
eeObj.WriteMem32(0x004235CC,0x441CF7AE)
end

emuObj.AddVsyncHook(widescreen)