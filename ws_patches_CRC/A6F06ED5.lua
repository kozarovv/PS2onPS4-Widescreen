apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gundam Musou 2 (J)(SLPM-55122)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0017b7fc,0x08043d88)

eeObj.WriteMem32(0x0010f620,0x46041902)
eeObj.WriteMem32(0x0010f624,0x3c013f40)
eeObj.WriteMem32(0x0010f628,0x4481f000)
eeObj.WriteMem32(0x0010f62c,0x461e2102)
eeObj.WriteMem32(0x0010f630,0x0805ee00)

--eeObj.WriteMem32(0x004DF838,0x3F2AAAAB)
end

emuObj.AddVsyncHook(widescreen)