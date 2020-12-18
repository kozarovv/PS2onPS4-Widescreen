apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ultimate Spider-Man (U)(SLUS-20870) and (E)(SLES-53391) -- Ultimate Spider-Man [Limited Edition] (U)(SLUS-21285) 
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9


--X-Fov
--7400033c 3c10e14b
eeObj.WriteMem32(0x0058b210,0x08030000)

eeObj.WriteMem32(0x000c0000,0x3c030074)
eeObj.WriteMem32(0x000c0004,0x3c013faa)
eeObj.WriteMem32(0x000c0008,0x3421aaab)
eeObj.WriteMem32(0x000c000c,0x4481f000)
eeObj.WriteMem32(0x000c0010,0x461e18c2)
eeObj.WriteMem32(0x000c0014,0x08162c85)
end

emuObj.AddVsyncHook(widescreen)