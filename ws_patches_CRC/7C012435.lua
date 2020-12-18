apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-J by Arapapa)

--Widescreen hack 16:9


--Insert it in GameIndex.dbf
----ac21e54b 00808430 3c2be74b
--find serial SLPM-65015
--[patches = 7C012435]
----comment=COP2 flag instance patch by refraction
-- a mac flag check just after a vsub which gets in the way, rearranging
--eeObj.WriteMem32(0x0016ae90,0x48438800)
--eeObj.WriteMem32(0x0016ae94,0x4BE521AC)
--eeObj.WriteMem32(0x0016ae98,0x30848000)
--eeObj.WriteMem32(0x0016ae9c,0x4BE72B3C)

--X-Fov
eeObj.WriteMem32(0x001537d4,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)