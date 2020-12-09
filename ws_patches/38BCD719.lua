apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9


--X-Fov 
--4c3f033c cdcc6334
eeObj.WriteMem32(0x0018e5b4,0x3c033f19)
eeObj.WriteMem32(0x0018e5b8,0x34639994)

--Render fix
eeObj.WriteMem32(0x001939e8,0x3c023e00)

--Text
--eeObj.WriteMem32(0x0018f8cc,0x3c023f19)
--eeObj.WriteMem32(0x0018f914,0x3c023f19)


------------------------------------------------------/
--Zoom
--eeObj.WriteMem32(0x00193990,0x3c023fab)

--xxx
--eeObj.WriteMem32(0x0013f708,0x3c013f90)

--2D Right
--eeObj.WriteMem32(0x0013f6bc,0x3c013f40)
--eeObj.WriteMem32(0x00140a80,0x3c013f00)


--eeObj.WriteMem32(0x004be174,0x3f890fda)

--2D X-Fov (Right)
--eeObj.WriteMem32(0x0113A91C,0xc3c10000)
--eeObj.WriteMem32(0x0113A970,0xc3c10000)

--2D Characters 
--eeObj.WriteMem32(0x0018f6dc,0x3c023f19)
--eeObj.WriteMem32(0x0018f77c,0x3c023f19)


--2D Zoom
--eeObj.WriteMem32(0x001c8274,0x3c023fab)


--2D Right Upper <- Fov 
--eeObj.WriteMem32(0x0013dfd8,0x3c01bfc9)
end

emuObj.AddVsyncHook(widescreen)