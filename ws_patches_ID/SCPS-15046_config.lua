apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Hungry Ghosts (J)(SCPS-15046)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--eeObj.WriteMem32(0x001482fc,0x3c0b3f40)

--Zoom
--eeObj.WriteMem32(0x003da3d8,0x40000000)
--eeObj.WriteMem32(0x0012bb7c,0x3c024300)
--eeObj.WriteMem32(0x0012bbb8,0x3c034370)

--Zoom
eeObj.WriteMem32(0x0012bb74,0x3c043fC0)
eeObj.WriteMem32(0x0012bc0c,0x3c0343ba)

--Y-Fov
eeObj.WriteMem32(0x00148300,0x3c0a3f2a)

--Render Fix (Event)
eeObj.WriteMem32(0x0013b5f0,0x3c033fc0)
--eeObj.WriteMem32(0x0014cdb8,0x3c0240e0)
eeObj.WriteMem32(0x0013b608,0x3c03bfc0)

--Font Y-Fov
eeObj.WriteMem32(0x0014b050,0x3c023fc0)

--Font Zoom
eeObj.WriteMem32(0x00182804,0x3c024190)
eeObj.WriteMem32(0x001827d0,0x3c024190)

--Sprit bar
--eeObj.WriteMem32(0x00180e00,0x3c024340)
--eeObj.WriteMem32(0x00180dec,0x3c024240)

--Spirit Fire
eeObj.WriteMem32(0x00180474,0x3c054308)
--eeObj.WriteMem32(0x00180468,0x3c02437b)

--Spirit Slot
eeObj.WriteMem32(0x0018035c,0x3c08430d)

--Vitality bar
--eeObj.WriteMem32(0x00180ba4,0x3c044340)
--eeObj.WriteMem32(0x00180b98,0x3c0643fc)

--Vitality
eeObj.WriteMem32(0x0018005c,0x3c074308)

--Action Select Bar
eeObj.WriteMem32(0x00182258,0x3c024040)
eeObj.WriteMem32(0x00182268,0x3c0243e7)
eeObj.WriteMem32(0x00178b94,0x3c024180)

--Action Explanation
eeObj.WriteMem32(0x0014af7c,0x3c024190)
eeObj.WriteMem32(0x001680d4,0x3c024170)

--Action Select Zoom
--eeObj.WriteMem32(0x00181a20,0x3c024420)
--eeObj.WriteMem32(0x00181b84,0x3c024420)
--eeObj.WriteMem32(0x00182268,0x3c024410)

--eeObj.WriteMem32(0x0018203c,0x3c0342f0)
--eeObj.WriteMem32(0x00182040,0x3c023f00)

--Action Select Bar X-Fov
--eeObj.WriteMem32(0x00181ff0,0x3c024030)

--eeObj.WriteMem32(0x00181fc4,0x3c034100)
--eeObj.WriteMem32(0x00182120,0x3c023f00)
--eeObj.WriteMem32(0x00182158,0x3c0242f0)

--eeObj.WriteMem32(0x001820f8,0x3c0243f0)












--eeObj.WriteMem32(0x00182100,0x3c023f00)
end

emuObj.AddVsyncHook(widescreen)