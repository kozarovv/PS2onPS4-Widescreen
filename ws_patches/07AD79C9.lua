apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
--comment=Yu-Gi-Oh! The Duelist of the Roses NTSC-U patches
--Widescreen 16:9
--X 21FE0528 3F400000 - need render fix
--Y -- works fine?
eeObj.WriteMem32(0x01FE052C,0x3FA06D3A)
--different Y 20326194 3FAAAAAA - works fine as well?
--Zoom Correction for Y
--doesn't work for cards when they fight, soo they fill up the screen(looks ok actually), but works for everything else
eeObj.WriteMem32(0x01FE0524,0x44160000)


--Game fixes(workarounds):

--fix for the zoom graphic glitch(you can additionally also change EE/IOP rounding to negative and clamping to extra+preserve sign, but I didn't really saw much if any improvement of doing it--p)
eeObj.WriteMem32(0x01FE04F0,0x00000000)
eeObj.WriteMem32(0x01FE04F0,0x3727C5AC)

--Duel Master(use only one code) in custom duel:
--T
--eeObj.WriteMem32(0x003173AC,0x00000003)
--S
--eeObj.WriteMem32(0x003173AC,0x00000002)
--I
--eeObj.WriteMem32(0x003173AC,0x00000004)
end

emuObj.AddVsyncHook(widescreen)