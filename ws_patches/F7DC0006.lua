apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Amplitude (PAL-Unk) [SCES-51706] [F7DC0006]
--comment=Widescreen hacks by Aced14 (MIPS code injection/FMV experiment) and 2007excalibur2007 (initial live memory discovery)

--16:9 Widescreen
eeObj.WriteMem32(0x00FF0000,0x001001E0)
eeObj.WriteMem32(0x0022A858,0x080A4B62)
eeObj.WriteMem32(0x00292D88,0x3C013F40)
eeObj.WriteMem32(0x00292D8C,0x4481F800)
eeObj.WriteMem32(0x00292D90,0x461F07C2)
eeObj.WriteMem32(0x00292D94,0x0808AA18)
eeObj.WriteMem32(0x00292D98,0xE61F0160)

--eeObj.WriteMem32(0x001B7B3C,0x00000355)
end

emuObj.AddVsyncHook(widescreen)