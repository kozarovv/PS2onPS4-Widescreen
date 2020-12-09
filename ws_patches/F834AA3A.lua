apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=America's 10 Most Wanted (E)(SLES-52367)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov #1
--00000000 00000000 43ad1346 00000000
eeObj.WriteMem32(0x00233e04,0x3c013f40)
eeObj.WriteMem32(0x00233e08,0x44810000)
eeObj.WriteMem32(0x00233e10,0x4600c602)

--X-Fov #2
--46a30046 c6c30046
eeObj.WriteMem32(0x001cfb7c,0x08092924)
eeObj.WriteMem32(0x0024a490,0x4600a346)
eeObj.WriteMem32(0x0024a494,0x3c013f40)
eeObj.WriteMem32(0x0024a498,0x4481f000)
eeObj.WriteMem32(0x0024a49c,0x461e6b42)
eeObj.WriteMem32(0x0024a4a0,0x08073ee0)

--#1 Render fix
--003f013c 00108144 300a6324 (1st)
eeObj.WriteMem32(0x0020ae84,0x3c013f2b)


end

emuObj.AddVsyncHook(widescreen)