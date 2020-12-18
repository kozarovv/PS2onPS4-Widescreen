apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Virtua Fighter 4 (U)(SLUS-20323)
--comment=Widescreen hack by ElHecht

-- Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x0026e6cc,0x3c194455)
eeObj.WriteMem32(0x0026e6d0,0x37395555)
eeObj.WriteMem32(0x0026e6f4,0x44991800)

--2044013c 00a88144 2d28a003
eeObj.WriteMem32(0x00249404,0x3c014456)
end

emuObj.AddVsyncHook(widescreen)