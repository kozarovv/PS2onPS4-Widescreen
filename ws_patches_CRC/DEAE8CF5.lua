apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SOCOM - U.S. NAVY SEALs(J)(SCPS-15044
--comment=Widescreen hack by ElHecht (NTSC-J by Arapapa)

-- 16:9
--00000000 00000000 43ad1346 00000000
--403f013c 00e88144 43ad1346 c3bd1d46
eeObj.WriteMem32(0x0014f64c,0x3c013f40)
eeObj.WriteMem32(0x0014f650,0x4481e800)
eeObj.WriteMem32(0x0014f658,0x461dbdc3)

--C00140E6 C80140E6 803F023C
eeObj.WriteMem32(0x001c8590,0x4614a083)
eeObj.WriteMem32(0x001c85a0,0x461d0002)


end

emuObj.AddVsyncHook(widescreen)