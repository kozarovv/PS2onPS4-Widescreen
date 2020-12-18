apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
--680080c4 03080046
eeObj.WriteMem32(0x00230328,0x081258cc)
eeObj.WriteMem32(0x00496330,0xc4800068)
eeObj.WriteMem32(0x00496334,0x3c013f40)
eeObj.WriteMem32(0x00496338,0x4481f000)
eeObj.WriteMem32(0x0049633c,0x461e0003)
eeObj.WriteMem32(0x00496340,0xe4800068)
eeObj.WriteMem32(0x00496344,0x0808c0cb)

----------------------------------------------------------/
--ICON and Font fix
--803f023c 7200a392 00388244 (Twice) 
--eeObj.WriteMem32(0x003e0d18,0x3c023f40)
--eeObj.WriteMem32(0x003df178,0x3c023f40)
--803f033c 0400a28e 00088344
--eeObj.WriteMem32(0x003df414,0x3c033f40)


end

emuObj.AddVsyncHook(widescreen)