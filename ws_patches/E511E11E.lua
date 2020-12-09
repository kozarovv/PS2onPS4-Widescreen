apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Men in Black II - Alien Escape (K)(SLPM-67533)
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-fov
--80bf023c b001b127
eeObj.WriteMem32(0x003aa0ec,0x3c02bf40)

--003f033c 8e3c023c 00108344
eeObj.WriteMem32(0x001a6ecc,0x3c033f2b)
eeObj.WriteMem32(0x001a6f38,0x3c033f2b)
end

emuObj.AddVsyncHook(widescreen)