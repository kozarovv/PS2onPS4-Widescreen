apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hacks by Devina (active X FOV discovery), sergx12 (render fixes) and Aced14 (ELF hacks/repositioning/revisions)

--16:9 widescreen
eeObj.WriteMem32(0x0023CA3C,0x0809A2DB)
eeObj.WriteMem32(0x00268B6C,0x3C013FAA)
eeObj.WriteMem32(0x00268B70,0x3421AAAB)
eeObj.WriteMem32(0x00268B74,0x4481F800)
eeObj.WriteMem32(0x00268B78,0x461F1082)
eeObj.WriteMem32(0x00268B7C,0x0808F291)
eeObj.WriteMem32(0x00268B80,0x3C04002C)


--Alternate hacks

--Master X FOV
--eeObj.WriteMem32(0x002340B8,0x0809A2DB)
--eeObj.WriteMem32(0x00268B6C,0x3C030050)
--eeObj.WriteMem32(0x00268B70,0x3C013F40)
--eeObj.WriteMem32(0x00268B74,0x4481F800)
--eeObj.WriteMem32(0x00268B78,0x0808D030)
--eeObj.WriteMem32(0x00268B7C,0xE47F90C0)

--Render fixes
--eeObj.WriteMem32(0x00194F2C,0x00003FEA)
--eeObj.WriteMem32(0x00194F30,0x0000AAAB)
--eeObj.WriteMem32(0x0023CCC0,0x00003F2B)

--Text position fix
--eeObj.WriteMem32(0x00109F1C,0x000001AB)
end

emuObj.AddVsyncHook(widescreen)