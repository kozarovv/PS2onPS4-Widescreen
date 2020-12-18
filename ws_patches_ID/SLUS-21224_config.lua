apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Guitar Hero (U)(SLUS-21224)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom
eeObj.WriteMem32(0x0019cc20,0x3c013ec0)
--eeObj.WriteMem32(0x001b1fbc,0x3c013f20)


--Y-Fov
eeObj.WriteMem32(0x001b1fd8,0x3c01bfab)

--Render fix
eeObj.WriteMem32(0x0027fcf8,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)