apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00561800,0x3F366666)

--Render Fix
eeObj.WriteMem32(0x00561814,0x42a00000)

--3333733f cdcc0c3f 138788c4 6acfcc49 cdcccc3d cdcc4c42
--6666363f cdcc0c3f 138788c4 6acfcc49 cdcccc3d 0000a042
end

emuObj.AddVsyncHook(widescreen)