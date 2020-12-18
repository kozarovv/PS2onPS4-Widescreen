apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--Widescreen hack 16:9

eeObj.WriteMem32(0x002FA696,0x3FAAAAAB)
eeObj.WriteMem32(0x002FB4EC,0x3c013fab)
eeObj.WriteMem32(0x003320CC,0x3FAAAAAB)
eeObj.WriteMem32(0x003321E8,0x3FAAAAAB)
eeObj.WriteMem32(0x003321F4,0x3FAAAAAB)
eeObj.WriteMem32(0x00332208,0x3FAAAAAB)
eeObj.WriteMem32(0x00332214,0x3FAAAAAB)
eeObj.WriteMem32(0x0033226C,0x3FAAAAAB)
eeObj.WriteMem32(0x0033236C,0x3FAAAAAB)
eeObj.WriteMem32(0x0033B18C,0x3FAAAAAB)
eeObj.WriteMem32(0x0033B190,0x3FAAAAAB)
eeObj.WriteMem32(0x0033B194,0x3FAAAAAB)

--Render fix (fix by Arapapa)
--003F013C 00608144 DC9C94C7
eeObj.WriteMem32(0x00253d24,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)