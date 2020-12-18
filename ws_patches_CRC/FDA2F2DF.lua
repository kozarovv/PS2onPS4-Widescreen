apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=DoRoRo (K)(SLKA-25225)
--comment=Widescreen Hack by Little Giant, Arapapa

--Widescreen hack 16:9
eeObj.WriteMem32(0x001b8cbc,0x3c023f06)
eeObj.WriteMem32(0x001b8cc4,0x34426666)

--Font X-position - Conversation
eeObj.WriteMem32(0x003ae3dc,0x3c024316)

--Button X-position
eeObj.WriteMem32(0x003ae424,0x3c034310)
eeObj.WriteMem32(0x003ae428,0x3c0243b5)

--Font X-Size - Conversation
eeObj.WriteMem32(0x003ae3c4,0x3c023f40)
eeObj.WriteMem32(0x003ae3c8,0x44826000)

eeObj.WriteMem32(0x003ae3d8,0x00000000)

--Font Y-Size - Conversation
eeObj.WriteMem32(0x003ae3cc,0x0810312c)
eeObj.WriteMem32(0x0040c4b0,0x3c013fa0)
eeObj.WriteMem32(0x0040c4b4,0x44816800)
eeObj.WriteMem32(0x0040c4b8,0x080eb8f4)

--Font - Menu
eeObj.WriteMem32(0x002c8f3c,0x08103130)
eeObj.WriteMem32(0x0040c4c0,0x3c013f40)
eeObj.WriteMem32(0x0040c4c4,0xac81001c)
eeObj.WriteMem32(0x0040c4c8,0x080b23d0)

--Time
eeObj.WriteMem32(0x002caa7c,0x3c013f80)
eeObj.WriteMem32(0x002caa80,0x4481f000)
eeObj.WriteMem32(0x002caaa4,0x3c023f40)
eeObj.WriteMem32(0x002caabc,0x4600f346)

--Mission
eeObj.WriteMem32(0x002bae58,0x08103134)
eeObj.WriteMem32(0x002bae5c,0x00000000)
eeObj.WriteMem32(0x0040c4d0,0x3c013f40)
eeObj.WriteMem32(0x0040c4d4,0x44816000)
eeObj.WriteMem32(0x0040c4d8,0x27a40040)
eeObj.WriteMem32(0x0040c4dC,0x080aeb97)

--etc....
eeObj.WriteMem32(0x002d017c,0x3c033f40)
eeObj.WriteMem32(0x002d0194,0x4600f346)

eeObj.WriteMem32(0x002d0214,0x3c033f40)
eeObj.WriteMem32(0x002d022c,0x4600f346)

eeObj.WriteMem32(0x002cab9c,0x3c033f40)
eeObj.WriteMem32(0x002cabb4,0x4600f346)

eeObj.WriteMem32(0x002cb118,0x3c033f40)
eeObj.WriteMem32(0x002cb130,0x4600f346)

eeObj.WriteMem32(0x002cd288,0x3c033f40)
eeObj.WriteMem32(0x002cd2a0,0x4600f346)

eeObj.WriteMem32(0x002cf43c,0x3c033f40)
eeObj.WriteMem32(0x002cf454,0x4600f346)

eeObj.WriteMem32(0x002d42e4,0x3c033f40)
eeObj.WriteMem32(0x002d42fc,0x4600f346)

eeObj.WriteMem32(0x002cf174,0x3c023f40)
eeObj.WriteMem32(0x002cf18c,0x4600f346)

eeObj.WriteMem32(0x002cf2d0,0x3c023f40)
eeObj.WriteMem32(0x002cf2e8,0x4600f346)

eeObj.WriteMem32(0x002cf368,0x3c023f40)
eeObj.WriteMem32(0x002cf380,0x4600f346)

eeObj.WriteMem32(0x002cf3f0,0x3c023f40)
eeObj.WriteMem32(0x002cf408,0x4600f346)

eeObj.WriteMem32(0x002d42e4,0x3c033f40)
eeObj.WriteMem32(0x002d42fc,0x4600f346)

eeObj.WriteMem32(0x002d4c94,0x3c023f40)
eeObj.WriteMem32(0x002d4cac,0x4600f346)

eeObj.WriteMem32(0x002d4d54,0x3c023f40)
eeObj.WriteMem32(0x002d4d6c,0x4600f346)

eeObj.WriteMem32(0x002d4e20,0x3c033f40)
eeObj.WriteMem32(0x002d4e34,0x4600f346)

--Map X-position
eeObj.WriteMem32(0x00244f6c,0x3c02bf30)
eeObj.WriteMem32(0x0024576c,0x3c02bf30)

----------------------------------------------------
--HP
--eeObj.WriteMem32(0x002cae20,0x3c023f40)
--eeObj.WriteMem32(0x002cae38,0x4600f346)
--Żȯ'
--eeObj.WriteMem32(0x002caed0,0x3c023f00)
--eeObj.WriteMem32(0x002caf6c,0x3c023f00)
--eeObj.WriteMem32(0x002cab9c,0x3c033f00)
--Name zoom
--eeObj.WriteMem32(0x003ae378,0x3c023ff0)
--Loading
--eeObj.WriteMem32(0x00211790,0x3c023f40)
--Name
--eeObj.WriteMem32(0x003ae388,0x08030000)
--eeObj.WriteMem32(0x000c0000,0x3c010054)
--eeObj.WriteMem32(0x000c0004,0x3c173f40)
--eeObj.WriteMem32(0x000c0008,0xac37ae88)
--eeObj.WriteMem32(0x000c000c,0x080eb8e3)
end

emuObj.AddVsyncHook(widescreen)