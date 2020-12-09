apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov

--42080c46 0400b5e7
eeObj.WriteMem32(0x001241f8,0x080ee12c)

eeObj.WriteMem32(0x003b84b0,0x460c0842)
eeObj.WriteMem32(0x003b84b4,0x3c013f97)
eeObj.WriteMem32(0x003b84b8,0x34214aaa)
eeObj.WriteMem32(0x003b84bc,0x4481f000)
eeObj.WriteMem32(0x003b84c0,0x461e0842)
eeObj.WriteMem32(0x003b84c4,0x0804907f)
end

emuObj.AddVsyncHook(widescreen)