apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--98000cc6 900018c6
eeObj.WriteMem32(0x003c4e08,0x08030000)
eeObj.WriteMem32(0x000c0000,0xc60c0098)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e6303)
eeObj.WriteMem32(0x000c0010,0x080f1383)


--Render fix
--003f013c 00a08144 98000cc6 (1st)
eeObj.WriteMem32(0x003a4ce0,0x3c013f2b)

end

emuObj.AddVsyncHook(widescreen)