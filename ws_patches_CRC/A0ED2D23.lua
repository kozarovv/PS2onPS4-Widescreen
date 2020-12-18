apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=F1 2002 (NTSC-J & PAL)(SLPS-20199 & SLES-50874)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00188144 ea10c24b
eeObj.WriteMem32(0x002c6540,0x3c013f40)


--[patches = A0ED2D23]
--	--Patched by Prafull
--	--Fixes controller issue but skips videos
--	eeObj.WriteMem32(0x002d8568,0x03e00008)
--	eeObj.WriteMem32(0x002d856c,0x00000000)
--[/patches]

end

emuObj.AddVsyncHook(widescreen)