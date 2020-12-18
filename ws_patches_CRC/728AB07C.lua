apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--built in widescreen
eeObj.WriteMem32(0x0011a33c,0x00000000)
eeObj.WriteMem32(0x0028cfe0,0x00000001)

--sub black background off
eeObj.WriteMem32(0x0013d108,0x3c013b30)

--cutscenes black border fix
eeObj.WriteMem32(0x00151ef8,0x3c01bf80)
eeObj.WriteMem32(0x00151f04,0x3c013f80)

--cutscenes render fix
eeObj.WriteMem32(0x0011972c,0x3c01c340)
eeObj.WriteMem32(0x00119748,0x3c014340)

 --partial font size fix
eeObj.WriteMem32(0x0013ba0c,0x3c013f40)
eeObj.WriteMem32(0x0013ba38,0xe422f400)
eeObj.WriteMem32(0x0013ba68,0x46021083)
eeObj.WriteMem32(0x0013ba6c,0xe422f3ec)

--HUD fix (not fully tested)
eeObj.WriteMem32(0x0023be84,0x3c013b40)

--FMV's fix
eeObj.WriteMem32(0x00212f2c,0x24070140)
end

emuObj.AddVsyncHook(widescreen)