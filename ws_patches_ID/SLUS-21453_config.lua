apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Disney's Meet the Robinsons (U)(SLUS-21453)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x003a353c,0x3c013faa)
eeObj.WriteMem32(0x003a3540,0x3421aaab)
eeObj.WriteMem32(0x003a3564,0x4481f000)
eeObj.WriteMem32(0x003a3568,0x461e6b42)

--Render fix
eeObj.WriteMem32(0x002670d0,0x3c013f2b)
end

emuObj.AddVsyncHook(widescreen)