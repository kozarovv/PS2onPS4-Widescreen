apiRequest(1.0)
local eeObj = getEEObject()
local emuObj = getEmuObject()

local widescreen = function()
-- ==========
 -- pgert@170413
 -- http:--forums.pcsx2.net/Thread-PCSX2-Widescreen-Game-Patches?pid=240786#pid240786
-- ==========

-- ==========
 --gametitle=Legacy of Kain - Defiance
 --comment= Legacy of Kain - Defiance * SLES-52150 * PAL-M5 * BCAD1E8A
 --comment=- Widescreen hack by nemesis2000.
-- ==========
 -- Built in widescreen
  eeObj.WriteMem32(0x0011a644,0x00000000)
  eeObj.WriteMem32(0x0028E8C0,0x00000001)
 -- Sub black background off
  eeObj.WriteMem32(0x0013d458,0x3c013b30)
 -- Cutscenes black border fix
  eeObj.WriteMem32(0x001522e0,0x3c01bf80)
  eeObj.WriteMem32(0x001522ec,0x3c013f80)
 -- Cutscenes render fix
  eeObj.WriteMem32(0x00119a34,0x3c01c340)
  eeObj.WriteMem32(0x00119a50,0x3c014340)
 -- Partial font size fix
  eeObj.WriteMem32(0x0013bcac,0x3c013f40)
  eeObj.WriteMem32(0x0013bcd0,0xe4200d7c)
  eeObj.WriteMem32(0x0013bcf8,0x46000003)
  eeObj.WriteMem32(0x0013bcfc,0xe4200d6c)
 -- HUD fix (not fully tested)
  eeObj.WriteMem32(0x0023d668,0x3c013b40)
 -- FMV's fix
  eeObj.WriteMem32(0x00213588,0x24070156)
-- ==========

-- ==========
-- Alternative 16:10 hack by pgert - might not work with all BIOS types & configurations.
-- ==========
-- eeObj.WriteMem32(0x0033EC90,0x3F400000)
-- eeObj.WriteMem32(0x0033EC94,0x3F666666)
-- ==========

end

emuObj.AddVsyncHook(widescreen)