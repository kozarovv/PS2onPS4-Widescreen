apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
1--gametitle=Disney High School Musical 3 - Senior Year Dance! (U)(SLUS-21819)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--02020746 50004324 (1st))
eeObj.WriteMem32(0x00255d84,0x080afe64)

eeObj.WriteMem32(0x002bf990,0x46070202)
eeObj.WriteMem32(0x002bf994,0x3c013f40)
eeObj.WriteMem32(0x002bf998,0x4481f000)
eeObj.WriteMem32(0x002bf99c,0x461e4202)
eeObj.WriteMem32(0x002bf9a0,0x08095762)

--Hud
--2b44013c 00402134
eeObj.WriteMem32(0x00204d88,0x3c014464)
eeObj.WriteMem32(0x00204d8c,0x34215555)

--Render fix
--803f013c 00388144 42080246
eeObj.WriteMem32(0x001d0b88,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)