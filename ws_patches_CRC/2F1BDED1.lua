apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht (pnach by Arapapa)

-- 16:9
eeObj.WriteMem32(0x00396748,0x3c193f40)
eeObj.WriteMem32(0x00396760,0x4499f000)
eeObj.WriteMem32(0x00396764,0x461ea502)
eeObj.WriteMem32(0x00396e30,0x461ebb03)
eeObj.WriteMem32(0x00396e1c,0x461eab83)
end

emuObj.AddVsyncHook(widescreen)