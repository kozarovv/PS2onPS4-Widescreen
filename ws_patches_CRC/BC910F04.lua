apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Island Xtreme Stunts (U)(SLUS-20575)
--comment=Widescreen hack by by Arapapa

--Widescreen hack 16:9

eeObj.WriteMem32(0x0021eec4,0x3c013f40)
eeObj.WriteMem32(0x0021eec8,0x44810000)
eeObj.WriteMem32(0x0021eed0,0x4600c602)

--Render Fix
--803f013c 00088144 01b91646
eeObj.WriteMem32(0x00220f40,0x3c013fab)
end

emuObj.AddVsyncHook(widescreen)