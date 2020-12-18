apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Widescreen Fix by ThirteenAG https:--thirteenag.github.io/wfp

eeObj.WriteMem32(0x0017F1EC,short,3FE3
eeObj.WriteMem32(0x0017F204,short,8E39

eeObj.WriteMem32(0x001B8E08,short,3FE3
eeObj.WriteMem32(0x001B8E20,short,8E39

eeObj.WriteMem32(0x00457740,short,3FE3
eeObj.WriteMem32(0x00457744,short,8E39

eeObj.WriteMem32(0x004606F4,short,3FE3
eeObj.WriteMem32(0x00460704,short,8E39

eeObj.WriteMem32(0x004F18AC,short,3FE3
eeObj.WriteMem32(0x004F18C4,short,8E39

eeObj.WriteMem32(0x004F196C,short,3FE3
eeObj.WriteMem32(0x004F1984,short,8E39

eeObj.WriteMem32(0x004F471C,short,3FE3
eeObj.WriteMem32(0x004F4724,short,8E39

eeObj.WriteMem32(0x004F5BD0,short,3FE3
eeObj.WriteMem32(0x004F5BD8,short,8E39

eeObj.WriteMem32(0x004F6F78,short,3FE3
eeObj.WriteMem32(0x004F6F7C,short,8E39

eeObj.WriteMem32(0x00505CEC,short,3FE3
eeObj.WriteMem32(0x00505D04,short,8E39

eeObj.WriteMem32(0x00506220,short,3FE3
eeObj.WriteMem32(0x00506238,short,8E39

eeObj.WriteMem32(0x004607B0,short,3C2C
eeObj.WriteMem32(0x004607B8,short,52D4
end

emuObj.AddVsyncHook(widescreen)