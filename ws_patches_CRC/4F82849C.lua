apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x0026432C,0x3C014440)
 
--Render fix
eeObj.WriteMem32(0x001A6548,0x3C013C2E)

--Get rid of black bar
eeObj.WriteMem32(0x00225ea8,0x3c014000)
eeObj.WriteMem32(0x00225eac,0x00000000)
end

emuObj.AddVsyncHook(widescreen)