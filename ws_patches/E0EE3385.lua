apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Gunslinger Girl Volume.III
--comment=NTSC-J Widescreen Hack by synce
eeObj.WriteMem32(0x00318100,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)