apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Bokujou Monogatari - Oh! Wonderful Life (First Print Limited Edition) (J)(SLPS-25421)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Matrix Hack
eeObj.WriteMem32(0x0043bb1c,0x3c013f40)
eeObj.WriteMem32(0x0043bb20,0x44810000)
eeObj.WriteMem32(0x0043bb28,0x4600c602)

--82001646 2d300000 803f043c xxxxxxxx80bf053c
eeObj.WriteMem32(0x00402248,0x3c043fab)
eeObj.WriteMem32(0x00402250,0x3c05bfab)
end

emuObj.AddVsyncHook(widescreen)