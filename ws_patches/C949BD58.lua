apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Duel Masters (U)(SLUS-20924)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--42080246 07080046 3c0000e6 (1st)
eeObj.WriteMem32(0x002e4d74,0x08041bf4)

eeObj.WriteMem32(0x00106fd0,0x46020842)
eeObj.WriteMem32(0x00106fd4,0x3c013faa)
eeObj.WriteMem32(0x00106fd8,0x3421aaab)
eeObj.WriteMem32(0x00106fdc,0x4481f000)
eeObj.WriteMem32(0x00106fe0,0x461e0842)
eeObj.WriteMem32(0x00106fe4,0x080b935e)
end

emuObj.AddVsyncHook(widescreen)