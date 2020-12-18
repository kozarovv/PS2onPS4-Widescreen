apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Medal of Honor - Frontline (E)(SLES-50684)
--comment=Widescreen hack by nemesis2000 (PAL by Arapapa)

eeObj.WriteMem32(0x00145768,0x0c052e5b)
eeObj.WriteMem32(0x00145788,0x0c052e5b)
eeObj.WriteMem32(0x001457a8,0x0c052e5b)

eeObj.WriteMem32(0x0014b96c,0x3c013f50)
eeObj.WriteMem32(0x0014b970,0x44810800)
eeObj.WriteMem32(0x0014b974,0x46016303)
eeObj.WriteMem32(0x0014b978,0xc481043c)
eeObj.WriteMem32(0x0014b97c,0x460c0832)
eeObj.WriteMem32(0x0014b980,0x45010008)
eeObj.WriteMem32(0x0014b988,0x46016034)
eeObj.WriteMem32(0x0014b98c,0x45000004)
eeObj.WriteMem32(0x0014b990,0xe48c0444)
eeObj.WriteMem32(0x0014b994,0x46006807)
eeObj.WriteMem32(0x0014b998,0x03e00008)
eeObj.WriteMem32(0x0014b99c,0xe4800448)
eeObj.WriteMem32(0x0014b9a0,0xe48d0448)
eeObj.WriteMem32(0x0014b9a4,0x03e00008)
eeObj.WriteMem32(0x0014b9a8,0x3c030024)
eeObj.WriteMem32(0x0014b9ac,0x27bdff60)

eeObj.WriteMem32(0x00327fe0,0x3f1c0000)
end

emuObj.AddVsyncHook(widescreen)