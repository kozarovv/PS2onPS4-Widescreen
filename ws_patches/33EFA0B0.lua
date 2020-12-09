apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment= Widescreen Hack by sergx12 (NTSC-K by Arapapa)

--gameplay by sergx12 (c80216e6 803f033c cc0217e6)
eeObj.WriteMem32(0x00177940,0x3c033f40)
end

emuObj.AddVsyncHook(widescreen)