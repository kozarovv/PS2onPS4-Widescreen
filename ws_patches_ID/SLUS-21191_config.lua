apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Crash Tag Team Racing (U)(SLUS-21191)
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x00399f58,0x3c013fab)

--Render fix
eeObj.WriteMem32(0x002d91c0,0x3c013fe0)


--60 FPS by asasega
--02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 C1 03 00 00 01 00 00 00 01 00 00 00 30 95 57 00
eeObj.WriteMem32(0x007A9E5C,0x00000001)
end

emuObj.AddVsyncHook(widescreen)