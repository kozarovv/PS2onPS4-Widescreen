apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Maximo vs Army of Zin (SLUS_20722)
--comment=Widescreen hack by No.47

eeObj.WriteMem32(0x002C43D0,0x3FE58BF0)
eeObj.WriteMem32(0x002CFB54,0x3FEEEEEE)
eeObj.WriteMem32(0x00301750,0x3f400000)

--corresponding ELF addresses - the memory addresses are used instead, because for some reason the ELF render fix works on PCSX2 only if the game is reloaded at least once and does not work on a PS2

--eeObj.WriteMem32(0x00189040,0x3c033fe5)
--eeObj.WriteMem32(0x00189048,0x34638bf0)
--eeObj.WriteMem32(0x0019c3c8,0x3c023fee)
--eeObj.WriteMem32(0x0019c3d0,0x3446eeee)

-- 21:9
--eeObj.WriteMem32(0x002C43D0,0x401907F6)
--eeObj.WriteMem32(0x002CFB54,0x401F5C29)
--eeObj.WriteMem32(0x00301750,0x3f100000)
end

emuObj.AddVsyncHook(widescreen)