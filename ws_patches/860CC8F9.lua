apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Bigdemon

--Gameplay 16:9
eeObj.WriteMem32(0x00257C54,0x3C023F19)
eeObj.WriteMem32(0x00257C58,0x3441B604)
eeObj.WriteMem32(0x00257C5C,0x44810800)

--Render-Fix/Inventory
eeObj.WriteMem32(0x001E1BEC,0x3C034120)
eeObj.WriteMem32(0x001CA274,0x3C023FAA)
end

emuObj.AddVsyncHook(widescreen)