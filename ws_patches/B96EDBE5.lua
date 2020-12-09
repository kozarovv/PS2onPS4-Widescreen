apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Strike Force Bowling (U)(SLUS-20846)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00205e28,0x08097450)
eeObj.WriteMem32(0x0025d140,0x3c013f40)
eeObj.WriteMem32(0x0025d144,0x4481f000)
eeObj.WriteMem32(0x0025d148,0xc6010068)
eeObj.WriteMem32(0x0025d14c,0xc602006c)
eeObj.WriteMem32(0x0025d150,0x461e0843)
eeObj.WriteMem32(0x0025d154,0xe6010068)
eeObj.WriteMem32(0x0025d158,0x0808178c)
end

emuObj.AddVsyncHook(widescreen)