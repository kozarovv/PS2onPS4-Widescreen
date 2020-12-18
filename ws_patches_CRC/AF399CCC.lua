apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Metal Arms - Glitch in the System (E)(SLES-51758)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--803f013c 00508144 c2190646
eeObj.WriteMem32(0x003dd134,0x3c013f40)

--Y-Fov
--82390746 6400a7e7 
eeObj.WriteMem32(0x003dd1e0,0x08109d74)

eeObj.WriteMem32(0x004275d0,0x46073982)
eeObj.WriteMem32(0x004275d4,0x3c013f10)
eeObj.WriteMem32(0x004275d8,0x4481f000)
eeObj.WriteMem32(0x004275dc,0x461e3182)
eeObj.WriteMem32(0x004275e0,0x080f7479)
end

emuObj.AddVsyncHook(widescreen)