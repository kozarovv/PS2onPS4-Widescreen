apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Millenium European Paintball Series - Championship Paintball 2009 (E)(SLES-55328)
--comment=Widescreen Hack by Arapapa

--Widescreen 16:9

--Zoom
eeObj.WriteMem32(0x00237f5c,0x3c023f20)

--Y-Fov
eeObj.WriteMem32(0x00237f88,0x081a1860)
eeObj.WriteMem32(0x00686180,0x46000803)
eeObj.WriteMem32(0x00686184,0x3c013f40)
eeObj.WriteMem32(0x00686188,0x4481f000)
eeObj.WriteMem32(0x0068618c,0x461e0002)
eeObj.WriteMem32(0x00686190,0x0808dfe3)
end

emuObj.AddVsyncHook(widescreen)