apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Motor Mayhem (E)(SLES-50438)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--b442013c 00088144 00000000 43080046
eeObj.WriteMem32(0x0011cd28,0x3c014287)

--Render fix
--003f013c 00108144 02050146
eeObj.WriteMem32(0x00141cd8,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)