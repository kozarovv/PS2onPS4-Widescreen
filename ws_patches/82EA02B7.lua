apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen fix by flameofrecca
eeObj.WriteMem32(0x00165924,0x3c023f20)
eeObj.WriteMem32(0x00165974,0x3c023f66)
eeObj.WriteMem32(0x001b1210,0x3c023fa0)

--Partial HUD fixes (Doesn't work on PCSX2, buts works on physical ps2)
--eeObj.WriteMem32(0x0176dfdc,0x42400000)
--eeObj.WriteMem32(0x0176df94,0x41c00000)
--eeObj.WriteMem32(0x0176debc,0x41400000)
--eeObj.WriteMem32(0x0176DEE0,0x41400000)
--eeObj.WriteMem32(0x0176DF04,0x41400000)
--eeObj.WriteMem32(0x0176DF28,0x41400000)
--eeObj.WriteMem32(0x0176df4c,0x41400000)
end

emuObj.AddVsyncHook(widescreen)