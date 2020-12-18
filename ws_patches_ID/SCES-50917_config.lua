apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--gametitle=Sly Raccoon (PAL-M5) (SCES-50917)
--comment=Widescreen hack by ElHecht

-- 16:9
eeObj.WriteMem32(0x001438b0,0x08086204)
eeObj.WriteMem32(0x001438b4,0x00000000)
eeObj.WriteMem32(0x00218810,0x3c013f40)
eeObj.WriteMem32(0x00218818,0x4481f000)
eeObj.WriteMem32(0x0021881c,0x461e6303)
eeObj.WriteMem32(0x00218820,0xe60c01f0)
eeObj.WriteMem32(0x00218824,0x46020842)
eeObj.WriteMem32(0x00218828,0x08050e2d)
eeObj.WriteMem32(0x00185184,0xe61e0364)

-- disable cheat-detection
eeObj.WriteMem32(0x001eacd0,0x00000000)
eeObj.WriteMem32(0x001eacd8,0x00000000)
eeObj.WriteMem32(0x001eacdc,0x00000000)
eeObj.WriteMem32(0x001eace0,0x00000000)

eeObj.WriteMem32(0x00190208,0x00000000)
eeObj.WriteMem32(0x00190210,0x00000000)
eeObj.WriteMem32(0x00190214,0x00000000)
eeObj.WriteMem32(0x00190218,0x00000000)
eeObj.WriteMem32(0x0019021c,0x00000000)

eeObj.WriteMem32(0x0012b950,0x00000000)
eeObj.WriteMem32(0x0012b958,0x0804ae5f)
eeObj.WriteMem32(0x0012b95c,0x00000000)

eeObj.WriteMem32(0x0015f32c,0x00000000)
eeObj.WriteMem32(0x0015f330,0x00000000)
eeObj.WriteMem32(0x0015f334,0x00000000)
eeObj.WriteMem32(0x0015f338,0x00000000)
end

emuObj.AddVsyncHook(widescreen)