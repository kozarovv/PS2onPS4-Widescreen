apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Haunting Ground (SLUS-21075)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000 )
eeObj.WriteMem32(0x0010e31c,0x3c013f40)
eeObj.WriteMem32(0x0010e320,0x44810000)
eeObj.WriteMem32(0x0010e328,0x4600c602)

--cutscenes fix
eeObj.WriteMem32(0x002ba3ec,0x34a98c00)
eeObj.WriteMem32(0x002ba3d4,0x34a67400)

--black borders fix
eeObj.WriteMem32(0x002c9ea8,0x00000000)
eeObj.WriteMem32(0x002c9eac,0x03e00008)
eeObj.WriteMem32(0x002c9eb0,0x00000000)

--dynamic zoom
--eeObj.WriteMem32(0x0045FD40,0x3F800000)

--zoom out
--eeObj.WriteMem32(0x0010e340,0x3c013fff)

--zoom in
--eeObj.WriteMem32(0x0010e340,0x3c013f60)
end

emuObj.AddVsyncHook(widescreen)