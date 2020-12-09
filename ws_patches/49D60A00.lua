apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x00479c48,0x08148864)

eeObj.WriteMem32(0x00522190,0x3c013f40)
eeObj.WriteMem32(0x00522194,0x4481f000)
eeObj.WriteMem32(0x00522198,0xc6010068)
eeObj.WriteMem32(0x0052219c,0xc602006c)
eeObj.WriteMem32(0x005221a0,0x461e0843)
eeObj.WriteMem32(0x005221a4,0xe6010068)
eeObj.WriteMem32(0x005221a8,0x0811e714)

------------------------------------------------
--Zoom
--80bf033c 240042c4
--eeObj.WriteMem32(0x002c0904,0x3c03bfb2)

--Y-Fov
--eeObj.WriteMem32(0x002c4970,0x3c033fe3)
--eeObj.WriteMem32(0x002c4978,0x34638e2a)
end

emuObj.AddVsyncHook(widescreen)