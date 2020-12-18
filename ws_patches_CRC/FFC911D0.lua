apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Capcom vs SNK 2: Mark of the Millennium 2001 [PAL] (SLES_505.41)
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9
eeObj.WriteMem32(0x00142E50,0x3C023FAA)
eeObj.WriteMem32(0x001430C4,0x3C023FAA)
eeObj.WriteMem32(0x00124FA0,0xAC83003C)
eeObj.WriteMem32(0x00124FA4,0x3C033F40)
eeObj.WriteMem32(0x00124FA8,0x03E00008)
eeObj.WriteMem32(0x00124FAC,0xAC830000)
eeObj.WriteMem32(0x0012489C,0x3C023FE3)
end

emuObj.AddVsyncHook(widescreen)