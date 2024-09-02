[33mcommit 6d0dcaa4f7742554cb5ac49ee3c94508de44c2f2[m[33m ([m[1;33mtag: [m[1;33mv0.1.1[m[33m)[m
Author: Andrés Motta <73041906+And9686@users.noreply.github.com>
Date:   Tue Jul 30 17:27:48 2024 +0100

    PCB v0 Finished
    
    PCB design ended, version 0

[1mdiff --git a/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-29_112619.zip b/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-29_112619.zip[m
[1mdeleted file mode 100644[m
[1mindex 848fe8a..0000000[m
Binary files a/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-29_112619.zip and /dev/null differ
[1mdiff --git a/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_155521.zip b/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_155521.zip[m
[1mnew file mode 100644[m
[1mindex 0000000..281aac9[m
Binary files /dev/null and b/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_155521.zip differ
[1mdiff --git a/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_160522.zip b/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_160522.zip[m
[1mnew file mode 100644[m
[1mindex 0000000..06d3b19[m
Binary files /dev/null and b/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_160522.zip differ
[1mdiff --git a/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_161615.zip b/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_161615.zip[m
[1mnew file mode 100644[m
[1mindex 0000000..c816d42[m
Binary files /dev/null and b/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_161615.zip differ
[1mdiff --git a/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_162341.zip b/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_162341.zip[m
[1mnew file mode 100644[m
[1mindex 0000000..b40f48a[m
Binary files /dev/null and b/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_162341.zip differ
[1mdiff --git a/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_171902.zip b/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_171902.zip[m
[1mnew file mode 100644[m
[1mindex 0000000..c72a6ca[m
Binary files /dev/null and b/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_171902.zip differ
[1mdiff --git a/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_172656.zip b/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_172656.zip[m
[1mnew file mode 100644[m
[1mindex 0000000..d50be61[m
Binary files /dev/null and b/algoritmi_pcb/algoritmi_kicad/algoritmi_foc-backups/algoritmi_foc-2024-07-30_172656.zip differ
[1mdiff --git a/algoritmi_pcb/algoritmi_kicad/algoritmi_foc.kicad_pcb b/algoritmi_pcb/algoritmi_kicad/algoritmi_foc.kicad_pcb[m
[1mindex aa52c5e..6dda2a2 100644[m
[1m--- a/algoritmi_pcb/algoritmi_kicad/algoritmi_foc.kicad_pcb[m
[1m+++ b/algoritmi_pcb/algoritmi_kicad/algoritmi_foc.kicad_pcb[m
[36m@@ -4,9 +4,12 @@[m
     (thickness 1.6)[m
   )[m
 [m
[31m-  (paper "A4")[m
[32m+[m[32m  (paper "A5")[m
   (title_block[m
     (title "ALGORITMI FOC SMARTKNOB")[m
[32m+[m[32m    (date "2024-07-30")[m
[32m+[m[32m    (rev "Andrés Motta")[m
[32m+[m[32m    (company "Universidade do Minho")[m
   )[m
 [m
   (layers[m
[36m@@ -122,34 +125,33 @@[m
   (net 27 "LCD_DC")[m
   (net 28 "LCD_RESET")[m
   (net 29 "LCD_BL")[m
[31m-  (net 30 "unconnected-(MSW1-NC-Pad2)")[m
[31m-  (net 31 "BRW")[m
[31m-  (net 32 "BRUV")[m
[31m-  (net 33 "UH")[m
[31m-  (net 34 "VH")[m
[31m-  (net 35 "WH")[m
[31m-  (net 36 "UL")[m
[31m-  (net 37 "WL")[m
[31m-  (net 38 "VL")[m
[31m-  (net 39 "W_OUT")[m
[31m-  (net 40 "U_OUT")[m
[31m-  (net 41 "V_OUT")[m
[31m-  (net 42 "unconnected-(U1-NC-Pad19)")[m
[31m-  (net 43 "unconnected-(J2-PadMP1)")[m
[31m-  (net 44 "unconnected-(J2-PadMP2)")[m
[31m-  (net 45 "unconnected-(MSW2-NC-Pad2)")[m
[31m-  (net 46 "unconnected-(MSW3-NC-Pad2)")[m
[31m-  (net 47 "unconnected-(MSW4-NC-Pad2)")[m
[31m-  (net 48 "SW1_OUT")[m
[31m-  (net 49 "SW2_OUT")[m
[31m-  (net 50 "SW3_OUT")[m
[31m-  (net 51 "SW4_OUT")[m
[31m-  (net 52 "unconnected-(J3-Pad13)")[m
[31m-  (net 53 "unconnected-(J3-Pad14)")[m
[32m+[m[32m  (net 30 "BRW")[m
[32m+[m[32m  (net 31 "BRUV")[m
[32m+[m[32m  (net 32 "UH")[m
[32m+[m[32m  (net 33 "VH")[m
[32m+[m[32m  (net 34 "WH")[m
[32m+[m[32m  (net 35 "UL")[m
[32m+[m[32m  (net 36 "WL")[m
[32m+[m[32m  (net 37 "VL")[m
[32m+[m[32m  (net 38 "W_OUT")[m
[32m+[m[32m  (net 39 "U_OUT")[m
[32m+[m[32m  (net 40 "V_OUT")[m
[32m+[m[32m  (net 41 "unconnected-(U1-NC-Pad19)")[m
[32m+[m[32m  (net 42 "unconnected-(J2-PadMP1)")[m
[32m+[m[32m  (net 43 "unconnected-(J2-PadMP2)")[m
[32m+[m[32m  (net 44 "unconnected-(MSW2-NC-Pad2)")[m
[32m+[m[32m  (net 45 "unconnected-(MSW3-NC-Pad2)")[m
[32m+[m[32m  (net 46 "unconnected-(MSW4-NC-Pad2)")[m
[32m+[m[32m  (net 47 "SW1_OUT")[m
[32m+[m[32m  (net 48 "SW2_OUT")[m
[32m+[m[32m  (net 49 "SW3_OUT")[m
[32m+[m[32m  (net 50 "SW4_OUT")[m
[32m+[m[32m  (net 51 "unconnected-(J3-Pad13)")[m
[32m+[m[32m  (net 52 "unconnected-(J3-Pad14)")[m
 [m
   (footprint "SamacSys_Parts:RESC3216X70N" (layer "F.Cu")[m
     (tstamp 0265e782-f65e-4c61-9de4-8a320cc7e48a)[m
[31m-    (at 270.1 121.16)[m
[32m+[m[32m    (at 129.097203 81.812559)[m
     (descr "2B (1206)")[m
     (tags "Resistor")[m
     (property "Height" "0.7")[m
[36m@@ -193,7 +195,7 @@[m
     (fp_line (start 1.6 0.8) (end -1.6 0.8)[m
       (stroke (width 0.1) (type solid)) (layer "F.Fab") (tstamp 1b33b8e2-2e48-4e6d-bb18-e88ad86d852f))[m
     (pad "1" smd rect (at -1.55 0) (size 1.05 1.8) (layers "F.Cu" "F.Paste" "F.Mask")[m
[31m-      (net 32 "BRUV") (pintype "passive") (tstamp 754efec8-6b7e-41c6-a0b3-2720fac9500c))[m
[32m+[m[32m      (net 31 "BRUV") (pintype "passive") (tstamp 754efec8-6b7e-41c6-a0b3-2720fac9500c))[m
     (pad "2" smd rect (at 1.55 0) (size 1.05 1.8) (layers "F.Cu" "F.Paste" "F.Mask")[m
       (net 1 "GND") (pintype "passive") (tstamp 6069fe92-7eba-4a59-ad54-7b8ca10df79b))[m
     (model "C:\\Users\\aluno\\Documents\\OUR_KNOB\\OUR_KNOB_PCB\\Library\\SamacSys_Parts.3dshapes\\UR73VH2BTTDR150F.stp"[m
[36m@@ -205,7 +207,7 @@[m
 [m
   (footprint "SamacSys_Parts:ERJUP3" (layer "F.Cu")[m
     (tstamp 0618e4cc-9128-435a-947e-56342de1f37b)[m
[31m-    (at 73.485 126.925)[m
[32m+[m[32m    (at 104.402203 38.102559 180)[m
     (descr "ERJUP3")[m
     (tags "Resistor")[m
     (property "Height" "0.55")[m
[36m@@ -218,7 +220,7 @@[m
     (property "ki_description" "Anti-Sulfurated Thick Film Chip Resistors/ Anti-Surge Type, Power Rating (W): 0.25, Chip Size (LxW(EIA)) (mm): 1.6 x 0.8 (EIA:0603), Resistance Values (?): 300, Resistance Tolerance (%): 1, T.C.R (?102/K): ?100")[m
     (path "/ecdbd5fc-959b-4cec-9c31-36793fd99d78")[m
     (attr smd)[m
[31m-    (fp_text reference "R12" (at 0 0) (layer "F.SilkS")[m
[32m+[m[32m    (fp_text reference "R12" (at 0.055 1.61) (layer "F.SilkS")[m
         (effects (font (size 1.27 1.27) (thickness 0.254)))[m
       (tstamp 4d24d216-3325-49be-be06-82a7a7e42358)[m
     )[m
[36m@@ -248,9 +250,9 @@[m
       (stroke (width 0.2) (type solid)) (layer "F.Fab") (tstamp 9c2aefad-18b4-4f5a-8fc1-8d3f9a39a482))[m
     (fp_line (start 0.8 0.4) (end -0.8 0.4)[m
       (stroke (width 0.2) (type solid)) (layer "F.Fab") (tstamp 85e387e9-5142-4a28-9217-1a14f14aa00d))[m
[31m-    (pad "1" smd rect (at -0.575 0) (size 0.65 0.9) (layers "F.Cu" "F.Paste" "F.Mask")[m
[31m-      (net 49 "SW2_OUT") (pinfunction "1") (pintype "passive") (tstamp b9daa611-fc5d-4028-9a0a-cf6657be89df))[m
[31m-    (pad "2" smd rect (at 0.575 0) (size 0.65 0.9) (layers "F.Cu" "F.Paste" "F.Mask")[m
[32m+[m[32m    (pad "1" smd rect (at -0.575 0 180) (size 0.65 0.9) (layers "F.Cu" "F.Paste" "F.Mask")[m
[32m+[m[32m      (net 48 "SW2_OUT") (pinfunction "1") (pintype "passive") (tstamp b9daa611-fc5d-4028-9a0a-cf6657be89df))[m
[32m+[m[32m    (pad "2" smd rect (at 0.575 0 180) (size 0.65 0.9) (layers "F.Cu" "F.Paste" "F.Mask")[m
       (net 2 "VS") (pintype "passive") (tstamp e0c6296d-190f-4e0a-8832-42b28366ba48))[m
     (model "C:\\Users\\aluno\\Documents\\OUR_KNOB\\OUR_KNOB_PCB\\Library\\SamacSys_Parts.3dshapes\\ERJ-UP3F3000V.stp"[m
       (offset (xyz 0 0 0))[m
[36m@@ -261,7 +263,7 @@[m
 [m
   (footprint "SamacSys_Parts:CAPC1608X90N" (layer "F.Cu")[m
     (tstamp 09070162-08c6-484b-99b3-f0ac2518a41e)[m
[31m-    (at 136.4 94.77)[m
[32m+[m[32m    (at 133.157203 73.122559 180)[m
     (descr "0603")[m
     (tags "Capacitor")[m
     (property "Height" "0.9")[m
[36m@@ -274,7 +276,7 @@[m
     (property "ki_description" "Multilayer Ceramic Capacitors MLCC - SMD/SMT 100nF+/-10% 50V X7R 1608")[m
     (path "/b2282b5c-665f-424b-b221-e1749c89a9cb")[m
     (attr smd)[m
[31m-    (fp_text reference "C1" (at 0 0) (layer "F.SilkS")[m
[32m+[m[32m    (fp_text reference "C1" (at 2.61 0) (layer "F.SilkS")[m
         (effects (font (size 1.27 1.27) (thickness 0.254)))[m
       (tstamp 438e04ed-90ec-46f8-a764-f2d1516aa6c0)[m
     )[m
[36m@@ -302,9 +304,9 @@[m
       (stroke (width 0.1) (type solid)) (layer "F.Fab") (tstamp 6f8449c7-e386-490c-adef-36e3c975718c))[m
     (fp_line (start 0.8 0.4) (end -0.8 0.4)[m
       (stroke (width 0.1) (type solid)) (layer "F.Fab") (tstamp 733ea39a-2269-4e5b-9431-809259e2e235))[m
[31m-    (pad "1" smd rect (at -0.71 0) (size 0.73 0.94) (layers "F.Cu" "F.Paste" "F.Mask")[m
[32m+[m[32m    (pad "1" smd rect (at -0.71 0 180) (size 0.73 0.94) (layers "F.Cu" "F.Paste" "F.Mask")[m
       (net 1 "GND") (pintype "passive") (tstamp 41f6a055-3bb2-47c2-9cd9-f5f8dbcd764d))[m
[31m-    (pad "2" smd rect (at 0.71 0) (size 0.73 0.94) (layers "F.Cu" "F.Paste" "F.Mask")[m
[32m+[m[32m    (pad "2" smd rect (at 0.71 0 180) (size 0.73 0.94) (layers "F.Cu" "F.Paste" "F.Mask")[m
       (net 2 "VS") (pintype "passive") (tstamp 2a7e47e7-507a-4815-acc3-63b4d5b8fe60))[m
     (model "C:\\Users\\aluno\\Documents\\OUR_KNOB\\OUR_KNOB_PCB\\Library\\SamacSys_Parts.3dshapes\\CL10A105KA8NNNC.stp"[m
       (offset (xyz 0 0 0))[m
[36m@@ -315,7 +317,7 @@[m
 [m
   (footprint "SamacSys_Parts:RESC1608X55N" (layer "F.Cu")[m
     (tstamp 0989f62c-8ccb-4530-85d9-1cd4d63a6a05)[m
[31m-    (at 260.95 125)[m
[32m+[m[32m    (at 119.737203 85.832559)[m
     (descr "CR0603")[m
     (tags "Resistor")[m
     (property "Height" "0.55")[m
[36m@@ -361,7 +363,7 @@[m
     (pad "1" smd rect (at -0.8 0) (size 0.9 0.95) (layers "F.Cu" "F.Paste" "F.Mask")[m
       (net 1 "GND") (pintype "passive") (tstamp 03cf3842-e45f-469f-8565-2b68b233ac24))[m
     (pad "2" smd rect (at 0.8 0) (size 0.9 0.95) (layers "F.Cu" "F.Paste" "F.Mask")[m
[31m-      (net 34 "VH") (pintype "passive") (tstamp 2c2f0d1d-fd2e-4c0b-8489-ccd26c7b0e4a))[m
[32m+[m[32m      (net 33 "VH") (pintype "passive") (tstamp 2c2f0d1d-fd2e-4c0b-8489-ccd26c7b0e4a))[m
     (model "C:\\Users\\aluno\\Documents\\OUR_KNOB\\OUR_KNOB_PCB\\Library\\SamacSys_Parts.3dshapes\\CMP0603-FX-1003ELF.stp"[m
       (offset (xyz 0 0 0))[m
       (scale (xyz 1 1 1))[m
[36m@@ -371,36 +373,36 @@[m
 [m
   (footprint "solder_pads:solder_pads_4mm_3" (layer "F.Cu")[m
     (tstamp 0d43059d-dc0d-4c3d-b113-0bdf137da7b4)[m
[31m-    (at 66.6 152)[m
[32m+[m[32m    (at 78.833575 39.505119 -135)[m
     (property "Link" "https://pt.mouser.com/ProductDetail/Saia-Burgess/XCF3Z1?qs=lDMevKbHVysAJU%252Bj62uRPA%3D%3D")[m
     (property "Mouser" "906-XCF3Z1 ")[m
     (property "Sheetfile" "algoritmi_foc.kicad_sch")[m
     (property "Sheetname" "")[m
     (path "/a2453160-1f85-4bbe-b2c9-d82ef3fc41db")[m
     (attr through_hole)[m
[31m-    (fp_text reference "MSW4" (at 0 -0.5 unlocked) (layer "F.SilkS")[m
[32m+[m[32m    (fp_text reference "MSW4" (at 0 -0.5 -135 unlocked) (layer "F.SilkS")[m
         (effects (font (size 1 1) (thickness 0.1)))[m
       (tstamp e527a8bc-b55e-4a53-a433-1be94b9eb54a)[m
     )[m
[31m-    (fp_text value "~" (at 0 1 unlocked) (layer "F.Fab")[m
[32m+[m[32m    (fp_text value "~" (at 0 1 -135 unlocked) (layer "F.Fab")[m
         (effects (font (size 1 1) (thickness 0.15)))[m
       (tstamp 1ea39145-2cc9-4820-b037-e4e0ea565cc0)[m
     )[m
[31m-    (fp_text user "${REFERENCE}" (at 0 2.5 unlocked) (layer "F.Fab")[m
[32m+[m[32m    (fp_text user "${REFERENCE}" (at 0 2.5 -135 unlocked) (layer "F.Fab")[m
         (effects (font (size 1 1) (thickness 0.15)))[m
       (tstamp c8cf5091-f489-41e2-a83a-e674c11d6547)[m
     )[m
[31m-    (pad "1" thru_hole oval (at -3.79 -5 90) (size 6 2) (drill oval 4.3 1) (layers "*.Cu" "*.Mask")[m
[32m+[m[32m    (pad "1" thru_hole oval (at -3.79 -5 315) (size 6 2) (drill oval 4.3 1) (layers "*.Cu" "*.Mask")[m
       (net 1 "GND") (pinfunction "COM") (pintype "input") (tstamp d68b0154-6932-4773-9645-d80972efa746))[m
[31m-    (pad "2" thru_hole oval (at -0.24 -5 90) (size 6 2) (drill oval 4.3 1) (layers "*.Cu" "*.Mask")[m
[31m-      (net 47 "unconnected-(MSW4-NC-Pad2)") (pinfunction "NC") (pintype "input+no_connect") (tstamp 045ad535-8eff-416b-bb62-406df224fa3f))[m
[31m-    (pad "4" thru_hole oval (at 3.06 -5 90) (size 6 2) (drill oval 4.3 1) (layers "*.Cu" "*.Mask")[m
[31m-      (net 51 "SW4_OUT") (pinfunction "NO") (pintype "input") (tstamp 0c9b8328-6b7b-47bf-9128-42be83fe560f))[m
[32m+[m[32m    (pad "2" thru_hole oval (at -0.24 -5 315) (size 6 2) (drill oval 4.3 1) (layers "*.Cu" "*.Mask")[m
[32m+[m[32m      (net 46 "unconnected-(MSW4-NC-Pad2)") (pinfunction "NC") (pintype "input+no_connect") (tstamp 045ad535-8eff-416b-bb62-406df224fa3f))[m
[32m+[m[32m    (pad "4" thru_hole oval (at 3.06 -5 315) (size 6 2) (drill oval 4.3 1) (layers "*.Cu" "*.Mask")[m
[32m+[m[32m      (net 50 "SW4_OUT") (pinfunction "NO") (pintype "input") (tstamp 0c9b8328-6b7b-47bf-9128-42be83fe560f))[m
   )[m
 [m
   (footprint "SamacSys_Parts:RESC3216X70N" (layer "F.Cu")[m
     (tstamp 1807406e-d24d-4618-970d-50842edfaa83)[m
[31m-    (at 265.35 119.81 90)[m
[32m+[m[32m    (at 124.137203 80.642559 90)[m
     (descr "2B (1206)")[m
     (tags "Resistor")[m
     (property "Height" "0.7")[m
[36m@@ -444,7 +446,7 @@[m
     (fp_line (start 1.6 0.8) (end -1.6 0.8)[m
       (stroke (width 0.1) (type solid)) (layer "F.Fab") (tstamp bf6aa447-a105-4172-8bb1-f62b59ecfda6))[m
     (pad "1" smd rect (at -1.55 0 90) (size 1.05 1.8) (layers "F.Cu" "F.Paste" "F.Mask")[m
[31m-      (net 31 "BRW") (pintype "passive") (tstamp 0ce300c4-c286-4879-bd84-ffd0d896c808))[m
[32m+[m[32m      (net 30 "BRW") (pintype "passive") (tstamp 0ce300c4-c286-4879-bd84-ffd0d896c808))[m
     (pad "2" smd rect (at 1.55 0 90) (size 1.05 1.8) (layers "F.Cu" "F.Paste" "F.Mask")[m
       (net 1 "GND") (pintype "passive") (tstamp 379d2af1-7371-407f-a0ee-b67417bb1534))[m
     (model "C:\\Users\\aluno\\Documents\\OUR_KNOB\\OUR_KNOB_PCB\\Library\\SamacSys_Parts.3dshapes\\UR73VH2BTTDR150F.stp"[m
[36m@@ -456,7 +458,7 @@[m
 [m
   (footprint "SamacSys_Parts:RESC1608X55N" (layer "F.Cu")[m
     (tstamp 20c69a82-e812-46cd-a9f2-a79cb6a10696)[m
[31m-    (at 262.11 129.76 90)[m
[32m+[m[32m    (at 120.897203 90.592559 90)[m
     (descr "CR0603")[m
     (tags "Resistor")[m
     (property "Height" "0.55")[m
[36m@@ -502,7 +504,7 @@[m
     (pad "1" smd rect (at -0.8 0 90) (size 0.9 0.95) (layers "F.Cu" "F.Paste" "F.Mask")[m
       (net 1 "GND") (pintype "passive") (tstamp 9d446bd4-87a4-4509-97e0-36ffcde13569))[m
     (pad "2" smd rect (at 0.8 0 90) (size 0.9 0.95) (layers "F.Cu" "F.Paste" "F.Mask")[m
[31m-      (net 37 "WL") (pintype "passive") (tstamp a5135fe3-ff65-4ff9-bcd0-8add63c7122e))[m
[32m+[m[32m      (net 36 "WL") (pintype "passive") (tstamp a5135fe3-ff65-4ff9-bcd0-8add63c7122e))[m
     (model "C:\\Users\\aluno\\Documents\\OUR_KNOB\\OUR_KNOB_PCB\\Library\\SamacSys_Parts.3dshapes\\CMP0603-FX-1003ELF.stp"[m
       (offset (xyz 0 0 0))[m
       (scale (xyz 1 1 1))[m
[36m@@ -512,7 +514,7 @@[m
 [m
   (footprint "SamacSys_Parts:ERJUP3" (layer "F.Cu")[m
     (tstamp 25c5c3e1-3049-457b-a035-663652e458d9)[m
[31m-    (at 271.125 132.36)[m
[32m+[m[32m    (at 129.912203 93.192559)[m
     (descr "ERJUP3")[m
     (tags "Resistor")[m
     (property "Height" "0.55")[m
[36m@@ -568,7 +570,7 @@[m
 [m
   (footprint "SamacSys_Parts:CAPC2012X145N" (layer "F.Cu")[m
     (tstamp 2b43740f-d52d-484f-8abe-151a8b5b9844)[m
[31m-    (at 269.37 118.07 180)[m
[32m+[m[32m    (at 128.157203 78.902559 180)[m
     (descr "CL21A106KAYNNNE")[m
     (tags "Capacitor")[m
     (property "Height" "1.45")[m
[36m@@ -622,7 +624,7 @@[m
 [m
   (footprint "SamacSys_Parts:QFN40P300X300X90-21N" (layer "F.Cu")[m
     (tstamp 3132141e-6b92-468e-bcc3-e53fc9837269)[m
[31m-    (at 266.9 124.61)[m
[32m+[m[32m    (at 125.687203 85.442559)[m
     (descr "QFN20_2023")[m
     (tags "Integrated Circuit")[m
     (property "Sheetfile" "algoritmi_foc.kicad_sch")[m
[36m@@ -663,25 +665,25 @@[m
     (fp_line (start 1.5 1.5) (end -1.5 1.5)[m
       (stroke (width 0.1) (type solid)) (layer "F.Fab") (tstamp eaa34c53-7492-4d3e-84c8-bdcf6278c3c3))[m
     (pad "1" smd rect (at -1.5 -0.8 90) (size 0.2 0.8) (layers "F.Cu" "F.Paste" "F.Mask")[m
[31m-      (net 39 "W_OUT") (pinfunction "W") (pintype "output") (tstamp 916296a3-acee-4c20-9305-c06eed30fece))[m
[32m+[m[32m      (net 38 "W_OUT") (pinfunction "W") (pintype "output") (tstamp 916296a3-acee-4c20-9305-c06eed30fece))[m
     (pad "2" smd rect (at -1.5 -0.4 90) (size 0.2 0.8) (layers "F.Cu" "F.Paste" "F.Mask")[m
       (net 5 "VCP") (pinfunction "VCP") (pintype "power_in") (tstamp 776bab2a-a29a-4497-9cf2-acb796f9bd3f))[m
     (pad "3" smd rect (at -1.5 0 90) (size 0.2 0.8) (layers "F.Cu" "F.Paste" "F.Mask")[m
[31m-      (net 33 "UH") (pinfunction "UH") (pintype "input") (tstamp 2557dcc3-4328-4554-9b2e-aa7bb7441ec5))[m
[32m+[m[32m      (net 32 "UH") (pinfunction "UH") (pintype "input") (tstamp 2557dcc3-4328-4554-9b2e-aa7bb7441ec5))[m
     (pad "4" smd rect (at -1.5 0.4 90) (size 0.2 0.8) (layers "F.Cu" "F.Paste" "F.Mask")[m
[31m-      (net 34 "VH") (pinfunction "VH") (pintype "input") (tstamp 9b06ddaa-91e7-463c-a2a4-1ec2039196b1))[m
[32m+[m[32m      (net 33 "VH") (pinfunction "VH") (pintype "input") (tstamp 9b06ddaa-91e7-463c-a2a4-1ec2039196b1))[m
     (pad "5" smd rect (at -1.5 0.8 90) (size 0.2 0.8) (layers "F.Cu" "F.Paste" "F.Mask")[m
[31m-      (net 35 "WH") (pinfunction "WH") (pintype "input") (tstamp 17a18ae9-6dad-4052-9322-7847a882b10e))[m
[32m+[m[32m      (net 34 "WH") (pinfunction "WH") (pintype "input") (tstamp 17a18ae9-6dad-4052-9322-7847a882b10e))[m
     (pad "6" smd rect (at -0.8 1.5) (size 0.2 0.8) (layers "F.Cu" "F.Paste" "F.Mask")[m
[31m-      (net 36 "UL") (pinfunction "UL") (pintype "input") (tstamp 8d3a4876-9a53-46b8-a45f-0ba2eef841d4))[m
[32m+[m[32m      (net 35 "UL") (pinfunction "UL") (pintype "input") (tstamp 8d3a4876-9a53-46b8-a45f-0ba2eef841d4))[m
     (pad "7" smd rect (at -0.4 1.5) (size 0.2 0.8) (layers "F.Cu" "F.Paste" "F.Mask")[m
[31m-      (net 37 "WL") (pinfunction "WL") (pintype "input") (tstamp b8ae492d-f6f9-4775-bfa0-3d94eeee6ad9))[m
[32m+[m[32m      (net 36 "WL") (pinfunction "WL") (pintype "input") (tstamp b8ae492d-f6f9-4775-bfa0-3d94eeee6ad9))[m
     (pad "8" smd rect (at 0 1.5) (size 0.2 0.8) (layers "F.Cu" "F.Paste" "F.Mask")[m
       (net 1 "GND") (pinfunction "GND") (pintype "power_out") (tstamp 0b0fe6d9-5a04-477c-87a9-6375c70e686f))[m
     (pad "9" smd rect (at 0.4 1.5) (size 0.2 0.8) (layers "F.Cu" "F.Paste" "F.Mask")[m
       (net 1 "GND") (pinfunction "GND") (pintype "power_out") (tstamp e7970a5b-9f2e-4981-80bc-cc76fb90809d))[m
     (pad "10" smd rect (at 0.8 1.5) (size 0.2 0.8) (layers "F.Cu" "F.Paste" "F.Mask")[m
[31m-      (net 38 "VL") (pinfunction "VL") (pintype "input") (tstamp cc18bc1e-829e-4002-a443-f3623479f097))[m
[32m+[m[32m      (net 37 "VL") (pinfunction "VL") (pintype "input") (tstamp cc18bc1e-829e-4002-a443-f3623479f097))[m
     (pad "11" smd rect (at 1.5 0.8 90) (size 0.2 0.