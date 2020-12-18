apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

Widescreen hack 16:9

--X-Fov
--02020746 50004324 500044c4 (1st)
eeObj.WriteMem32(0x0027c524,0x0808d1e0)

eeObj.WriteMem32(0x00234780,0x46070202)
eeObj.WriteMem32(0x00234784,0x3c013f40)
eeObj.WriteMem32(0x00234788,0x4481f000)
eeObj.WriteMem32(0x0023478c,0x461e4202)
eeObj.WriteMem32(0x00234790,0x0809f14a)
end

emuObj.AddVsyncHook(widescreen)