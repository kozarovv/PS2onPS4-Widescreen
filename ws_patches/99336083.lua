apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kidou Senshi Gundam Ver. 1.5 (Gundam the Best) (J)(SLPS-25061)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Search Values
--2044033c 00108344 28a68070 (X-Fov)
--a043023c 00008244 466d0046 (Render fix)

--Title
eeObj.WriteMem32(0x00013400,0x00100050)
eeObj.WriteMem32(0x00128c08,0x3c034455)

--Story 1
eeObj.WriteMem32(0x00021080,0x00100050)
eeObj.WriteMem32(0x0012aef8,0x3c034455)
eeObj.WriteMem32(0x001aed08,0x3c0243e0)

--Story 2
eeObj.WriteMem32(0x0002c880,0x00100050)
eeObj.WriteMem32(0x0012b018,0x3c034439)
eeObj.WriteMem32(0x001b04a8,0x3c0243e0)

--Story 3
eeObj.WriteMem32(0x0002de00,0x00100050)
eeObj.WriteMem32(0x012b018,0x3c034455)
eeObj.WriteMem32(0x001b02e8,0x3c0243e0)

--Story 4
eeObj.WriteMem32(0x00025600,0x00100050)
eeObj.WriteMem32(0x0012b018,0x3c034455)
eeObj.WriteMem32(0x001b0058,0x3c0243e0)

--Story 5
eeObj.WriteMem32(0x00022d80,0x00100050)
eeObj.WriteMem32(0x0012b018,0x3c034455)
eeObj.WriteMem32(0x001af028,0x3c0243e0)

--Story 6
eeObj.WriteMem32(0x0002d200,0x00100050)
eeObj.WriteMem32(0x0012b018,0x3c034455)
eeObj.WriteMem32(0x001b00b8,0x3c0243e0)

--Story 7
eeObj.WriteMem32(0x00029f80,0x00100050)
eeObj.WriteMem32(0x0012b018,0x3c034455)
eeObj.WriteMem32(0x001b0608,0x3c0243e0)

--Story 8
eeObj.WriteMem32(0x00025d80,0x00100050)
eeObj.WriteMem32(0x0012b018,0x3c034455)
eeObj.WriteMem32(0x001b04b8,0x3c0243e0)

--Story 9
eeObj.WriteMem32(0x0002b680,0x00100050)
eeObj.WriteMem32(0x0012aef8,0x3c034455)
eeObj.WriteMem32(0x001b0548,0x3c0243e0)
end

emuObj.AddVsyncHook(widescreen)