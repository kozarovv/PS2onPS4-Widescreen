apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=X-Men 2 - Wolverine's Revenge (E)(SLES-51286)
--comment=Widescreen hack by Arapapa, ElHecht

--Widescreen hack 16:9

--Zoom
--cc43013c cdcc2134 (1st)
eeObj.WriteMem32(0x0017f874,0x3c014399)
eeObj.WriteMem32(0x0017f878,0x3421999a)

--Y-Fov
--8040013c 00088144 d035c224
eeObj.WriteMem32(0x0017f854,0x3c0140ab)

--Popup message fix
--3d3f013c a4702134 (1st)
eeObj.WriteMem32(0x0010d718,0x3c013f0e)
eeObj.WriteMem32(0x0010d71c,0x3421147b)

--Render fix
--803f013c 00188144 87100046
eeObj.WriteMem32(0x001a0640,0x3c013fee)

--0043013c 00088144 42000224
eeObj.WriteMem32(0x00169680,0x3c014200)
end

emuObj.AddVsyncHook(widescreen)