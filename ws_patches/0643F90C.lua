apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x001c6a50,0x3c023f10)

--compass
eeObj.WriteMem32(0x0037112c,0x3c023f10)

--black border fix
eeObj.WriteMem32(0x002611D4,0x3c020000)

--FMV's fix
eeObj.WriteMem32(0x001d5a7c,0x24060000)
eeObj.WriteMem32(0x001d5acc,0x240201c0)

--hor FMV's fix
--eeObj.WriteMem32(0x001d5a6c,0x24030040)
--eeObj.WriteMem32(0x001d5ac8,0x240301c0)
end

emuObj.AddVsyncHook(widescreen)