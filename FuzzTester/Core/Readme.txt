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


Graphic display by 1602, selection by keypad.

74HC595's will be used to drive CD4051's for the capacitors and CD4052's for the transistors.

For the connections, see MultiplexerConnections.



Notes
-----

A2->B10
