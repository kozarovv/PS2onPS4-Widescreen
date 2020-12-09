apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Breeder's Cup - World Thoroughbred Championships (U)(SLUS-21195)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001b54dc,0x080848c8)
eeObj.WriteMem32(0x00212320,0x46001906)
eeObj.WriteMem32(0x00212324,0x3c013f40)
eeObj.WriteMem32(0x00212328,0x4481f000)
eeObj.WriteMem32(0x0021232c,0x461e2102)
eeObj.WriteMem32(0x00212330,0x0806d538)

--Render fix
eeObj.WriteMem32(0x0011adb4,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)