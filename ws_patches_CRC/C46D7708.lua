apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Dukes of Hazzard, The - Return of the General Lee SLES_527.47
--comment=Widescreen Hack
eeObj.WriteMem32(0x003f8ef8,0x3c013fc3)
eeObj.WriteMem32(0x003f8efc,0x34210c2c)
--hex pattern
--4000228e923f013c2549213400008144
--to 16:9
--4000228ec33f013c2c0c213400008144
end

emuObj.AddVsyncHook(widescreen)