apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0011a3f0,0x0808ad25)
eeObj.WriteMem32(0x0011a3f4,0x00000000)
eeObj.WriteMem32(0x0022b494,0x3c013f40)
eeObj.WriteMem32(0x0022b498,0x4481f000)
eeObj.WriteMem32(0x0022b49c,0xc6010068)
eeObj.WriteMem32(0x0022b4a0,0xc602006c)
eeObj.WriteMem32(0x0022b4a4,0x461e0843)
eeObj.WriteMem32(0x0022b4a8,0xe6010068)
eeObj.WriteMem32(0x0022b4ac,0x080468fd)
end

emuObj.AddVsyncHook(widescreen)