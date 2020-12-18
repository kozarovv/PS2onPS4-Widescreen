apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen correction by nemesis2000 (pnach by Little Giant)

--gameplay by asmodean
eeObj.WriteMem32(0x00332fbc,0x3F19999A)
--eeObj.WriteMem32(0x003328C0,0x3F8CCCCD)

--FMV's fix by nemesis2000

--only vertical stretch
eeObj.WriteMem32(0x0019d0e4,0x24070204)

--alternate values
--eeObj.WriteMem32(0x0019d0cc,0x240601C8)
--eeObj.WriteMem32(0x0019d0e4,0x240701C0)

--60 FPS
--eeObj.WriteMem32(0x0043C930,0x00000000)

--60 FPS Ladder Fix by Sirius902
--eeObj.WriteMem32(0x0021D7AC,0x3C013FC6)
--eeObj.WriteMem32(0x0021D7FC,0x3C01BFC6)
--eeObj.WriteMem32(0x001E1950,0x087FFFD4)
--eeObj.WriteMem32(0x001E1954,0x00000000)
--eeObj.WriteMem32(0x01FFFF50,0x3C050033)
--eeObj.WriteMem32(0x01FFFF54,0x34A5CE20)
--eeObj.WriteMem32(0x01FFFF58,0x8CA50000)
--eeObj.WriteMem32(0x01FFFF5C,0x24A502E8)
--eeObj.WriteMem32(0x01FFFF60,0x8CA50000)
--eeObj.WriteMem32(0x01FFFF64,0x38A50002)
--eeObj.WriteMem32(0x01FFFF68,0x10A00003)
--eeObj.WriteMem32(0x01FFFF6C,0x00000000)
--eeObj.WriteMem32(0x01FFFF70,0x0C07858E)
--eeObj.WriteMem32(0x01FFFF74,0x0000282D)
--eeObj.WriteMem32(0x01FFFF78,0x08078656)
end

emuObj.AddVsyncHook(widescreen)