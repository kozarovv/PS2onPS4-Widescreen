apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Arapapa
--comment=Thank you devina40

--Widescreen hack 16:9

--Game Play
eeObj.WriteMem32(0x0035ccb8,0x3f206d2f)

--System text 
--0000803f 0000803f feffffff
eeObj.WriteMem32(0x003975b0,0x3f400000)

--Load and Save text
eeObj.WriteMem32(0x00397550,0x3f400000)

--Chapter Select text
eeObj.WriteMem32(0x003975d0,0x3f400000)

--Movie text
--32000000 0000803f 0000803f 00000000
eeObj.WriteMem32(0x00397470,0x3f400000)

--Cutscene text
eeObj.WriteMem32(0x00397430,0x3f400000)

--Musical text
eeObj.WriteMem32(0x00397490,0x3f400000)

--Item Name and Explanation text
eeObj.WriteMem32(0x003974f0,0x3f400000)
eeObj.WriteMem32(0x00397510,0x3f400000)

--Figures Name text
eeObj.WriteMem32(0x003975f0,0x3f400000)

--Others ratio but graphics is cracked and words out of text box
--eeObj.WriteMem32(0x0035d130,0x3f400000)
end

emuObj.AddVsyncHook(widescreen)