apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen pnach (Only works for 3D, not for prerendered backgrounds)

eeObj.WriteMem32(0x004278e4,0x3FC6D3A0)
eeObj.WriteMem32(0x00427c94,0x3FC6D3A0)

--black borders's fix (optional)
eeObj.WriteMem32(0x00116928,0x24040000)
eeObj.WriteMem32(0x00106be0,0xa380a213)
eeObj.WriteMem32(0x001069c4,0x2404FF00)
end

emuObj.AddVsyncHook(widescreen)