apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Bigs 2 (U)(SLUS-21860)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Normal play
eeObj.WriteMem32(0x00C74768,0x3FE38E32)

--Turbo and Power blast play
eeObj.WriteMem32(0x00C74848,0x3FE38E32)
eeObj.WriteMem32(0x00C74900,0x3FE38E32)
eeObj.WriteMem32(0x00C749B4,0x3FE38E32)
eeObj.WriteMem32(0x00C74A94,0x3FE38E32)
eeObj.WriteMem32(0x00C74B4C,0x3FE38E32)
eeObj.WriteMem32(0x00C74C00,0x3FE38E32)
end

emuObj.AddVsyncHook(widescreen)