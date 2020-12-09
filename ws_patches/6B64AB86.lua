apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x00196fd4,0x10400007)
eeObj.WriteMem32(0x00196fec,0x1000fffd)
eeObj.WriteMem32(0x00196ff4,0x3c013f40)
eeObj.WriteMem32(0x00196ffc,0x4481f000)
eeObj.WriteMem32(0x00197000,0xc784bccc)
eeObj.WriteMem32(0x00197014,0x461e2102)
eeObj.WriteMem32(0x0018f9a8,0x4615ad03)
eeObj.WriteMem32(0x0018f9ac,0x461e2743)
eeObj.WriteMem32(0x0018f9e0,0xe79dbcb4)

-- 16:10
--eeObj.WriteMem32(0x00196fd4,0x10400007)
--eeObj.WriteMem32(0x00196fec,0x1000fffd)
--eeObj.WriteMem32(0x00196ff4,0x3c013f55)
--eeObj.WriteMem32(0x00196ff8,0x34215555)
--eeObj.WriteMem32(0x00196ffc,0x4481f000)
--eeObj.WriteMem32(0x00197000,0xc784bccc)
--eeObj.WriteMem32(0x00197014,0x461e2102)
--eeObj.WriteMem32(0x0018f9a8,0x4615ad03)
--eeObj.WriteMem32(0x0018f9ac,0x461e2743)
--eeObj.WriteMem32(0x0018f9e0,0xe79dbcb4)

--Black bar fix by Arapapa (Get rid of 'Black Bar')
--9a99993f 5555553f 5655553e
eeObj.WriteMem32(0x00586d04,0x00000000)
end

emuObj.AddVsyncHook(widescreen)