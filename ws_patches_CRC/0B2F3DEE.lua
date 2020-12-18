apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9 

--Y-Fov
eeObj.WriteMem32(0x00546004,0x3F9F4877)

--Zoom
--eeObj.WriteMem32(0x00543a30,0x3fa80000)
eeObj.WriteMem32(0x00542958,0x3fd50000)


--Black Bar Fix (Event Scene Top and Bottom) -- TLB miss
--eeObj.WriteMem32(0x01bb5d04,0x00000000)
--eeObj.WriteMem32(0x01bb5d7c,0x00000000)


----------------------------------------------------------------------------
--Zoom
--eeObj.WriteMem32(0x00472820,0x3c013f69)
--eeObj.WriteMem32(0x0045a9c8,0x3c01bf40)
--eeObj.WriteMem32(0x004cb61c,0x3f820000)
end

emuObj.AddVsyncHook(widescreen)