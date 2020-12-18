apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

--gameplay
eeObj.WriteMem32(0x001048e4,0x3c013f40)
eeObj.WriteMem32(0x001048e8,0x44810000)
eeObj.WriteMem32(0x001048F0,0x4600c602)

--sprite fix
eeObj.WriteMem32(0x00150e20,0x3c033f40)
eeObj.WriteMem32(0x00150e34,0x3c033f80)
eeObj.WriteMem32(0x00150e38,0xac830010)
eeObj.WriteMem32(0x00150e3c,0xac800014)
eeObj.WriteMem32(0x00150e40,0xac800018)
eeObj.WriteMem32(0x00150e44,0xac80001c)
eeObj.WriteMem32(0x00150e48,0x03e00008)
eeObj.WriteMem32(0x00150e4c,0xac830020)

--text width
eeObj.WriteMem32(0x0012FAA4,0x3C023F40)

--text box fix
eeObj.WriteMem32(0x0020B584,0x252AFFE5)
eeObj.WriteMem32(0x0020B54C,0x2444FFDd)
eeObj.WriteMem32(0x0020b8e8,0x24840036)
eeObj.WriteMem32(0x0020B424,0x24090042)
eeObj.WriteMem32(0x0020B3E0,0x26860040)
eeObj.WriteMem32(0x0020b564,0x27c7fff8)


--portraits fix
eeObj.WriteMem32(0x001A887C,0x24050135)
eeObj.WriteMem32(0x001a8884,0x24080018)
eeObj.WriteMem32(0x001A8858,0x2409001c)
eeObj.WriteMem32(0x001a8928,0x24080018)
eeObj.WriteMem32(0x001a8994,0x2409001c)
eeObj.WriteMem32(0x001A89B4,0x26650005)
eeObj.WriteMem32(0x001a89bc,0x24080018)

eeObj.WriteMem32(0x001d98d4,0x24080018)

eeObj.WriteMem32(0x001DA9F4,0x26E5000B)
eeObj.WriteMem32(0x001DA9F8,0x26A60019)
eeObj.WriteMem32(0x001daa04,0x2408003a)
eeObj.WriteMem32(0x001daa08,0x24090024)

eeObj.WriteMem32(0x001dbf68,0x24080040)
eeObj.WriteMem32(0x001dc2bc,0x24080040)
eeObj.WriteMem32(0x002a72e8,0x24080034)
eeObj.WriteMem32(0x002b05dc,0x24080020)
end

emuObj.AddVsyncHook(widescreen)