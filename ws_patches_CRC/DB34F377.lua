apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=D1 Professional Drift Grand Prix Series (J)(SLPM-65863)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02020746 50004324 500044c4 (1st)
eeObj.WriteMem32(0x001fd47c,0x0806d560)

eeObj.WriteMem32(0x001b5580,0x46070202)
eeObj.WriteMem32(0x001b5584,0x3c013f40)
eeObj.WriteMem32(0x001b5588,0x4481f000)
eeObj.WriteMem32(0x001b558c,0x461e4202)
eeObj.WriteMem32(0x001b5590,0x0807f520)
end

emuObj.AddVsyncHook(widescreen)