apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=WTA Tour Tennis (J)(SLPM-62046)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Matrix hack
eeObj.WriteMem32(0x0016fd2c,0x3c013f40)
eeObj.WriteMem32(0x0016fd30,0x44810000)
eeObj.WriteMem32(0x0016fd38,0x4600c602)

--Render fix
--803f013c 00188144 40ad1546
eeObj.WriteMem32(0x0010cdc4,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)