apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Jumper - Griffin's Story (U)(SLUS-21730)
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

--X-Fov
--06050046 46b30046 (1st)
eeObj.WriteMem32(0x003fd5a8,0x080c3078)

eeObj.WriteMem32(0x0030c1e0,0x46000506)
eeObj.WriteMem32(0x0030c1e4,0x3c013f40)
eeObj.WriteMem32(0x0030c1e8,0x4481f000)
eeObj.WriteMem32(0x0030c1EC,0x461ea502)
eeObj.WriteMem32(0x0030c1f0,0x080ff56b)

--------------------------
--701e4700 00000000 0000803f 00000000 Memory hack. needs render fix)
--eeObj.WriteMem32(0x004B0430,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)