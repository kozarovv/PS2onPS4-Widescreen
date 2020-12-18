apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SpongeBob SquarePants - Lights, Camera, Pants! (U)(SLUS-21252)
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
--680080c4 03080046
eeObj.WriteMem32(0x0022fee8,0x081255ac)
eeObj.WriteMem32(0x004956b0,0xc4800068)
eeObj.WriteMem32(0x004956b4,0x3c013f40)
eeObj.WriteMem32(0x004956b8,0x4481f000)
eeObj.WriteMem32(0x004956bc,0x461e0003)
eeObj.WriteMem32(0x004956c0,0xe4800068)
eeObj.WriteMem32(0x004956c4,0x0808bfbb)
end

emuObj.AddVsyncHook(widescreen)