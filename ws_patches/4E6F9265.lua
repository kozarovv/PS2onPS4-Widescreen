﻿apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack
eeObj.WriteMem32(0x00A920D0,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)