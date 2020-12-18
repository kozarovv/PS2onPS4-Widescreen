apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x0032b448,0x3c013f40)

--applies both fov+ only for widescreen mode
eeObj.WriteMem32(0x0032b478,0x3c010015)
eeObj.WriteMem32(0x0032b47c,0xc62dd11c)
eeObj.WriteMem32(0x0032b49c,0x46016b42)
eeObj.WriteMem32(0x0032b4a0,0x46010843)
eeObj.WriteMem32(0x0032b4b8,0x460d1083)
eeObj.WriteMem32(0x0032b4bC,0x460d0843)

--effects fix
eeObj.WriteMem32(0x00257434,0x46161083)
eeObj.WriteMem32(0x00257488,0x46160843)
eeObj.WriteMem32(0x002574e0,0x46160843)
eeObj.WriteMem32(0x00257538,0x46160843)

eeObj.WriteMem32(0x00018e38,0x0015D11C)
eeObj.WriteMem32(0x00257764,0x10000008)
eeObj.WriteMem32(0x0001aaaa,0x0015D11C)
eeObj.WriteMem32(0x00257764,0x45020008)

--render fix
eeObj.WriteMem32(0x00222484,0x3c013f2b)
eeObj.WriteMem32(0x00222494,0x44810000)
eeObj.WriteMem32(0x00222498,0x46006302)
end

emuObj.AddVsyncHook(widescreen)