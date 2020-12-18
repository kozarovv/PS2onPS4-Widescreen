apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen Hack 16:9

--003f013c 00608144 ac9a090c 020b0c46
eeObj.WriteMem32(0x002ff55c,0x3c013ec0)

--003f013c 00b88144 98000cc6 900018c6
eeObj.WriteMem32(0x0031e200,0x3c013f2b)

--003f013c 00a08144 98000cc6 c93f013c 
eeObj.WriteMem32(0x002ff470,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)