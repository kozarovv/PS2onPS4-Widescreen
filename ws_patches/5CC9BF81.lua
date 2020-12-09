apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x005995ac,0x3fe38e38)
eeObj.WriteMem32(0x0059a190,0x3fe38e38)
eeObj.WriteMem32(0x0059a218,0x3fe38e38)
eeObj.WriteMem32(0x0059aefc,0x3fe38e38)
eeObj.WriteMem32(0x0059af00,0x3fe38e38)
eeObj.WriteMem32(0x0059af98,0x3fe38e38)
eeObj.WriteMem32(0x0059afa8,0x3fe38e38)
eeObj.WriteMem32(0x0059d7dc,0x3fe38e38)

--black border's fix
eeObj.WriteMem32(0x003c7714,0x24150000)
eeObj.WriteMem32(0x003c771c,0x24160200)
eeObj.WriteMem32(0x003c7d4c,0x24070000)
eeObj.WriteMem32(0x003c7d5c,0x24050200)
end

emuObj.AddVsyncHook(widescreen)