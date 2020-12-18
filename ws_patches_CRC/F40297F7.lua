apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Evergrace (PAL) (SLES-50050)
--comment=Widescreen Hack by Machiavel Dhy'v converted from NTSC-U
eeObj.WriteMem32(0x00101178,0x3c013f40)
eeObj.WriteMem32(0x00101218,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)