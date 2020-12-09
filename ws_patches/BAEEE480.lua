apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Urban Extreme (E)(SLES-52957)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

eeObj.WriteMem32(0x00316aa8,0x080de3e8)
eeObj.WriteMem32(0x00378fa0,0x3c013f40)
eeObj.WriteMem32(0x00378fa4,0x4481f000)
eeObj.WriteMem32(0x00378fa8,0xc6010068)
eeObj.WriteMem32(0x00378fac,0xc602006c)
eeObj.WriteMem32(0x00378fb0,0x461e0843)
eeObj.WriteMem32(0x00378fb4,0xe6010068)
eeObj.WriteMem32(0x00378fb8,0x080c5aac)
end

emuObj.AddVsyncHook(widescreen)