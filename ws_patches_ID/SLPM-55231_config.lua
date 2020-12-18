apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Silent Hill - Shattered Memories (J)(SLPM-55231)
--comment=Widescreen hack by nemesis2000 (NTSC-J by Arapapa)

--widescreen fix
eeObj.WriteMem32(0x002c4a0c,0x3c013faa)
eeObj.WriteMem32(0x002c4a10,0x3421aaaa)
eeObj.WriteMem32(0x002c4a1c,0x46036302)
eeObj.WriteMem32(0x002c4a20,0x460318c2)
eeObj.WriteMem32(0x002c4a24,0xe7ac0000)
eeObj.WriteMem32(0x002c4a28,0x1480000f)
eeObj.WriteMem32(0x002c4a2c,0xafa00004)
eeObj.WriteMem32(0x002c4a30,0x3c013faa)
eeObj.WriteMem32(0x002c4a34,0x3421aaa8)
eeObj.WriteMem32(0x002c4a38,0x44810800)
eeObj.WriteMem32(0x002c4a3c,0x3c013eaa)
eeObj.WriteMem32(0x002c4a40,0x3421aaab)
eeObj.WriteMem32(0x002c4a44,0x44810000)

--fastboot widescreen
--03004230 1000bfdf
eeObj.WriteMem32(0x003895c8,0x24020002)

--noise off
eeObj.WriteMem32(0x002b67ec,0x24040000)
eeObj.WriteMem32(0x002b67f0,0x03e00008)
eeObj.WriteMem32(0x002b67f4,0xac44b0c0)
end

emuObj.AddVsyncHook(widescreen)