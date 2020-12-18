apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- 16:9
eeObj.WriteMem32(0x004f4e08,0x3f400000)

-- black border fix
eeObj.WriteMem32(0x00323204,0x3c013f80)

--FMV's fix
eeObj.WriteMem32(0x002724c8,0x240302aa)
eeObj.WriteMem32(0x00272750,0x240b02aa)
end

emuObj.AddVsyncHook(widescreen)