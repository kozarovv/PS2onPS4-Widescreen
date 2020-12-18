apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Adiboo and the Energy Thieves (E)(SLES-52521)
--comment=Widescreen hack by Arapapa

--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x00416aa0,0x08049d44)
eeObj.WriteMem32(0x00127510,0x3c013f40)
eeObj.WriteMem32(0x00127514,0x4481f000)
eeObj.WriteMem32(0x00127518,0xc6010068)
eeObj.WriteMem32(0x0012751c,0xc602006c)
eeObj.WriteMem32(0x00127520,0x461e0843)
eeObj.WriteMem32(0x00127524,0xe6010068)
eeObj.WriteMem32(0x00127528,0x08105aaa)

--Zoom fix
eeObj.WriteMem32(0x00415d7c,0x3c01bf2a)
end

emuObj.AddVsyncHook(widescreen)