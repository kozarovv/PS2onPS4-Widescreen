apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Medal of Honor - Jishousaidai no Sakusen(Frontline) (NTSC-J)(SLPS-25151)
--comment=Widescreen hack by nemesis2000 (NTSC-J by Arapapa)

--Widescreen hack 16:9

eeObj.WriteMem32(0x00146da0,0x0c0533e9)
eeObj.WriteMem32(0x00146dc0,0x0c0533e9)
eeObj.WriteMem32(0x00146de0,0x0c0533e9)

eeObj.WriteMem32(0x0014cfa4,0x3c013f50)
eeObj.WriteMem32(0x0014cfa8,0x44810800)
eeObj.WriteMem32(0x0014cfac,0x46016303)
eeObj.WriteMem32(0x0014cfb0,0xc481043c)
eeObj.WriteMem32(0x0014cfb4,0x460c0832)
eeObj.WriteMem32(0x0014cfb8,0x45010008)
eeObj.WriteMem32(0x0014cfc0,0x46016034)
eeObj.WriteMem32(0x0014cfc4,0x45000004)
eeObj.WriteMem32(0x0014cfc8,0xe48c0444)
eeObj.WriteMem32(0x0014cfcc,0x46006807)
eeObj.WriteMem32(0x0014cfd0,0x03e00008)
eeObj.WriteMem32(0x0014cfd4,0xe4800448)
eeObj.WriteMem32(0x0014cfd8,0xe48d0448)
eeObj.WriteMem32(0x0014cfdc,0x03e00008)
eeObj.WriteMem32(0x0014cfe0,0x3c030024)
eeObj.WriteMem32(0x0014cfe4,0x27bdff60)

eeObj.WriteMem32(0x003266b0,0x3f1c0000)
end

emuObj.AddVsyncHook(widescreen)