apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Crash Tag Team Racing (E)(SLES-53439)
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
--803f013c 00008144 16000446 100065c4 82100046
eeObj.WriteMem32(0x0039b420,0x3c013fab)

--Render fix
eeObj.WriteMem32(0x002da688,0x3c013fe0)
end

emuObj.AddVsyncHook(widescreen)