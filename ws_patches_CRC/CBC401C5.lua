apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Mace Griffin - Bounty Hunter (SLES_516.53 Pal)
--comment=Widescreen Hack By Some Chump
eeObj.WriteMem32(0x0055c308,0x439991ec)
end

emuObj.AddVsyncHook(widescreen)