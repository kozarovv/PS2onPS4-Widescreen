apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Ring of Red (U)(SLUS-20145)
--comment=Widescreen Hack ElHecht and Arapapa

--eeObj.WriteMem32(0x001059bc,0x3c013f60)

eeObj.WriteMem32(0x001107a8,0x08052e47)
eeObj.WriteMem32(0x001107ac,0x00000000)
eeObj.WriteMem32(0x001107b0,0x00000000)

eeObj.WriteMem32(0x0014b91c,0x3c013faa)
eeObj.WriteMem32(0x0014b920,0x3421aaab)
eeObj.WriteMem32(0x0014b924,0x44810000)
eeObj.WriteMem32(0x0014b928,0x3c020026)
eeObj.WriteMem32(0x0014b92c,0x2442d8c0)
eeObj.WriteMem32(0x0014b930,0x46006b42)
eeObj.WriteMem32(0x0014b934,0xe44d0014)
eeObj.WriteMem32(0x0014b938,0x080441eb)

--003F013C 00108144 040041C4
--C03E013C 00108144 040041C4
eeObj.WriteMem32(0x00110fac,0x3c013ec0)
eeObj.WriteMem32(0x00110fe0,0x3c013fab)

--803F013C 00008144 2C0060AC
--403F013C 00008144 2C0060AC
eeObj.WriteMem32(0x001070e0,0x3c013f40)
end

emuObj.AddVsyncHook(widescreen)