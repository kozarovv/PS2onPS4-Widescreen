apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Worms 4 - Mayhem (E)(SLES-53096)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--00000000 c3180b46 a40080ac 00000000 00000000 43080a46
403f013c c3180b46 a40080ac 00f08144 43080a46 42081e46
eeObj.WriteMem32(0x00424478,0x3c013f40)
eeObj.WriteMem32(0x00424484,0x4481f000)
eeObj.WriteMem32(0x00424488,0x460a0843)
eeObj.WriteMem32(0x0042448c,0x461e0842)

--Get rid of 'BLACK BAR'
--803f013c 00088144 480003c6
eeObj.WriteMem32(0x0017a6b4,0x3c010000)
end

emuObj.AddVsyncHook(widescreen)