apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Lassie (E)(SLES-54669)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x0014f618,0x0809ca55)

eeObj.WriteMem32(0x00272954,0x3c013f40)
eeObj.WriteMem32(0x00272958,0x4481f000)
eeObj.WriteMem32(0x0027295c,0x461e4a42)
eeObj.WriteMem32(0x00272960,0xe6090000)
eeObj.WriteMem32(0x00272964,0x08053d87)

--Render fix
eeObj.WriteMem32(0x00129254,0x00000000)
end

emuObj.AddVsyncHook(widescreen)