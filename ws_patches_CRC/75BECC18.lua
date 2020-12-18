apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- Made by XxDEATHB3TCH - For 16:9 TVs or Monitors

-- For Burnout 3: Takedown, Changes Button prompts sizes, text, UI & in-game aspect ratio.

-- Code
--comment=Burnout 3 (PAL-M4) (SLES-52584) 16:9 widescreen patch by XxDEATHB3TCHxX
eeObj.WriteMem32(0x00666544,0x3FE34000)
eeObj.WriteMem32(0x00666540,0x3FAAAAAB)



--=========Notes:=======--
204C9984 - Controls up arrow height button prompt (Value 1.15)
204C999C - Controls bottom arrow height button prompt (Value 1.15)
20666540 - Controls FOV/zoom of the camera (Value 1.10)
21E909A0 - Controls below menu panel
204E0C28 - Controls how italics the text is
205175D4 - Controls the width but moves camera
21E92DF8 - Controls width of Resume text
end

emuObj.AddVsyncHook(widescreen)