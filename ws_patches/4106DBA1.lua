apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov

--803f013c 00008144 00000000 34001446 00000000 (1st)
--803f013c 00008144 00000000 00000000 00000000
eeObj.WriteMem32(0x001197f8,0x00000000)

--6542013c e12e2134 00088144 (1st)
eeObj.WriteMem32(0x00119840,0x3c014235)
eeObj.WriteMem32(0x00119844,0x3421e327)

------------------------------
--Zoom
--eeObj.WriteMem32(0x001197ec,0x3c013faa)
end

emuObj.AddVsyncHook(widescreen)