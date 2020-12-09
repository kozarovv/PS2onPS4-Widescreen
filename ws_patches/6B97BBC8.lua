apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by pelvicthrustman

--Widescreen
eeObj.WriteMem32(0x001ea96c,0x3c013f40)
eeObj.WriteMem32(0x001ea970,0x4481f800)
eeObj.WriteMem32(0x001ea974,0x461f3183)
eeObj.WriteMem32(0x001ea98c,0x46061983)

--Render Fix
eeObj.WriteMem32(0x001e90c4,0x340f02ab)
eeObj.WriteMem32(0x001292d8,0x240e02ab)
end

emuObj.AddVsyncHook(widescreen)