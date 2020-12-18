apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Metal Gear 3 Snake Eater * SLES-82013 * PAL-E
--comment=PAL-ESP Panoramico por Esppiral --)
eeObj.WriteMem32(0x00203FAC,0x3F400000)
end

emuObj.AddVsyncHook(widescreen)