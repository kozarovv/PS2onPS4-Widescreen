apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Devina and Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00165990,0x08081fa4)

eeObj.WriteMem32(0x00207e90,0x46150502)
eeObj.WriteMem32(0x00207e94,0x3c013faa)
eeObj.WriteMem32(0x00207e98,0x3421aaab)
eeObj.WriteMem32(0x00207e9c,0x4481f000)
eeObj.WriteMem32(0x00207ea0,0x461ea502)
eeObj.WriteMem32(0x00207ea4,0x08059665)
end

emuObj.AddVsyncHook(widescreen)