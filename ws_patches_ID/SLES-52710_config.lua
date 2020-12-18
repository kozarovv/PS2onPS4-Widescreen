apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=McFarlane's Evil Prophecy SLES_527.10
--comment=Widescreen Hack
eeObj.WriteMem32(0x0031d0d0,0x44b38000)
end

emuObj.AddVsyncHook(widescreen)