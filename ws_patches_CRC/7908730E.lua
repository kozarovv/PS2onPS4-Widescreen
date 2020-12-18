apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-K by Arapapa)

-- 16:9
eeObj.WriteMem32(0x00248808,0x3c013f40)
eeObj.WriteMem32(0x0024880c,0x4481f000)
eeObj.WriteMem32(0x0024881c,0x461eb583)

eeObj.WriteMem32(0x001c7000,0x461e0002)
eeObj.WriteMem32(0x001c751c,0x461ea302)

----------------------------------------------/
--00000000 00000000 03a51146 
--403f013c 00f08144 03a51146 

--00000000 00000000 03000146 1400c0e7 (3rd)
--02001e46 00000000 03000146 1400c0e7

--06a30046 2d904000
--02a31e46 2d904000
end

emuObj.AddVsyncHook(widescreen)