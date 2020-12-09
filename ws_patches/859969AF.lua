apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47 (pnach NTSC-J by Arapapa)

--16:9

--f628ac3f... It's not a Fixed Address. 
--Use hyakki's "WideScreenHelper"
--Step 1  "Find" -> "3fac28f6"
--Step 2  "Replace" -> "3fe58bf0"
--Step 3  "Range" -> "3xxx"

--3333b33f 0000803f 
eeObj.WriteMem32(0x002E2254,0x3FEEEEEE)
end

emuObj.AddVsyncHook(widescreen)