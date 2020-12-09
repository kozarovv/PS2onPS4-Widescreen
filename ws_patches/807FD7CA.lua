apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0026ac60,0x080cbf04)

eeObj.WriteMem32(0x0032fc10,0x46015883)
eeObj.WriteMem32(0x0032fc14,0x3C013F40)
eeObj.WriteMem32(0x0032fc18,0x4481F000)
eeObj.WriteMem32(0x0032fc1C,0x461e1082)
eeObj.WriteMem32(0x0032fc20,0x0809ab19)
end

emuObj.AddVsyncHook(widescreen)