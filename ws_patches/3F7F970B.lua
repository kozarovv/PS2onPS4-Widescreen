apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by Aced14

--16:9 widescreen
eeObj.WriteMem32(0x002344AC,0x00003FCC)
eeObj.WriteMem32(0x002344B0,0x0000CCCD)


--Alternate hacks

--Master X FOV
--eeObj.WriteMem32(0x00234D30,0x0809A609)
--eeObj.WriteMem32(0x00269824,0x3C030050)
--eeObj.WriteMem32(0x00269828,0x3C013F40)
--eeObj.WriteMem32(0x0026982C,0x4481F800)
--eeObj.WriteMem32(0x00269830,0x0808D34E)
--eeObj.WriteMem32(0x00269834,0xE47FA150)

--Render fixes
--eeObj.WriteMem32(0x001956F4,0x00003FEA)
--eeObj.WriteMem32(0x001956F8,0x0000AAAB)
--eeObj.WriteMem32(0x0023D9C0,0x00003F2B)

--Text position fix
--eeObj.WriteMem32(0x0010A0B4,0x000001AB)
end

emuObj.AddVsyncHook(widescreen)