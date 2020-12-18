apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Object
eeObj.WriteMem32(0x00197e6c,0x3c013f40)
eeObj.WriteMem32(0x00197e70,0x44810000)
eeObj.WriteMem32(0x00197e78,0x4600c602)

--Back Ground
eeObj.WriteMem32(0x00169ff4,0x0806ae28)

eeObj.WriteMem32(0x001ab8a0,0x46006dc6)
eeObj.WriteMem32(0x001ab8a4,0x3c013f40)
eeObj.WriteMem32(0x001ab8a8,0x44815000)
eeObj.WriteMem32(0x001ab8ac,0x460abdc2)
eeObj.WriteMem32(0x001ab8b0,0x0805a7fe)

------------------------------------
--xxx
--eeObj.WriteMem32(0x0016a0dc,0x3c013f00)

--eeObj.WriteMem32(0x00142c98,0x3c014100)
--eeObj.WriteMem32(0x00142cc0,0x3c014100)
end

emuObj.AddVsyncHook(widescreen)