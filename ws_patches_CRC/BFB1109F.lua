apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle= Dynasty Warriors Gundam 2
--comment=Wide screen (16:9)
--Wide screen patch by bositman using Widescreen helper

eeObj.WriteMem32(0x004D9EB8,0x3F2AAAAB)
end

emuObj.AddVsyncHook(widescreen)