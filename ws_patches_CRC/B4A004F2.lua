apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=TimeSplitters (SLUS-20090)
--comment=Widescreen hack by nemesis2000 and gamemasterplc (Font Fixes by gamemasterplc)
eeObj.WriteMem32(0x00202634,0x080E2665)
eeObj.WriteMem32(0x0020268C,0x080E2678)
eeObj.WriteMem32(0x00202690,0x240200C0)
eeObj.WriteMem32(0x00202738,0x080E265C)
eeObj.WriteMem32(0x002027AC,0x080E2672)
eeObj.WriteMem32(0x002027B0,0x96020004)
eeObj.WriteMem32(0x002029BC,0x24040012)
eeObj.WriteMem32(0x00202A48,0x080E267D)
eeObj.WriteMem32(0x00202A4C,0x240500C0)
eeObj.WriteMem32(0x00202A68,0x080E266C)
eeObj.WriteMem32(0x00202A6C,0x02431807)
eeObj.WriteMem32(0x0022C220,0x26520018)
eeObj.WriteMem32(0x0027B3F4,0x3C014328)
eeObj.WriteMem32(0x0027B3F8,0x44810000)
eeObj.WriteMem32(0x00389970,0x02A43007)
eeObj.WriteMem32(0x00389974,0x240200C0)
eeObj.WriteMem32(0x00389978,0x02420019)
eeObj.WriteMem32(0x0038997C,0x00009012)
eeObj.WriteMem32(0x00389980,0x00C20019)
eeObj.WriteMem32(0x00389984,0x00003012)
eeObj.WriteMem32(0x00389988,0x00129203)
eeObj.WriteMem32(0x0038998C,0x080809D0)
eeObj.WriteMem32(0x00389990,0x00063203)
eeObj.WriteMem32(0x00389994,0x0C0AD060)
eeObj.WriteMem32(0x00389998,0x00000000)
eeObj.WriteMem32(0x0038999C,0x240700C0)
eeObj.WriteMem32(0x003899A0,0x02470019)
eeObj.WriteMem32(0x003899A4,0x00009012)
eeObj.WriteMem32(0x003899A8,0x0808098F)
eeObj.WriteMem32(0x003899AC,0x00129203)
eeObj.WriteMem32(0x003899B0,0x240500C0)
eeObj.WriteMem32(0x003899B4,0x00A30019)
eeObj.WriteMem32(0x003899B8,0x00001812)
eeObj.WriteMem32(0x003899BC,0x00031A03)
eeObj.WriteMem32(0x003899C0,0x08080A9C)
eeObj.WriteMem32(0x003899C4,0x02639821)
eeObj.WriteMem32(0x003899C8,0x02A21007)
eeObj.WriteMem32(0x003899CC,0x240400C0)
eeObj.WriteMem32(0x003899D0,0x00820019)
eeObj.WriteMem32(0x003899D4,0x00001012)
eeObj.WriteMem32(0x003899D8,0x080809ED)
eeObj.WriteMem32(0x003899DC,0x00021203)
eeObj.WriteMem32(0x003899E0,0x02420019)
eeObj.WriteMem32(0x003899E4,0x00009012)
eeObj.WriteMem32(0x003899E8,0x00129203)
eeObj.WriteMem32(0x003899EC,0x080809EE)
eeObj.WriteMem32(0x003899F0,0x02328821)
eeObj.WriteMem32(0x003899F4,0x00450019)
eeObj.WriteMem32(0x003899F8,0x00001012)
eeObj.WriteMem32(0x003899FC,0x00021203)
eeObj.WriteMem32(0x00389A00,0x08080A9C)
eeObj.WriteMem32(0x00389A04,0x02629821)
end

emuObj.AddVsyncHook(widescreen)