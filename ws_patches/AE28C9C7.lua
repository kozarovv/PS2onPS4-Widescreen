apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=SpongeBob's Atlantis SquarePantis (E)(SLES-55024)
--comment=Widescreen Hack by Arapapa

--Widescreen hack 16:9

--X-Fov
eeObj.WriteMem32(0x003b36fc,0x3c013f40)
eeObj.WriteMem32(0x003b3700,0x4481f000)
eeObj.WriteMem32(0x003b3708,0x461eb582)

--Render fix
eeObj.WriteMem32(0x00393220,0x3c013f2b)

end

emuObj.AddVsyncHook(widescreen)