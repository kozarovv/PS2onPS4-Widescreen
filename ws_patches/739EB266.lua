apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by Arapapa (original hack) and Aced14 (alternate hacks)

--16:9 widescreen
eeObj.WriteMem32(0x002C6DA8,0x3FAAAAAB)


--Alternate hacks

--Master X FOV
--eeObj.WriteMem32(0x00235E08,0x0809AA4F)
--eeObj.WriteMem32(0x0026A93C,0x3C030050)
--eeObj.WriteMem32(0x0026A940,0x3C013F40)
--eeObj.WriteMem32(0x0026A944,0x4481F800)
--eeObj.WriteMem32(0x0026A948,0x0808D784)
--eeObj.WriteMem32(0x0026A94C,0xE47FB350)

--Render fixes
--eeObj.WriteMem32(0x00195FE4,0x00003FEA)
--eeObj.WriteMem32(0x00195FE8,0x0000AAAB)
--eeObj.WriteMem32(0x0023EA98,0x00003F2B)

--Text position fix
--eeObj.WriteMem32(0x0010A26C,0x000001AB)
end

emuObj.AddVsyncHook(widescreen)