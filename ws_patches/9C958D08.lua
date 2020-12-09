apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mace Griffin - Bounty Hunter (NTSC-U)
--comment=Widescreen Hack By Some Chump
eeObj.WriteMem32(0x0055C008,0x439991ec)
end

emuObj.AddVsyncHook(widescreen)