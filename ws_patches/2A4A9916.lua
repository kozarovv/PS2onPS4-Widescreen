apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Martix hack
eeObj.WriteMem32(0x00297454,0x3c013f40)
eeObj.WriteMem32(0x00297458,0x44810000)
eeObj.WriteMem32(0x00297460,0x4600c602)

--Render fix
eeObj.WriteMem32(0x0028bc14,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)