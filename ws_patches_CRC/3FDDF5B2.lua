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
eeObj.WriteMem32(0x00010e00,0x00100050)
eeObj.WriteMem32(0x00127ff8,0x3c034455)

--Story 1
eeObj.WriteMem32(0x00028680,0x00100050)
eeObj.WriteMem32(0x0012a2a8,0x3c034455)
eeObj.WriteMem32(0x001a9698,0x3c0243e0)

--Story 2
eeObj.WriteMem32(0x00021980,0x00100050)
eeObj.WriteMem32(0x0012a3c8,0x3c034439)
eeObj.WriteMem32(0x001aadd8,0x3c0243e0)

--Story 3
eeObj.WriteMem32(0x00027280,0x00100050)
eeObj.WriteMem32(0x0012a3c8,0x3c034455)
eeObj.WriteMem32(0x001aac38,0x3c0243e0)

--Story 4
eeObj.WriteMem32(0x0002ab00,0x00100050)
eeObj.WriteMem32(0x0012a3c8,0x3c034455)
eeObj.WriteMem32(0x001aa9a8,0x3c0243e0)

--Story 5
eeObj.WriteMem32(0x00027f80,0x00100050)
eeObj.WriteMem32(0x0012a3c8,0x3c034455)
eeObj.WriteMem32(0x001a99b8,0x3c0243e0)

--Story 6
eeObj.WriteMem32(0x00022200,0x00100050)
eeObj.WriteMem32(0x0012a3c8,0x3c034455)
eeObj.WriteMem32(0x001aa9d8,0x3c0243e0)

--Story 7
eeObj.WriteMem32(0x00026280,0x00100050)
eeObj.WriteMem32(0x0012a3c8,0x3c034455)
eeObj.WriteMem32(0x001aaf28,0x3c0243e0)

--Story 8
eeObj.WriteMem32(0x00025d80,0x00100050)
eeObj.WriteMem32(0x0012a3c8,0x3c034455)
eeObj.WriteMem32(0x001aae38,0x3c0243e0)

--Story 9
eeObj.WriteMem32(0x00022000,0x00100050)
eeObj.WriteMem32(0x0012a2a8,0x3c034455)
eeObj.WriteMem32(0x001aaed8,0x3c0243e0)
end

emuObj.AddVsyncHook(widescreen)