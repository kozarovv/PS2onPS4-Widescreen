apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x0022a6ac,0x08121331)
eeObj.WriteMem32(0x0022a6b0,0x00000000)
eeObj.WriteMem32(0x00484cc4,0x3c013f40)
eeObj.WriteMem32(0x00484cc8,0x4481f000)
eeObj.WriteMem32(0x00484ccc,0x46070202)
eeObj.WriteMem32(0x00484cd0,0x24430050)
eeObj.WriteMem32(0x00484cd4,0x461e4202)
eeObj.WriteMem32(0x00484cd8,0x0808a9ac)
end

emuObj.AddVsyncHook(widescreen)