apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tak and the Guardians of Gross (E)(SLES-55376)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x003c3ec0,0x08030000)
eeObj.WriteMem32(0x000c0000,0xc60c0098)
eeObj.WriteMem32(0x000c0004,0x3c013f40)
eeObj.WriteMem32(0x000c0008,0x4481f000)
eeObj.WriteMem32(0x000c000c,0x461e6303)
eeObj.WriteMem32(0x000c0010,0x080f0fb1)

--Render fix
eeObj.WriteMem32(0x003a3d98,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)