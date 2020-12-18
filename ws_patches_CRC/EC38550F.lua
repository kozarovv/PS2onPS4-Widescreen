apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Barbie in The 12 Dancing Princesses (U)(SLUS-21579)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00236418,0x08081924)
eeObj.WriteMem32(0x00206490,0x3c013f40)
eeObj.WriteMem32(0x00206494,0x4481f000)
eeObj.WriteMem32(0x00206498,0xc6010068)
eeObj.WriteMem32(0x0020649c,0xc602006c)
eeObj.WriteMem32(0x002064a0,0x461e0843)
eeObj.WriteMem32(0x002064a4,0xe6010068)
eeObj.WriteMem32(0x002064a8,0x0808d908)
end

emuObj.AddVsyncHook(widescreen)