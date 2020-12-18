apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Maximo vs Army of Zin (K) (SLKA-25072)
--comment=Widescreen hack by No.47 (pnach NTSC-K by Arapapa)

--16:9
--f628ac3f 00007042
eeObj.WriteMem32(0x002C38DC,0x3FE58BF0)

--3333b33f 0000803f 
eeObj.WriteMem32(0x002CF054,0x3FEEEEEE)
end

emuObj.AddVsyncHook(widescreen)