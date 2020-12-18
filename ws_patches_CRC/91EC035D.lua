apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ichigeki Sacchuu!! HoiHoi-San [NTSC-J] (SLPM-62391)
--comment=Widescreen Hack by Little Giant

--16:9
eeObj.WriteMem32(0x0010C53C,0x3c013f40)
eeObj.WriteMem32(0x0010C540,0x44810000)
eeObj.WriteMem32(0x0010C548,0x4600c602)

-- 16:10
--eeObj.WriteMem32(0x0010C53C,0x3c013f55)
--eeObj.WriteMem32(0x0010C540,0x34215555)
--eeObj.WriteMem32(0x0010C548,0x44810000)
--eeObj.WriteMem32(0x0010C54C,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)