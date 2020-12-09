apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00257458,0x0808441c)
eeObj.WriteMem32(0x00211070,0x3c013f40)
eeObj.WriteMem32(0x00211074,0x4481f000)
eeObj.WriteMem32(0x00211078,0xc6010068)
eeObj.WriteMem32(0x0021107c,0xc602006c)
eeObj.WriteMem32(0x00211080,0x461e0843)
eeObj.WriteMem32(0x00211084,0xe6010068)
eeObj.WriteMem32(0x00211088,0x08095d18)
end

emuObj.AddVsyncHook(widescreen)