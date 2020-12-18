apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Juuni Kokuki - Guren no Shirube, Koujin no Michi (J)(SLPM-65338)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--80bf023c 00008244 00000000 2000a0e7
eeObj.WriteMem32(0x0013e7f0,0x3c02bf40)

--Render fix
eeObj.WriteMem32(0x0013e4fc,0x3c023f20)

--Font Fix
eeObj.WriteMem32(0x002537d8,0x3c023f40)


------------------------------------------------------/
--Zoom
--eeObj.WriteMem32(0x0013e828,0x3c023f20)

--Y-Fov
--eeObj.WriteMem32(0x0013e908,0x08030000)

--eeObj.WriteMem32(0x000c0000,0x46000802)
--eeObj.WriteMem32(0x000c0004,0x3c013fab)
--eeObj.WriteMem32(0x000c0008,0x4481f000)
--eeObj.WriteMem32(0x000c000c,0x461e0002)
--eeObj.WriteMem32(0x000c0010,0x0804fa43)

--eeObj.WriteMem32(0x001bd5e4,0x3c0344f4)

--eeObj.WriteMem32(0x00781580,0x3f400000)
--eeObj.WriteMem32(0x007821D0,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)