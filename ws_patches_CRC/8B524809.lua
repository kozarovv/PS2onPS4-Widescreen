apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Nobunaga's Ambition - Rise to Power (U)(SLUS-21721)
--comment=Widescreen Hack

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x002810e4,0x3c023f40)
--eeObj.WriteMem32(0x00281098,0x3c023fc0)

--Y-Fov
--eeObj.WriteMem32(0x002810b4,0x3c024040)
--Y-Fov
--eeObj.WriteMem32(0x005460c0,0x3F9F49E9)


--Zoom
--eeObj.WriteMem32(0x0028110c,0x3c023fb0)

--Render fix
--eeObj.WriteMem32(0x0015d530,0x3c024440)
--eeObj.WriteMem32(0x0015d55c,0x3c023f6e)
--eeObj.WriteMem32(0x0015d560,0x3442eeef)

eeObj.WriteMem32(0x0015d534,0x3c0343d4)
end

emuObj.AddVsyncHook(widescreen)