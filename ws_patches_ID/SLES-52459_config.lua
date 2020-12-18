apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Autobahn Raser - Das Spiel zum Film (G)(SLES-52459)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00116890,0x08052038)

eeObj.WriteMem32(0x001480e0,0x46020b02)
eeObj.WriteMem32(0x001480e4,0x3c013faa)
eeObj.WriteMem32(0x001480e8,0x3421aaab)
eeObj.WriteMem32(0x001480ec,0x4481f000)
eeObj.WriteMem32(0x001480f0,0x461e6302)
eeObj.WriteMem32(0x001480f4,0x08045a25)
end

emuObj.AddVsyncHook(widescreen)