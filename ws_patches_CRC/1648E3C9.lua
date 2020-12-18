apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

eeObj.WriteMem32(0x004cf458,0x3FE38E32)
eeObj.WriteMem32(0x00560f94,0x44550000)

-- 16:9
--eeObj.WriteMem32(0x002a1610,0x3c013f40)
--eeObj.WriteMem32(0x002a1618,0x4481f000)
--eeObj.WriteMem32(0x002a161c,0xc783c51c)
--eeObj.WriteMem32(0x002a1674,0x461e18c3)
--eeObj.WriteMem32(0x002d2b0c,0x3c014456)

-- black border fix
eeObj.WriteMem32(0x003323dc,0x3c010000)
end

emuObj.AddVsyncHook(widescreen)