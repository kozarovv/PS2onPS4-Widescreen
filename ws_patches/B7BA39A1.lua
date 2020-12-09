apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Rugby (E)(SLES-50220)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--X-Fov

--42100146 d48180c7
eeObj.WriteMem32(0x00233744,0x080d104c)

eeObj.WriteMem32(0x00344130,0x46011042)
eeObj.WriteMem32(0x00344134,0x3c083f40)
eeObj.WriteMem32(0x00344138,0x4488f000)
eeObj.WriteMem32(0x0034413c,0x461e0842)
eeObj.WriteMem32(0x00344140,0x0808cdd2)
end

emuObj.AddVsyncHook(widescreen)