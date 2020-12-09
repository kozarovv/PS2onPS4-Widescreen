apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02020746 50004324 500044c4 (1st)
eeObj.WriteMem32(0x0022ec64,0x08079bbc)

eeObj.WriteMem32(0x001e6ef0,0x46070202)
eeObj.WriteMem32(0x001e6ef4,0x3c013f40)
eeObj.WriteMem32(0x001e6ef8,0x4481f000)
eeObj.WriteMem32(0x001e6efc,0x461e4202)
eeObj.WriteMem32(0x001e6f00,0x0808bb1a)
end

emuObj.AddVsyncHook(widescreen)