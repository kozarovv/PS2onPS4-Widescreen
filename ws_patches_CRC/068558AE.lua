apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by sergx12 (NTSC-K by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x005677EC,0x3c023f40)



--Y-Fov
--eeObj.WriteMem32(0x001cbb70,0x40200000)

--Zoom
--3f000000 3e800000 00000000
--eeObj.WriteMem32(0x00A333A0,0x3f35c28f)
--eeObj.WriteMem32(0x00A333A4,0x3f19999a)
end

emuObj.AddVsyncHook(widescreen)