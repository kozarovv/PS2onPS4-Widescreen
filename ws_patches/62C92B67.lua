apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by flameofrecca
eeObj.WriteMem32(0x006EF4E0,0x41400000)

--Partial HUD fix
eeObj.WriteMem32(0x006C9EB0,0x42C00000)
eeObj.WriteMem32(0x006C9EF0,0x41400000)
end

emuObj.AddVsyncHook(widescreen)