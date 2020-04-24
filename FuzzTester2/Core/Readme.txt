Keys:
 1: Cap 1 Up      2: Trans 1 Up      3: Trans 2 Up     A: Cap 2 Up
 4: Cap 1 Down    5: Trans 1 Down    6: Trans 2 Down   B: Cap 2 Down
 7: Cap 1 Info    8: Trans 1 Info    9: Trans 2 Info   C: Cap 2 Info
 *:               0:                 #:                D: 
 
 
Display:

           1234567890123456
 line 1:   A1 B12 C20 D8
 line 2:   Cap A1:100nF Cer    (last selected column when a ceramic capacitor is selected)
 line 2:   Cap D2:0.47uF El    (last selected column when an electrolytical capacitor is 
                                selected)
 line 2:   Trans B12: BC548B   (info of transistor)
           



  
Fuzz of 100 Faces

Original        Mine
1: 0.01 uF     1:   10 nF Ceramic
                    15 nF Ceramic
               2:   33 nF Ceramic
2: 0.047 uF         47 nF Ceramic
               3:   68 nF Ceramic
3: 0.1 uF      4:  100 nF Ceramic
                   0.22 uF Electrolytical
               5:  0.47 uF Electrolytical
4: 1 uF        6:     1 uF Electrolytical
                    2.2 uF Electrolytical
5: 4.7 uF      7:   4.7 uF Electrolytical
6: 10 uF       8:    10 uF Electrolytical
                     22 uF Electrolytical

Transistors:

Original (NPN)    Mine

1: 2N2222        1: 2N2222
2: 2N3904        2: 2N3904
4: 2N2102
3: 2N5088        3: 2N5088
                 4: 2N5551
                 5: A42
5: BC337         6: BC337-25
                 7: BC547B
6: BC548         8: BC548B
                 9: BC639
                10: C945
                11: C1815
                12: MPSA18
                13: S8050
                14: S9013
                15: S9014
                16: S9018
d

Graphic display by 1602, selection by keypad.

74HC595's will be used to drive CD4051's for the capacitors and CD4052's for the transistors.

For the connections, see MultiplexerConnections.



Notes
-----

A2->B10

USING MATRIX ARRAYS (3)
===================

Assuming collors can be tied together


Capacitors + Res                      Transistor's Base                      
----------------                      ---------------------------------      
Inputs (8)    Outputs (16)            Inputs (8)     Outputs (16)            
----------    ---------------------   ----------     ------------------      
0. Jack In     0.    10 nF -> X0      0. ToTransB    0. 2N2222A   -> Y0      
1. X0          1.    15 nF -> X1      1. Y0          1. MMBT3904  -> Y1      
2. X1          2.    33 nF -> X2      2. Y1          2. MMBT5551L -> Y2      
3. X2          3.    47 nF -> X3      3. Y2          3. MMBTA42   -> Y3      
4. X3          4.    68 nF -> X4      4. Y3          4. BC807     -> Y4      
5. 9V+100K     5.   100 nF -> X5      5. Y4          5. BC846     -> Y0      
6. 9V+10K      6.  0.22 uF -> X0      6. Y5          6. BC847B    -> Y1      
7. ToCapD      7.  0.47 uF -> X1      7. Y6          7. BC847C    -> Y2      
               8.  1    uF -> X2                     8. BC848B    -> Y3      
               9.  2.2  uF -> X3                     9. S9013     -> Y4      
              10.  4.7  uF -> X4                    10. S9018     -> Y0      
              11. 10/22 uF -> X5                    11. MPSA18 TH -> Y5      
              12.    -> B Collec                    12. MPSA18 TH -> Y6      
              13.    -> C Collec                    13. 2N5088 TH -> Y5      
              14.    -> ToTransB                    14. 2N5088 TH -> Y6      
              15.    -> Jack Out                    15.           -> ToCapD

Possibilities:

- Cap A: 12
- Trans B: 13
- Trans C: 11 (or 12)
- Cap D: 11

Total: 12 * 13 * 11 * 11 = 20K Fuzz

USING MATRIX ARRAYS (3)
===================
3 x MT8816 (8x16), one for capacitors, one for transistor's base, one for transistor's collector (9V + 10K or 100K resistor


Capacitors                            Transistor's Base                       Transistor's Collector
----------------                      ---------------------------------       ---------------------------
Inputs (8)    Outputs (16)            Inputs (8)     Outputs (16)             Inputs (8)     Outputs (16)
----------    ---------------------   ----------     ------------------       ----------     ----------------------
0. Jack In     0.    10 nF -> X0      0. ToTransB    0. 2N2222A   -> Y0       0. 9V + 100K    0. Trans  0 Collector
1. X0          1.    15 nF -> X1      1. Y0          1. MMBT3904  -> Y1       1. 9V + 10K     1. Trans  1
2. X1          2.    33 nF -> X2      2. Y1          2. MMBT5551L -> Y2                       2. Trans  2
3. X2          3.    47 nF -> X3      3. Y2          3. MMBTA42   -> Y3                       3. Trans  3
4. X3          4.    68 nF -> X4      4. Y3          4. BC807     -> Y4                       4. Trans  4
5. X4          5.   100 nF -> X5      5. Y4          5. BC846     -> Y5                       5. Trans  5
6. X5          6.  0.22 uF -> X0      6. Y5          6. BC847B    -> Y0                       6. Trans  6
7. ToCapD      7.  0.47 uF -> X1      7. Y6          7. BC847C    -> Y1                       7. Trans  7
               8.  1    uF -> X2                     8. BC848B    -> Y2                       8. Trans  8
               9.  2.2  uF -> X3                     9. S9013     -> Y3                       9. Trans  9
              10.  4.7  uF -> X4                    10. S9018     -> Y4                      10. Trans 10
              11. 10    uF -> X5                    11. MPSA18 TH -> Y0                      11. Trans 11
              12. 22    uF -> X0                    12. MPSA18 TH -> Y1                      12. Trans 12
              13. ??       -> X1                    13. 2N5088 TH -> Y2                      13. Trans 13
              14.    -> ToTransB                    14. 2N5088 TH -> Y3                      14. Trans 14
              15.    -> Jack Out                    15.           -> ToCapD

Unused: S8050, C945, 2SC1623, 2SC1815
TH capacitors one on each Y, so they can be used simultaneously.
                                                         
Total combinations: Cap A * Trans B * Trans C * Cap D =
                      14  *   13    *         *   13  =  
 
 
 
Capacitors                            Transistor B's Base                     Transistor C's Base   
----------------                      ---------------------------------       ---------------------------
Inputs (8)    Outputs (16)            Inputs (8)     Outputs (16)             Inputs (8)     Outputs (16)
----------    ---------------------   ----------     ------------------       ----------     ----------------------
0. Jack In     0.    10 nF -> X0      0. ToTransB    0. 2N2222A               ToTransC        Same as B
1. X0          1.    15 nF -> X1                     1. MMBT3904                             
2. X1          2.    33 nF -> X2                     2. MMBT5551L                            
3. X2          3.    47 nF -> X3                     3. MMBTA42                              
4. X3          4.    68 nF -> X4                     4. BC807                                
5. X4          5.   100 nF -> X5                     5. BC846                                
6. X5          6.  0.22 uF -> X0                     6. BC847B                               
7. FromTransC  7.  0.47 uF -> X1                     7. BC847C                               
               8.  1    uF -> X2                     8. BC848B                               
               9.  2.2  uF -> X3                     9. S9013                                
              10.  4.7  uF -> X4                    10. S9018                                
              11. 10    uF -> X5                    11. MPSA18 TH                            
              12. 22    uF -> X0                    12. TBD                          
              13. ??       -> X1                    13. 2N5088 TH                            
              14.    -> ToTransB                    14. TBD                                  
              15.    -> Jack Out                    15. TBD                

 