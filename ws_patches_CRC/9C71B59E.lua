apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Psi-Ops: The Mindgate Conspiracy (SLUS-20688)
--comment=Widescreen hack by Nemesis2000

eeObj.WriteMem32(0x0046DC3C,0x241102AA)

--FMV's fix
eeObj.WriteMem32(0x00469938,0x2411012A)
end

emuObj.AddVsyncHook(widescreen)