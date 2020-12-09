apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by Dread and Arapapa

----Force turn on Internal Widescreen (Full boot bypassing)
eeObj.WriteMem32(0x003a64a8,0x24020002)

--Zoom Fix
--9A 99 99 3F 39 8E E3 3F 80 02 00 00 C0 01 00 00
eeObj.WriteMem32(0x01bfeb10,0x3FAAAAAB)
end

emuObj.AddVsyncHook(widescreen)