apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Lupin the 3rd: Treasure of the Sorcerer King [NTSC-U] (SLUS_206.83)
--comment=Widescreen hack by El_Patas
 
--Gameplay 16:9 
eeObj.WriteMem32(0x002504E4,0x3C013F40)
eeObj.WriteMem32(0x002504E8,0x44810000)
eeObj.WriteMem32(0x002504F0,0x4600C602)

--HUD Sphere map upper right fix
eeObj.WriteMem32(0x001F967C,0x3C013FAB)

--Render fix
eeObj.WriteMem32(0x001FB31C,0x3C0143D6)
end

emuObj.AddVsyncHook(widescreen)