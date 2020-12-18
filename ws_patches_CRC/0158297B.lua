apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen pnach by El_Patas

--Gameplay 16:9 
eeObj.WriteMem32(0x001D29AC,0x00000000)
eeObj.WriteMem32(0x003BAA18,0x00000001)

--HUD fix
eeObj.WriteMem32(0x003B7DF0,0xC0222222)
eeObj.WriteMem32(0x003B7E08,0x40222222)
eeObj.WriteMem32(0x003B7E28,0x40222222)
end

emuObj.AddVsyncHook(widescreen)