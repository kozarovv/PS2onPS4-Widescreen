apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Search Values
--2044033c 00108344 28a68070 (X-Fov)
--a043023c 00008244 466d0046 (Render fix)

--Title
eeObj.WriteMem32(0x00023f00,0x00100050)
eeObj.WriteMem32(0x00128c38,0x3c034455)
eeObj.WriteMem32(0x001ae388,0x3c0243e0)

--Story 1
eeObj.WriteMem32(0x0002f780,0x00100050)
eeObj.WriteMem32(0x0012aed8,0x3c034455)
eeObj.WriteMem32(0x001adbe8,0x3c0243e0)

--Story 2
eeObj.WriteMem32(0x0002af80,0x00100050)
eeObj.WriteMem32(0x0012aff8,0x3c034439)
eeObj.WriteMem32(0x001af358,0x3c0243e0)

--Story 3
eeObj.WriteMem32(0x0002c580,0x00100050)
eeObj.WriteMem32(0x0012aff8,0x3c034455)
eeObj.WriteMem32(0x001af1c8,0x3c0243e0)

--Story 4
eeObj.WriteMem32(0x00023d00,0x00100050)
eeObj.WriteMem32(0x0012aff8,0x3c034455)
eeObj.WriteMem32(0x001aef18,0x3c0243e0)

--Story 5
eeObj.WriteMem32(0x00021480,0x00100050)
eeObj.WriteMem32(0x0012aff8,0x3c034455)
eeObj.WriteMem32(0x001adf28,0x3c0243e0)

--Story 6
eeObj.WriteMem32(0x0002b880,0x00100050)
eeObj.WriteMem32(0x0012aff8,0x3c034455)
eeObj.WriteMem32(0x001aef68,0x3c0243e0)

--Story 7
eeObj.WriteMem32(0x00028600,0x00100050)
eeObj.WriteMem32(0x0012aff8,0x3c034455)
eeObj.WriteMem32(0x001af4a8,0x3c0243e0)

--Story 8
eeObj.WriteMem32(0x0002bc80,0x00100050)
eeObj.WriteMem32(0x0012aff8,0x3c034455)
eeObj.WriteMem32(0x001af398,0x3c0243e0)

--Story 9
eeObj.WriteMem32(0x00029f00,0x00100050)
eeObj.WriteMem32(0x0012aed8,0x3c034455)
eeObj.WriteMem32(0x001af4d8,0x3c0243e0)

----------------------------------------------------------------
--Extra 1
--eeObj.WriteMem32(0x0002a780,0x00100050)
--eeObj.WriteMem32(0x0012aed8,0x3c034455)
--eeObj.WriteMem32(0x001ae388,0x3c0243e0)

--Extra 2
--eeObj.WriteMem32(0x00024600,0x00100050)
--eeObj.WriteMem32(0x0012aed8,0x3c034455)
--eeObj.WriteMem32(0x001ae208,0x3c0243e0)

--Extra 3
--eeObj.WriteMem32(0x0002d900,0x00100050)
--eeObj.WriteMem32(0x0012aff8,0x3c034455)
--eeObj.WriteMem32(0x001ae618,0x3c0243e0)
end

emuObj.AddVsyncHook(widescreen)