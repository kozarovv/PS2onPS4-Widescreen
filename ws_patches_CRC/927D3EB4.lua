apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Shinkon Gattai Godannar!! [NTSC-J] (SLPS-20380)
--comment=Widescreen Hack by Little Gaint

-- 16:10
--eeObj.WriteMem32(0x00103f94,0x3c013f55)
--eeObj.WriteMem32(0x00103f98,0x34215555)
--eeObj.WriteMem32(0x00103fa0,0x44810000)
--eeObj.WriteMem32(0x00103fa4,0x4600c602)

--16:9
eeObj.WriteMem32(0x00103f94,0x3c013f40)
eeObj.WriteMem32(0x00103f98,0x44810000)
eeObj.WriteMem32(0x00103fa0,0x4600c602)
eeObj.WriteMem32(0x001c87a8,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)