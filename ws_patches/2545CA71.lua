apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
--803f013c 00a88144 80001026
eeObj.WriteMem32(0x00402c28,0x3c013fab)

--X-Fov (Menu and etc)
--8c3f013c cdcc2134 00088144 40134224
eeObj.WriteMem32(0x004019d0,0x3c013f53)
eeObj.WriteMem32(0x004019d4,0x34213333)

--Render fix
--00000000 00000000 c3b00046 700115e6 00000000 00000000 03110046 800115e6 00000000 00000000 43a10046
--ab3f013c 00f08144 c3b00046 700115e6 00000000 03110046 02211e46 800115e6 00000000 43a10046 42291e46

eeObj.WriteMem32(0x0042b404,0x3c013fab)
eeObj.WriteMem32(0x0042b408,0x4481f000)
eeObj.WriteMem32(0x0042b418,0x46001103)
eeObj.WriteMem32(0x0042b41c,0x461e2102)
eeObj.WriteMem32(0x0042b428,0x4600a143)
eeObj.WriteMem32(0x0042b42c,0x461e2942)

--Black Bar Fix(Get rid of Black Bar)
--4842013c 00a08144 80730e46
eeObj.WriteMem32(0x002ea0f0,0x3c010000)

--Get rid of fading effect (Black Scene)
eeObj.WriteMem32(0x002ea018,0x3c010000)
eeObj.WriteMem32(0x002ea4a0,0x3c010000)
eeObj.WriteMem32(0x002ea5ec,0x3c010000)
end

emuObj.AddVsyncHook(widescreen)