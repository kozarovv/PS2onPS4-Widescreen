apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Metal Arms - Glitch in the System (U)(SLUS-20786)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--803f013c 00508144 c2190646
eeObj.WriteMem32(0x003dca84,0x3c013f40)

--Y-Fov
--82390746 6400a7e7 
eeObj.WriteMem32(0x003dcb30,0x08113d44)

eeObj.WriteMem32(0x0044f510,0x46073982)
eeObj.WriteMem32(0x0044f514,0x3c013f10)
eeObj.WriteMem32(0x0044f518,0x4481f000)
eeObj.WriteMem32(0x0044f51c,0x461e3182)
eeObj.WriteMem32(0x0044f520,0x080f72cd)

----------------------------------------------/
--Zoom
--eeObj.WriteMem32(0x00373f08,0x08113d44)
--eeObj.WriteMem32(0x0044f510,0x3c013fab)
--eeObj.WriteMem32(0x0044f514,0x4481f000)
--eeObj.WriteMem32(0x0044f518,0x461ea502)
--eeObj.WriteMem32(0x0044f51c,0xe6140000)
--eeObj.WriteMem32(0x0044f520,0x080dcfc3)
end

emuObj.AddVsyncHook(widescreen)