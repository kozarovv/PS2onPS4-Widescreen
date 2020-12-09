apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by pelvicthrustman

--Widescreen
eeObj.WriteMem32(0x001e9fe4,0x3c013f40)
eeObj.WriteMem32(0x001e9fe8,0x4481f800)
eeObj.WriteMem32(0x001e9fec,0x461f3183)
eeObj.WriteMem32(0x001ea004,0x46061983)

--Render Fix
eeObj.WriteMem32(0x001e873c,0x340f02ab)
eeObj.WriteMem32(0x001292b8,0x240e02ab)

--Remove post processing (fixes bad ghosting in PCSX2 hardware mode)
eeObj.WriteMem32(0x00369F4C,0x00000000)

--Removes blue shadows (PCSX2 hardware mode)
eeObj.WriteMem32(0x0112C014,0x00000000)
end

emuObj.AddVsyncHook(widescreen)