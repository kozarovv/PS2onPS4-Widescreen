apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
--900044ac 4c00a28f
eeObj.WriteMem32(0x001c0ba0,0x080da548)

eeObj.WriteMem32(0x00369520,0x3c013f40)
eeObj.WriteMem32(0x00369524,0xac410090)
eeObj.WriteMem32(0x00369528,0x080702e9)

--Gore Level High (NTSC-K cannot select gore level)
eeObj.WriteMem32(0x006e1094,0x00000000)
end

emuObj.AddVsyncHook(widescreen)