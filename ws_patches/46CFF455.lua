apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack (NTSC-K by Arapapa)

--Widescreen hack 16:9


--Insert it in GameIndex.dbf
----ac21e54b 00808430 3c2be74b
--Serial = SLPM-67531
--[patches = 46CFF455]
----comment=COP2 flag instance patch by refraction
-- a mac flag check just after a vsub which gets in the way, rearranging
--eeObj.WriteMem32(0x00166cd0,0x48438800)
--eeObj.WriteMem32(0x00166cd4,0x4BE521AC)
--eeObj.WriteMem32(0x00166cd8,0x30848000)
--eeObj.WriteMem32(0x00166cdc,0x4BE72B3C)

--X-Fov
eeObj.WriteMem32(0x0014cef4,0x3c023f40)
end

emuObj.AddVsyncHook(widescreen)