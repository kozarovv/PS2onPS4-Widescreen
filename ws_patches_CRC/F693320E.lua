apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Realm of the Dead (E)(SLES-54339)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x005374c8,0x08161244)

eeObj.WriteMem32(0x00584910,0x3c013f40)
eeObj.WriteMem32(0x00584914,0x4481f000)
eeObj.WriteMem32(0x00584918,0xc6010068)
eeObj.WriteMem32(0x0058491c,0xc602006c)
eeObj.WriteMem32(0x00584920,0x461e0843)
eeObj.WriteMem32(0x00584924,0xe6010068)
eeObj.WriteMem32(0x00584928,0x0814dd34)
end

emuObj.AddVsyncHook(widescreen)