apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SpongeBob SquarePants - Lights, Camera, Pants! (E)(SLES-53494)
--comment=Widescreen hack by Arapapa
 
--Widescreen 16:9

--X-Fov
--680080c4 03080046
eeObj.WriteMem32(0x0022fe68,0x0812500c)
eeObj.WriteMem32(0x00494030,0xc4800068)
eeObj.WriteMem32(0x00494034,0x3c013f40)
eeObj.WriteMem32(0x00494038,0x4481f000)
eeObj.WriteMem32(0x0049403c,0x461e0003)
eeObj.WriteMem32(0x00494040,0xe4800068)
eeObj.WriteMem32(0x00494044,0x0808bf9b)
end

emuObj.AddVsyncHook(widescreen)