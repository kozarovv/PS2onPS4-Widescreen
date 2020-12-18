apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Medal of Honor - Rising Sun (NTSC-K)(SLKA-25140)
--comment=Widescreen hack by nemesis2000 (NTSC-K by Arapapa)

--Widescreen hack 16:9
eeObj.WriteMem32(0x003a42a0,0x3f100000)

eeObj.WriteMem32(0x001b95f8,0x3c013f50)
eeObj.WriteMem32(0x001b95fc,0x44810800)
eeObj.WriteMem32(0x001b9600,0x46016303)
eeObj.WriteMem32(0x001b9604,0xc4810e30)
eeObj.WriteMem32(0x001b9608,0x460c0832)
eeObj.WriteMem32(0x001b960c,0x45010008)
eeObj.WriteMem32(0x001b9614,0x46016034)
eeObj.WriteMem32(0x001b9618,0x45000004)
eeObj.WriteMem32(0x001b961c,0xe48c0e38)
eeObj.WriteMem32(0x001b9620,0x46006807)
eeObj.WriteMem32(0x001b9624,0x03e00008)
eeObj.WriteMem32(0x001b9628,0xe4800e3c)
eeObj.WriteMem32(0x001b962c,0xe48d0e3c)
eeObj.WriteMem32(0x001b9630,0x03e00008)
end

emuObj.AddVsyncHook(widescreen)