apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov #1
eeObj.WriteMem32(0x0022d10c,0x3c013f40)
eeObj.WriteMem32(0x0022d110,0x44810000)
eeObj.WriteMem32(0x0022d118,0x4600c602)

--X-Fov #2
eeObj.WriteMem32(0x001c96d8,0x08092a44)
eeObj.WriteMem32(0x0024a910,0x4600a346)
eeObj.WriteMem32(0x0024a914,0x3c013f40)
eeObj.WriteMem32(0x0024a918,0x4481f000)
eeObj.WriteMem32(0x0024a91c,0x461e6b42)
eeObj.WriteMem32(0x0024a920,0x080725b7)

--#1 Render fix
eeObj.WriteMem32(0x0020447c,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)