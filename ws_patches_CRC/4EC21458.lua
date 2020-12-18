apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack  by Arapapa

--Widescreen hack 16:9

--Zoom
--003f013c 00108144 48000cc6
eeObj.WriteMem32(0x002244e8,0x3c013ec0)

--Y-Fov
--00000000 00000000 c3180d46 2000a0ac 00000000 00000000
--aa3f013c abaa2134 c3180d46 2000a0ac 00f08144 c2181e46
eeObj.WriteMem32(0x0022443c,0x3c013faa)
eeObj.WriteMem32(0x00224440,0x3421aaab)
eeObj.WriteMem32(0x0022444c,0x4481f000)
eeObj.WriteMem32(0x00224450,0x461e18c2)


------------------------------------------
--0000803f 0000803f 5555953f 
--eeObj.WriteMem32(0x0049C990,0x3F400000)

--Render fix
--eeObj.WriteMem32(0x00253ffc,0x3c013fb0)
end

emuObj.AddVsyncHook(widescreen)