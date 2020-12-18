apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack (16:9) by ElHecht (NTSC-K by Arapapa)

-- 16:9

--6043023c 2d200002
eeObj.WriteMem32(0x0013eb68,0x3c024328)

--1885838f 0800e003 bc026de4
eeObj.WriteMem32(0x0013ed58,0x3c013f40)
eeObj.WriteMem32(0x0013ed5c,0x4481f000)
eeObj.WriteMem32(0x0013ed60,0x461e6b43)
eeObj.WriteMem32(0x0013ed64,0x03e00008)
eeObj.WriteMem32(0x0013ed68,0xe46d02bc)
end

emuObj.AddVsyncHook(widescreen)