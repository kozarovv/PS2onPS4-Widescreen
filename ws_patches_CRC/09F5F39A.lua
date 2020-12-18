apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen hack by ElHecht - Port PAL-UK

-- 16:9
eeObj.WriteMem32(0x00110634,0x3c1b3f40)
eeObj.WriteMem32(0x0011066c,0x449bf800)
eeObj.WriteMem32(0x001106a0,0x461f6e42)
eeObj.WriteMem32(0x00110670,0x461fe703)

--matrix hack
eeObj.WriteMem32(0x0026282c,0x3c013f40)
eeObj.WriteMem32(0x00262838,0x44810000)
eeObj.WriteMem32(0x0026283c,0x4600c602)

--textbox calculation
eeObj.WriteMem32(0x0010b010,0x46000383)
eeObj.WriteMem32(0x0010b014,0x449b6800)
eeObj.WriteMem32(0x0010b030,0x460d7343)
eeObj.WriteMem32(0x0010b040,0x46007446)

--position fix weapon select
eeObj.WriteMem32(0x00207a98,0x3c0144fa)

--font fix hud and menu
eeObj.WriteMem32(0x001eedbc,0x24100020)
eeObj.WriteMem32(0x001f7cd0,0x24090020)

--font fix subtitle and text box
--eeObj.WriteMem32(0x0010c980,0x24426fb0)
--eeObj.WriteMem32(0x0010d3d4,0x3c013f1f)
--eeObj.WriteMem32(0x0010d3d8,0x3421fffc)
--eeObj.WriteMem32(0x0010d3f8,0x3c013f40)
--eeObj.WriteMem32(0x0010d820,0x3c014216)

--numbers fix
eeObj.WriteMem32(0x001f998c,0x240b0020)
eeObj.WriteMem32(0x001f9710,0x24030020)

--fmv fix
eeObj.WriteMem32(0x0010629c,0x3c071900)
eeObj.WriteMem32(0x002a1608,0x70007000)

--black border fix
eeObj.WriteMem32(0x0010430c,0x00000000)
eeObj.WriteMem32(0x0010442c,0x00000000)

--60 FPS
--eeObj.WriteMem32(0x001104d8,0x24820000)
end

emuObj.AddVsyncHook(widescreen)