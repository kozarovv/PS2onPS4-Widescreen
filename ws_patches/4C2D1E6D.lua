apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by No.47

--built-in ws switches
eeObj.WriteMem32(0x0028E990,0x00000001)
eeObj.WriteMem32(0x003965CC,0x00000001)

--vert Fov
eeObj.WriteMem32(0x0024DA74,0x3FE38E38)
eeObj.WriteMem32(0x0024DAF4,0x3FE38E38)
eeObj.WriteMem32(0x0024DB14,0x3FE38E38)

--both FOV - ingame
eeObj.WriteMem32(0x00282E80,0x43340000)

--both FOV & position - menu 3d elements
--ships & player heads
eeObj.WriteMem32(0x00282A9C,0x41DBBBBC)
eeObj.WriteMem32(0x00AAAA7C,0x43055555)
eeObj.WriteMem32(0x00AAAADC,0x43055555)
eeObj.WriteMem32(0x00AACF3C,0x43055555)
eeObj.WriteMem32(0x00AACF9C,0x43055555)
--challenge menu, page 1 (six symbols)
eeObj.WriteMem32(0x0024705C,0xC1900000)
eeObj.WriteMem32(0x00247060,0x43700000)
eeObj.WriteMem32(0x0024706C,0xC1900000)
eeObj.WriteMem32(0x00247070,0x43700000)
eeObj.WriteMem32(0x0024707C,0xC1900000)
eeObj.WriteMem32(0x00247080,0x43700000)
eeObj.WriteMem32(0x0024708C,0xC1900000)
eeObj.WriteMem32(0x00247090,0x43700000)
eeObj.WriteMem32(0x0024709C,0xC1900000)
eeObj.WriteMem32(0x002470A0,0x43700000)
eeObj.WriteMem32(0x002470AC,0xC1900000)
eeObj.WriteMem32(0x002470B0,0x43700000)
--challenge menu, page 2 (symbol at the top & three medals)
eeObj.WriteMem32(0x002470DC,0xC2700000)
eeObj.WriteMem32(0x002470E0,0x42F00000)
eeObj.WriteMem32(0x002470F4,0x42960000)
eeObj.WriteMem32(0x002470F8,0x42F00000)
eeObj.WriteMem32(0x0024710C,0x42960000)
eeObj.WriteMem32(0x00247110,0x42F00000)
eeObj.WriteMem32(0x00247124,0x42960000)
eeObj.WriteMem32(0x00247128,0x42F00000)

--improved chase-cam (camera shows whole ship & camera angle like in the other WipeOut games)
--camera settings for all 8 vehicles (each with 2 drivers)
--6 lines for each vehicle: camera height, distance and angle for the faster driver, followed by camera height, distance and angle for the normal driver
--ship 1 & zone ship
eeObj.WriteMem32(0x0034C33C,0x400CCCCD)
eeObj.WriteMem32(0x0034C340,0xC1500000)
eeObj.WriteMem32(0x0034C34C,0x40A00000)
eeObj.WriteMem32(0x0034CA0C,0x400CCCCD)
eeObj.WriteMem32(0x0034CA10,0xC1500000)
eeObj.WriteMem32(0x0034CA1C,0x40A00000)
--ship 2
eeObj.WriteMem32(0x0034D0DC,0x400CCCCD)
eeObj.WriteMem32(0x0034D0E0,0xC1500000)
eeObj.WriteMem32(0x0034D0EC,0x40A00000)
eeObj.WriteMem32(0x0034D7AC,0x400CCCCD)
eeObj.WriteMem32(0x0034D7B0,0xC1500000)
eeObj.WriteMem32(0x0034D7BC,0x40A00000)
--ship 3
eeObj.WriteMem32(0x0034DE7C,0x400CCCCD)
eeObj.WriteMem32(0x0034DE80,0xC1500000)
eeObj.WriteMem32(0x0034DE8C,0x40A00000)
eeObj.WriteMem32(0x0034E54C,0x400CCCCD)
eeObj.WriteMem32(0x0034E550,0xC1500000)
eeObj.WriteMem32(0x0034E55C,0x40A00000)
--ship 4
eeObj.WriteMem32(0x0034EC1C,0x400CCCCD)
eeObj.WriteMem32(0x0034EC20,0xC1500000)
eeObj.WriteMem32(0x0034EC2C,0x40A00000)
eeObj.WriteMem32(0x0034F2EC,0x400CCCCD)
eeObj.WriteMem32(0x0034F2F0,0xC1500000)
eeObj.WriteMem32(0x0034F2FC,0x40A00000)
--ship 5
eeObj.WriteMem32(0x0034F9BC,0x400CCCCD)
eeObj.WriteMem32(0x0034F9C0,0xC1500000)
eeObj.WriteMem32(0x0034F9CC,0x40A00000)
eeObj.WriteMem32(0x0035008C,0x400CCCCD)
eeObj.WriteMem32(0x00350090,0xC1500000)
eeObj.WriteMem32(0x0035009C,0x40A00000)
--ship 6
eeObj.WriteMem32(0x0035075C,0x400CCCCD)
eeObj.WriteMem32(0x00350760,0xC1500000)
eeObj.WriteMem32(0x0035076C,0x40A00000)
eeObj.WriteMem32(0x00350E2C,0x400CCCCD)
eeObj.WriteMem32(0x00350E30,0xC1500000)
eeObj.WriteMem32(0x00350E3C,0x40A00000)
--ship 7
eeObj.WriteMem32(0x003514FC,0x400CCCCD)
eeObj.WriteMem32(0x00351500,0xC1500000)
eeObj.WriteMem32(0x0035150C,0x40A00000)
eeObj.WriteMem32(0x00351BCC,0x400CCCCD)
eeObj.WriteMem32(0x00351BD0,0xC1500000)
eeObj.WriteMem32(0x00351BDC,0x40A00000)
--ship 8
eeObj.WriteMem32(0x0035229C,0x400CCCCD)
eeObj.WriteMem32(0x003522A0,0xC1500000)
eeObj.WriteMem32(0x003522AC,0x40A00000)
eeObj.WriteMem32(0x0035296C,0x400CCCCD)
eeObj.WriteMem32(0x00352970,0xC1500000)
eeObj.WriteMem32(0x0035297C,0x40A00000)

--Notes-->

--camera buffer
--202DBE94 --camera height
--202DBE98 --camera distance
--202DC088 --camera angle

--vert FOV buffer
--203D2DB8 --single player & splitscreen left/top
--203D2FB8 --splitscreen right/bottom
end

emuObj.AddVsyncHook(widescreen)