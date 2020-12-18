apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Biohazard Code Veronica Kanzenban (SLPM_650.22)
--comment=NTSC-J Widescreen Hack by synce
eeObj.WriteMem32(0x01136200,0x3F400000)

--FMV's fix
eeObj.WriteMem32(0x01E2F340,0x01AA0280)
eeObj.WriteMem32(0x01E2F344,0x000C0000)
end

emuObj.AddVsyncHook(widescreen)