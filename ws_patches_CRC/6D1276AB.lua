apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x004D88CC,0x4182e8ba)

--FMV's fix vertical- by nemesis2000
--eeObj.WriteMem32(0x004A7BF4,0x00006E37)
--eeObj.WriteMem32(0x004A7C14,0x000091B7)

--FMV's fix 4:3 retained by flameofrecca (causes garbage on sides)
--eeObj.WriteMem32(0x004a7bf0,0x000073f8)
--eeObj.WriteMem32(0x004a7c10,0x00008bf8)

--Cutscene zoom
--20942960
--20942964

--Gameplay zoom
--20942370
--20942374
end

emuObj.AddVsyncHook(widescreen)