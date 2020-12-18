apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x00243C1C,0x3C013F40)
eeObj.WriteMem32(0x00243C2C,0x4481D800)
eeObj.WriteMem32(0x00243C30,0x460FDEC2)

--Render fix
eeObj.WriteMem32(0x00243D34,0x3C0243AB)
eeObj.WriteMem32(0x00228064,0x3C023FAB)
end

emuObj.AddVsyncHook(widescreen)