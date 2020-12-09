apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x001a3d4c,0x08052fd4)

eeObj.WriteMem32(0x0014bf50,0x46000803)
eeObj.WriteMem32(0x0014bf54,0x3c013f40)
eeObj.WriteMem32(0x0014bf58,0x4481f000)
eeObj.WriteMem32(0x0014bf5c,0x461e0002)
eeObj.WriteMem32(0x0014bf60,0x08068f54)


--Render fix
--68008bc4 0800a327
eeObj.WriteMem32(0x001a2690,0x08052fd9)

eeObj.WriteMem32(0x0014bf64,0xc48b0068)
eeObj.WriteMem32(0x0014bf68,0x3c013faa)
eeObj.WriteMem32(0x0014bf6c,0x3421aaab)
eeObj.WriteMem32(0x0014bf70,0x4481f000)
eeObj.WriteMem32(0x0014bf74,0x461e5ac2)
eeObj.WriteMem32(0x0014bf78,0x080689a5)
end

emuObj.AddVsyncHook(widescreen)