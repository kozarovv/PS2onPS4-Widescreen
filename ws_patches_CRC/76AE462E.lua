apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0022fff8,0x08030000)

eeObj.WriteMem32(0x000c0000,0x3c013f40)
eeObj.WriteMem32(0x000c0004,0x4481f000)
eeObj.WriteMem32(0x000c0008,0x461e6b42)
eeObj.WriteMem32(0x000c000c,0x0808bfff)
end

emuObj.AddVsyncHook(widescreen)