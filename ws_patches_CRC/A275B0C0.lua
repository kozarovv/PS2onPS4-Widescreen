apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Curious George (U)(SLUS-21354)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--000009e6 280000e6 380001e6
eeObj.WriteMem32(0x002255a8,0x0809ef94)
eeObj.WriteMem32(0x0027be50,0x3c013f40)
eeObj.WriteMem32(0x0027be54,0x4481f000)
eeObj.WriteMem32(0x0027be58,0x461e4a42)
eeObj.WriteMem32(0x0027be5c,0xe6090000)
eeObj.WriteMem32(0x0027be60,0x0808956b)

end

emuObj.AddVsyncHook(widescreen)