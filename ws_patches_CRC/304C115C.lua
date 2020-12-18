apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0043c6dc,0x3c013f40)
eeObj.WriteMem32(0x0043c6e8,0x44810000)
eeObj.WriteMem32(0x0043c6ec,0x4600c602)
eeObj.WriteMem32(0x00402e18,0x3c043fab)
eeObj.WriteMem32(0x00402e20,0x3c05bfab)

-- 16:10
--eeObj.WriteMem32(0x0043c6dc,0x3c013f55)
--eeObj.WriteMem32(0x0043c6e0,0x34215555)
--eeObj.WriteMem32(0x0043c6e8,0x44810000)
--eeObj.WriteMem32(0x0043c6ec,0x4600c602)
--eeObj.WriteMem32(0x00402e18,0x3c043f9a)
--eeObj.WriteMem32(0x00402e20,0x3c05bf9a)
end

emuObj.AddVsyncHook(widescreen)