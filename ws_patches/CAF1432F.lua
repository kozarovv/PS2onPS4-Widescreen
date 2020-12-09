apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Nicktoons - Battle for Volcano Island (U)(SLUS-21469)
--comment=Widescreen hack by Arapapa

--Widescreen hack 16:9

--Zoom
--00000000 003f013c 00a08144 
eeObj.WriteMem32(0x00286148,0x3c013f68)

--Y-Fov
--00000000 0c00a1c7 42080046
eeObj.WriteMem32(0x00286194,0x0806f684)

eeObj.WriteMem32(0x001bda10,0x46000842)
eeObj.WriteMem32(0x001bda14,0x3c013faa)
eeObj.WriteMem32(0x001bda18,0x3421aaab)
eeObj.WriteMem32(0x001bda1c,0x4481f000)
eeObj.WriteMem32(0x001bda20,0x461e0842)
eeObj.WriteMem32(0x001bda24,0x080a1866)
end

emuObj.AddVsyncHook(widescreen)