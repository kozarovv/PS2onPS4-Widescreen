apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00237880,0x08081e3c)
eeObj.WriteMem32(0x002078f0,0x3c013f40)
eeObj.WriteMem32(0x002078f4,0x4481f000)
eeObj.WriteMem32(0x002078f8,0xc6010068)
eeObj.WriteMem32(0x002078fc,0xc602006c)
eeObj.WriteMem32(0x00207900,0x461e0843)
eeObj.WriteMem32(0x00207904,0xe6010068)
eeObj.WriteMem32(0x00207908,0x0808de22)
end

emuObj.AddVsyncHook(widescreen)