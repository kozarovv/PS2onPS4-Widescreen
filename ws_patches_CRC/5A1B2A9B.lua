apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00a88144 1000b0ff
eeObj.WriteMem32(0x002a49f4,0x3c013f20)

--Y-Fov
--403f013c 00708144 5401648e
eeObj.WriteMem32(0x002c6b14,0x3c013f10)

----------------------------/
--Y-Fov
--eeObj.WriteMem32(0x0040BF14,0x3f100000)
end

emuObj.AddVsyncHook(widescreen)