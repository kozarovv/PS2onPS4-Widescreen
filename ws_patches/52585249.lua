apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack
eeObj.WriteMem32(0x0013bf48,0x3c013f12)
eeObj.WriteMem32(0x0013bf70,0x3c013f10)

--Jennifer runs faster
--eeObj.WriteMem32(0x003004A0,0x3FAAAAAA)
--eeObj.WriteMem32(0x003004A4,0x3FAAAAAA)

--Camera distance = 2032A5C0

--noise off
eeObj.WriteMem32(0x001cb014,0xe43f1fa0)

--black borders's fix
eeObj.WriteMem32(0x00191430,0x24050000)
end

emuObj.AddVsyncHook(widescreen)