apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

--50hz mode
eeObj.WriteMem32(0x00013f80,0x0018bc94)
eeObj.WriteMem32(0x0018bc94,0x3c013f40)

--60hz mode
eeObj.WriteMem32(0x00013f80,0x0018b7fc)
eeObj.WriteMem32(0x0018b7fc,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)