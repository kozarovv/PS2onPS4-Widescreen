apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen port and menu hacks by dieSkaarj

--Widescreen
eeObj.WriteMem32(0x0012CD0C,0x3C013F40)

-- Center surfaces (Offsets the X draw position of textures)
eeObj.WriteMem32(0x005359BC,0xBF400000)

--or

-- Stretch HUD
--~eeObj.WriteMem32(0x00535A1C,0x3F400000)
--~eeObj.WriteMem32(0x00535A44,0x3F400000)

end

emuObj.AddVsyncHook(widescreen)