apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Hack by Little Giant

--vert
eeObj.WriteMem32(0x00230aa4,0x3c023fa2)
eeObj.WriteMem32(0x00230aa8,0x34472222)
eeObj.WriteMem32(0x002ccf18,0x3c023fa2)
eeObj.WriteMem32(0x002ccf1c,0x34422222)
eeObj.WriteMem32(0x0032CE8C,0x3C023FA2)
eeObj.WriteMem32(0x0032CE90,0x34422222)

--zoom
eeObj.WriteMem32(0x00281778,0x3c013f40)
eeObj.WriteMem32(0x0028177C,0x4481f000)

eeObj.WriteMem32(0x00230C08,0x461e6302)
eeObj.WriteMem32(0x00230C18,0xE46C0160)
eeObj.WriteMem32(0x00230C1c,0x03E00008)
eeObj.WriteMem32(0x00230C20,0xE4700154)

eeObj.WriteMem32(0x00230C24,0x8F851630)
eeObj.WriteMem32(0x00230C28,0x3C02003F)
eeObj.WriteMem32(0x00230C2c,0x24431B60)
eeObj.WriteMem32(0x00230C30,0x24020001)
eeObj.WriteMem32(0x00230C34,0x00052040)
eeObj.WriteMem32(0x00230C38,0x00852021)
eeObj.WriteMem32(0x00230C3c,0x00042080)
eeObj.WriteMem32(0x00230C40,0x00852021)
eeObj.WriteMem32(0x00230C44,0x00042140)
eeObj.WriteMem32(0x00230C48,0x00641821)
eeObj.WriteMem32(0x00230C4c,0xE46C0158)
eeObj.WriteMem32(0x00230C50,0x03E00008)
eeObj.WriteMem32(0x00230C54,0xE46D015C)

eeObj.WriteMem32(0x002cbe98,0x0c08c309)
eeObj.WriteMem32(0x002ccf24,0x0c08c309)
eeObj.WriteMem32(0x0032cea0,0x0c08c309)
eeObj.WriteMem32(0x0032cfa0,0x0c08c309)
eeObj.WriteMem32(0x0033f890,0x0c08c309)
eeObj.WriteMem32(0x0033fa98,0x0c08c309)
end

emuObj.AddVsyncHook(widescreen)