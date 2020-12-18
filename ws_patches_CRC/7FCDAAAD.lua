apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
eeObj.WriteMem32(0x001043fc,0x3c013f40)
eeObj.WriteMem32(0x00104400,0x44810000)
eeObj.WriteMem32(0x00104408,0x4600c602)

--Render fix
eeObj.WriteMem32(0x00125d3c,0x3c053fab)


end

emuObj.AddVsyncHook(widescreen)