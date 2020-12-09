apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=FMV's fix will cause abnormal collection interface

--gameplay by synce
eeObj.WriteMem32(0x00239d48,0x3fe38e38)

--FMV's fix by nemesis2000
--value 1
eeObj.WriteMem32(0x001BA0E4,0x00000000)

--value 2 (hex only)
eeObj.WriteMem32(0x003492B4,0x01262818)
eeObj.WriteMem32(0x003492B8,0x24061c00)
eeObj.WriteMem32(0x003492Bc,0x00c55822)

--value 3 (raw code only with M code for ps2rd)
eeObj.WriteMem32(0x00349118,0x24060015)
eeObj.WriteMem32(0x003492E8,0x000b5843)
eeObj.WriteMem32(0x003492F0,0x00aB28AC)
end

emuObj.AddVsyncHook(widescreen)