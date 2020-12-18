apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht (pnach NTSC-J by Arapapa)

-- 16:9(803f033c 00c0053c 00288344 00000000 83280246)
eeObj.WriteMem32(0x00398fe4,0x3c033f40)
eeObj.WriteMem32(0x00398fec,0x4483f000)
eeObj.WriteMem32(0x00398ff0,0x461ef143)
eeObj.WriteMem32(0x00398ff4,0x4602f083)

--NTSC-J... did not found "3f947ae1" 
--eeObj.WriteMem32(0x0044cf30,0x3f5eb852)

--(6040053c c040033c 2c0085ac)
eeObj.WriteMem32(0x00164830,0x3c054028)

--(2040053c c040033c 2c0085ac)
eeObj.WriteMem32(0x00164870,0x3c053ff0)

-- effects(803f013c 00108144 42180546)
eeObj.WriteMem32(0x00231ed4,0x3c014500)

--b000a427 803f023c 00688344 00888244
eeObj.WriteMem32(0x0010f6e0,0x3c023e80)
end

emuObj.AddVsyncHook(widescreen)