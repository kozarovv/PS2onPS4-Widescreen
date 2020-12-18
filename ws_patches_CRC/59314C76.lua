apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa
--comment=Turn Off 'Speedhacks'

--Widescreen hack 16:9

--Matrix hack
eeObj.WriteMem32(0x0030ee6c,0x3c013f40)
eeObj.WriteMem32(0x0030ee70,0x44810000)
eeObj.WriteMem32(0x0030ee78,0x4600c602)

--Right Render fix 
--a0c3013c 00708144 
eeObj.WriteMem32(0x001518fc,0x3c01c3e0)

--Left Render fix
--a043013c 00888144
eeObj.WriteMem32(0x0015191c,0x3c0143e0)
end

emuObj.AddVsyncHook(widescreen)