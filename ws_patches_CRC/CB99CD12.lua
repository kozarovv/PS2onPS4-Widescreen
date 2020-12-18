apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Need for Speed Underground (SLUS-20811)
--comment=Widescreen hack by nemesis2000 (pnach by nemesis2000)

eeObj.WriteMem32(0x004ff434,0x3f400000)
eeObj.WriteMem32(0x004ff628,0x3f2aaaaa)
eeObj.WriteMem32(0x004ff630,0x3f2aaaaa)

--FMV's fix
eeObj.WriteMem32(0x00229da8,0x3c01bf2a)
eeObj.WriteMem32(0x00229dac,0x44816800)
eeObj.WriteMem32(0x00229ddc,0x46007307)
eeObj.WriteMem32(0x00229de0,0x46006bc7)
end

emuObj.AddVsyncHook(widescreen)