apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47 (pnach NTSC-K by Arapapa)

--16:9
 
--3333b33f 0000803f 
eeObj.WriteMem32(0x001D5C74,0x3FEEEEEE)

--0000b443 00000000 00000000 00000000
eeObj.WriteMem32(0x002557A0,0x43870000)
end

emuObj.AddVsyncHook(widescreen)