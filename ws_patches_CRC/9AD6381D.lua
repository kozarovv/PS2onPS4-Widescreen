apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=The Block Hyper (K)(SLKA-15030)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0014a54c,0x3c013f40)
eeObj.WriteMem32(0x0014a550,0x44810000)
eeObj.WriteMem32(0x0014a558,0x4600c602)
eeObj.WriteMem32(0x0015ac8c,0x3c013f40)
eeObj.WriteMem32(0x0015ac90,0x44810000)
eeObj.WriteMem32(0x0015ac98,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)