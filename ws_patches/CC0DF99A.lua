apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Seigi-no Migata (J) (PBPX_95201)
--comment=Widescreen hack by Arapapa

-- 16:9 (search 00000000 00000000 43ad1346 00000000)
eeObj.WriteMem32(0x0020a7a4,0x3c013f40)
eeObj.WriteMem32(0x0020a7a8,0x44810000)
eeObj.WriteMem32(0x0020a7b0,0x4600c602)
end

emuObj.AddVsyncHook(widescreen)