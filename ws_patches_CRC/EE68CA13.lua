apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Maximo - Ghosts to Glory (J) (PBPX_95201)
--comment=Widescreen hack by No.47 (pnach NTSC-J by Arapapa)

--16:9
 
--3333b33f 0000803f 
eeObj.WriteMem32(0x001F3294,0x3FEEEEEE)

--0000b443 00000000 00000000 00000000
eeObj.WriteMem32(0x0027A520,0x43870000)
end

emuObj.AddVsyncHook(widescreen)