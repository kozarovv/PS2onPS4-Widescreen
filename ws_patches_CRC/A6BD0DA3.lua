apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tsukiyo ni Saraba (SLPM-65826)
--comment=Widescreen hack by sergx12 (NTSC-J by Arapapa)

-- 16:9
--803f013c 00088144 0000a3c7 00000000 00000000 43080046
eeObj.WriteMem32(0x005da8c4,0x3c013faa)

--803f013c 00588144 82310446 40080746
eeObj.WriteMem32(0x005daadc,0x3c013faa)

--2D X-fov
--eeObj.WriteMem32(0x003af598,0x3c013ff3)
--eeObj.WriteMem32(0x003af59c,0x3421cf2d)
eeObj.WriteMem32(0x005da274,0x3c013f24)
end

emuObj.AddVsyncHook(widescreen)