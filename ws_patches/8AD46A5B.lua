apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kidou Senshi Gundam - Ichinen Sensou (J)(SLPS-25478)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Matrix Hack
eeObj.WriteMem32(0x003ad62c,0x3c013f40)
eeObj.WriteMem32(0x003ad630,0x44810000)
eeObj.WriteMem32(0x003ad638,0x4600c602)

--Zoom + Render fix
eeObj.WriteMem32(0x0062EB50,0x3F1E4229)

--Y-Fov + Render fix
eeObj.WriteMem32(0x003ad650,0x3c013f30)

------------------------------------------------
--X-Fov
--eeObj.WriteMem32(0x003a19d8,0x3c014455)
--eeObj.WriteMem32(0x0063b808,0x3F533333)
end

emuObj.AddVsyncHook(widescreen)