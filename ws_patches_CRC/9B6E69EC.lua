apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=ESPN NHL 2K5 (U)(SLUS-20921)
--comment=Widescreen hack by El_Patas & Arapapa

--Widescreen hack 16:9

--Zoom (gameplay)
eeObj.WriteMem32(0x001a3050,0x3c013f40)

--Zoom (Menu and Cutscene)
eeObj.WriteMem32(0x003e9ef8,0x3c013f40)

--Y-Fov
--ec678b3f -> d61b513f
eeObj.WriteMem32(0x00595d80,0x3F511BD6)


--Widescreen hack 21:9

--Zoom (gameplay)
--eeObj.WriteMem32(0x001a3050,0x3c013f10)

--Zoom (Menu and Cutscene)
--eeObj.WriteMem32(0x003e9ef8,0x3c013f10)

--Y-Fov
--ec678b3f -> d61b513f
--eeObj.WriteMem32(0x00595d80,0x3F1CD4DC)


------------------------------------------/
--X-Fov (Needs render fix)
--eeObj.WriteMem32(0x003d9c4c,0x080ab89c)

--eeObj.WriteMem32(0x002ae270,0x46012943)
--eeObj.WriteMem32(0x002ae274,0x3c013f40)
--eeObj.WriteMem32(0x002ae278,0x4481f000)
--eeObj.WriteMem32(0x002ae27c,0x461e2942)
--eeObj.WriteMem32(0x002ae280,0x080f6714)

--Y-Fov
--c3390046 1c0020ae
----eeObj.WriteMem32(0x003d9c98,0x08030000)

--eeObj.WriteMem32(0x003d9c98,0x08030000)

--eeObj.WriteMem32(0x000c0000,0x460039c3)
--eeObj.WriteMem32(0x000c0004,0x3c013faa)
--eeObj.WriteMem32(0x000c0008,0x3421aaab)
--eeObj.WriteMem32(0x000c000c,0x4481f000)
--eeObj.WriteMem32(0x000c0010,0x461e39c2)
--eeObj.WriteMem32(0x000c0014,0x080f6727)

--Gameplay 16:9
--eeObj.WriteMem32(0x001A2FC0,0x3C013FAA)
end

emuObj.AddVsyncHook(widescreen)