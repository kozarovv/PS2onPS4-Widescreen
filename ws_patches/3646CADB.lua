apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00276968,0x081109c8)
eeObj.WriteMem32(0x0027696c,0x00000000)

eeObj.WriteMem32(0x00442720,0x3c013f40)
eeObj.WriteMem32(0x00442724,0x4481f000)
eeObj.WriteMem32(0x00442728,0xc6010068)
eeObj.WriteMem32(0x0044272c,0xc602006c)
eeObj.WriteMem32(0x00442730,0x461e0843)
eeObj.WriteMem32(0x00442734,0xe6010068)
eeObj.WriteMem32(0x00442738,0x0809da5c)
end

emuObj.AddVsyncHook(widescreen)