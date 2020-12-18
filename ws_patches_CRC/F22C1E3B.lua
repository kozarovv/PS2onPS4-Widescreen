apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Medal of Honor: Rising Sun  (SLUS-20753) / Medal of Honor: Rising Sun  (SLES-51873)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x003a3910,0x3f100000)

eeObj.WriteMem32(0x001b9110,0x3c013f50)
eeObj.WriteMem32(0x001b9114,0x44810800)
eeObj.WriteMem32(0x001b9118,0x46016303)
eeObj.WriteMem32(0x001b911c,0xc4810e30)
eeObj.WriteMem32(0x001b9120,0x460c0832)
eeObj.WriteMem32(0x001b9124,0x45010008)
eeObj.WriteMem32(0x001b9128,0x00000000)
eeObj.WriteMem32(0x001b912c,0x46016034)
eeObj.WriteMem32(0x001b9130,0x45000004)
eeObj.WriteMem32(0x001b9134,0xe48c0e38)
eeObj.WriteMem32(0x001b9138,0x46006807)
eeObj.WriteMem32(0x001b913c,0x03e00008)
eeObj.WriteMem32(0x001b9140,0xe4800e3c)
eeObj.WriteMem32(0x001b9144,0xe48d0e3c)
eeObj.WriteMem32(0x001b9148,0x03e00008)
eeObj.WriteMem32(0x001b914c,0x00000000)
end

emuObj.AddVsyncHook(widescreen)