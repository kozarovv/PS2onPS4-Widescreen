apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by Arapapa)

--gameplay
eeObj.WriteMem32(0x002f292c,0x3c023f40)

--menu font fix
eeObj.WriteMem32(0x003c757c,0x3c033f40)
eeObj.WriteMem32(0x003c7584,0x3c033f80)
eeObj.WriteMem32(0x003c7588,0x44830800)
eeObj.WriteMem32(0x003c758c,0xae63010c)
eeObj.WriteMem32(0x003c7590,0xc6600108)
eeObj.WriteMem32(0x003c7594,0x46010036)
end

emuObj.AddVsyncHook(widescreen)