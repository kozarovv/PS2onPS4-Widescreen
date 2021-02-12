-- Patch is broken, disabled for now. 
apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Tales of Destiny 2 (NTSC-J)
--comment=Widescreen hack

--battle
--eeObj.WriteMem32(0x001807e4,0x3c013f40)
--eeObj.WriteMem32(0x001807e8,0x44810000)
--eeObj.WriteMem32(0x001807f0,0x4600c602)

--3D map
--eeObj.WriteMem32(0x002DB520,0x44160000)

--No interlacing by asasega
--eeObj.WriteMem32(0x0017355c,0x00000000)
--eeObj.WriteMem32(0x001735e4,0x00000000)
end

emuObj.AddVsyncHook(widescreen)