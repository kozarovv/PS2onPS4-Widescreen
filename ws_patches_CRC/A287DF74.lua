apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Kingdom Hearts: Re:Chain of Memories (SLUS-21799)

--gameplay by asmodean
eeObj.WriteMem32(0x003328BC,0x3F19999A)
--eeObj.WriteMem32(0x003328C0,0x3F8CCCCD)

--FMV's fix by nemesis2000
--NOTE: Only looks fine on a PS2.
--On PCSX2, it only works in software mode, but the subtitles look glitched.
--If you are fine with the glitched subtitles, enable the "Switch to software rendering when an FMV plays" game fix.
--On PCSX2 in hardware mode, there is a duplicate screen glitch.

--only vertical stretch
--eeObj.WriteMem32(0x0019D054,0x24070204)

--alternate values
--eeObj.WriteMem32(0x0019D03C,0x240601C8)
--eeObj.WriteMem32(0x0019D054,0x240701C0)

--60 FPS
--eeObj.WriteMem32(0x004386B0,0x00000000)

--60 FPS Ladder Fix by Sirius902
--eeObj.WriteMem32(0x0021D6CC,0x3C013FC6)
--eeObj.WriteMem32(0x0021D71C,0x3C01BFC6)
--eeObj.WriteMem32(0x001E1870,0x087FFFD4)
--eeObj.WriteMem32(0x001E1874,0x00000000)
--eeObj.WriteMem32(0x01FFFF50,0x3C050033)
--eeObj.WriteMem32(0x01FFFF54,0x34A5C720)
--eeObj.WriteMem32(0x01FFFF58,0x8CA50000)
--eeObj.WriteMem32(0x01FFFF5C,0x24A502E8)
--eeObj.WriteMem32(0x01FFFF60,0x8CA50000)
--eeObj.WriteMem32(0x01FFFF64,0x38A50002)
--eeObj.WriteMem32(0x01FFFF68,0x10A00003)
--eeObj.WriteMem32(0x01FFFF6C,0x00000000)
--eeObj.WriteMem32(0x01FFFF70,0x0C078556)
--eeObj.WriteMem32(0x01FFFF74,0x0000282D)
--eeObj.WriteMem32(0x01FFFF78,0x0807861E)
end

emuObj.AddVsyncHook(widescreen)