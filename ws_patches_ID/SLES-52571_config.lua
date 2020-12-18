apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Pacific Warriors II - Dogfight! (E)(SLES-52571)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00182320,0x08030000)
eeObj.WriteMem32(0x00182324,0x00000000)

eeObj.WriteMem32(0x000c0000,0x3c013f40)
eeObj.WriteMem32(0x000c0004,0x4481f000)
eeObj.WriteMem32(0x000c0008,0xc6010068)
eeObj.WriteMem32(0x000c000c,0xc602006c)
eeObj.WriteMem32(0x000c0010,0x461e0843)
eeObj.WriteMem32(0x000c0014,0xe6010068)
eeObj.WriteMem32(0x000c0018,0x080608c9)

--68004cc4 00050046
eeObj.WriteMem32(0x002c508c,0x4600f306)

--------------------------------------
--X-Fov (include HUD fix. but needs render fix)
--eeObj.WriteMem32(0x0018161c,0x08030009)

--eeObj.WriteMem32(0x000c0024,0x46070202)
--eeObj.WriteMem32(0x000c0028,0x3c013f40)
--eeObj.WriteMem32(0x000c002c,0x4481f000)
--eeObj.WriteMem32(0x000c0030,0x461e4202)
--eeObj.WriteMem32(0x000c0034,0x08060588)
end

emuObj.AddVsyncHook(widescreen)