apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by pelvicthrustman

--Widescreen
eeObj.WriteMem32(0x001AC1FC,0x3C013EC0)
eeObj.WriteMem32(0x001AC200,0x4481F800)
eeObj.WriteMem32(0x001AC298,0x461F0002)

--Render Fix
eeObj.WriteMem32(0x001abb20,0x10000004)
eeObj.WriteMem32(0x001c3ef4,0x3c013f40)
eeObj.WriteMem32(0x001c3f14,0x4481f800)
eeObj.WriteMem32(0x001c3f40,0x461f0842)
eeObj.WriteMem32(0x001c3f44,0x46011034)

--FMV Fix
eeObj.WriteMem32(0x001dbde8,0x24027100)
eeObj.WriteMem32(0x001dbdf8,0x24021e00)

--Font Fix
eeObj.WriteMem32(0x001c4b58,0x3C013f40)
eeObj.WriteMem32(0x001c4b5c,0x4481f800)
eeObj.WriteMem32(0x001c4b60,0x10000001)
eeObj.WriteMem32(0x001c4b68,0x0000102d)
eeObj.WriteMem32(0x001c4b6c,0x06210009)
eeObj.WriteMem32(0x001c4b70,0x2e620180)
eeObj.WriteMem32(0x001c4b74,0x0c071518)
eeObj.WriteMem32(0x001c4b78,0x0240202d)
eeObj.WriteMem32(0x001c4b7c,0x000210C3)
eeObj.WriteMem32(0x001c4b80,0x0042402d)
eeObj.WriteMem32(0x001c4b88,0x0102102d)
eeObj.WriteMem32(0x001c4bcc,0x3c02002d)
eeObj.WriteMem32(0x001c4bd0,0x9442b268)
eeObj.WriteMem32(0x001c4bd4,0xa6020024)
eeObj.WriteMem32(0x001c4bd8,0x3c020028)
eeObj.WriteMem32(0x001c4bdc,0xc440aafc)
eeObj.WriteMem32(0x001c4be0,0xe600000c)
eeObj.WriteMem32(0x001c4be4,0xc440aae4)
eeObj.WriteMem32(0x001c4be8,0x461f0002)
eeObj.WriteMem32(0x001c4bfc,0xc440aaec)
eeObj.WriteMem32(0x001c4c00,0x461f0002)
end

emuObj.AddVsyncHook(widescreen)