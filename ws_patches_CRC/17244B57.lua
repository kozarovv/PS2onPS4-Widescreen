apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by pelvicthrustman

--Enable bult-in widescreen
eeObj.WriteMem32(0x001ef324,0x3c040001)

--FMV Fix
eeObj.WriteMem32(0x002DA118,0x24091400)
eeObj.WriteMem32(0x002DA11C,0x24037600)

--Left HUD----------------
--Face
eeObj.WriteMem32(0x0020b950,0x3c0141d0)
eeObj.WriteMem32(0x0020baf8,0x3c0142a8)
eeObj.WriteMem32(0x0020bb00,0x3c013f48)
--Pain overlay
eeObj.WriteMem32(0x0020bc78,0x3c013f40)
eeObj.WriteMem32(0x0020bc8c,0x3c0142a8)
--Health BG
eeObj.WriteMem32(0x0020bfd0,0x3c0141a8)
eeObj.WriteMem32(0x0020bfe4,0x3c013f48)
eeObj.WriteMem32(0x0020bff4,0x3c0142a6)
--Health bar
eeObj.WriteMem32(0x0020c0ac,0x3c014178)
eeObj.WriteMem32(0x0020c0d0,0x3c0142a6)
eeObj.WriteMem32(0x0020bfdc,0x3c0f3f86)
eeObj.WriteMem32(0x0020c084,0x448ff800)
eeObj.WriteMem32(0x0020c0f4,0x461f20c2)
--Frame
eeObj.WriteMem32(0x0020c1d4,0x3c0142f8)
eeObj.WriteMem32(0x0020c1f0,0x3c01432b)
eeObj.WriteMem32(0x0020c21c,0x46011042)
--------------------------
end

emuObj.AddVsyncHook(widescreen)