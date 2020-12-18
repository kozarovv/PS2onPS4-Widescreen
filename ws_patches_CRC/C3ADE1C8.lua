apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Barbie in The 12 Dancing Princesses (E)(SLES-54566)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x00236e30,0x08081ba8)
eeObj.WriteMem32(0x00206ea0,0x3c013f40)
eeObj.WriteMem32(0x00206ea4,0x4481f000)
eeObj.WriteMem32(0x00206ea8,0xc6010068)
eeObj.WriteMem32(0x00206eac,0xc602006c)
eeObj.WriteMem32(0x00206eb0,0x461e0843)
eeObj.WriteMem32(0x00206eb4,0xe6010068)
eeObj.WriteMem32(0x00206eb8,0x0808db8e)
end

emuObj.AddVsyncHook(widescreen)