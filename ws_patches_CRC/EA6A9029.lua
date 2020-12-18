apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disney-Pixar Toy Story 3 (E)(SLES-55622)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--Zoom fix (Internal Widescreen)
--aa3f033c 0040023c 713d6334
eeObj.WriteMem32(0x004f6ee8,0x3c033f80)
eeObj.WriteMem32(0x004f6ef0,0x34630000)
end

emuObj.AddVsyncHook(widescreen)