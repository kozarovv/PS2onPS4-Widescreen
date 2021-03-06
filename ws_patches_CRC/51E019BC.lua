apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Devina and Arapapa

--Widescreen hack 16:9
--to widen the HUD to hide unwanted elements,
--enable patch in-game, not on boot

--X-Fov
--00000000 00000000 43ad1a46
--403f013c 00f08144 43ad1a46 
eeObj.WriteMem32(0x00147af8,0x3c013f40)
eeObj.WriteMem32(0x00147afc,0x4481f000)

--00000000 03a51946
--03a51946 02a51e46
eeObj.WriteMem32(0x00147b10,0x4619a503)
eeObj.WriteMem32(0x00147b14,0x461ea502)

--Render fix
--803f013c 00608144 aa3f013c
eeObj.WriteMem32(0x001223f0,0x3c013f40)

--Render fix #2 (doesn't seem needed in recent builds and causes graphic errors)
--803f013c 00208144 2800b4e7
--eeObj.WriteMem32(0x001560b8,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)