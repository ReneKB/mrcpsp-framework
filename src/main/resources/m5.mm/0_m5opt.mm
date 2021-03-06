==================================================================
Authors's Name		:A. Sprecher / A. Drexl
Authors's Email		:Drexl@bwl.uni-kiel.de
Instance Set		:M5
Type			:MM
Date			    : 2/15/96
=======================================================================
Research Report: Solving Multi-Mode Resource-Constrained Project
		 Scheduling Problems by a Simple, General and Powerful
		 Sequencing Algorithm. Part I: Theory and Part II
		 Computation.
		 Research Reports 385 and 386, Institut fuer Betriebs-
		 wirtschaftslehre, Christian-Albrechts-Univeritaet zu
		 Kiel.
=======================================================================
Computer	 : IBM compatible Personal Computer
Processor	 : 80486 dx
Clockpulse	 : 66 MHz
Operating System : OS/2
Memory Code	 : 100 KB
Memory Data	 :   8 MB
Language	 : GNU C
Average CPU-Time : 264.65 sec.
=======================================================================
   Paramter Instance  Makespan	CPU-Time[sec.]
-----------------------------------------------------------------------
       1       1	   63	 184.00
       1       2	   48	 151.12
       1       3	16384	  29.32
       1       4	16384	 112.34
       1       5	16384	 420.00
       1       6	16384	  58.19
       1       7	16384	   0.00
       1       8	16384	  25.47
       1       9	   48	 132.25
       1      10	16384	  28.44
       2       1	16384	 102.47
       2       2	16384	 148.25
       2       3	16384	  77.53
       2       4	16384	 353.59
       2       5	16384	  32.29
       2       6	   47	  24.56
       2       7	16384	  56.15
       2       8	16384	 221.12
       2       9	16384	 148.50
       2      10	16384	  36.37
       3       1	16384	 110.03
       3       2	16384	 129.60
       3       3	16384	  38.63
       3       4	16384	  19.66
       3       5	16384	 340.63
       3       6	   28	  26.91
       3       7	   32	 377.03
       3       8	16384	 217.47
       3       9	16384	  42.37
       3      10	16384	  75.72
       4       1	16384	 112.00
       4       2	   30	 199.09
       4       3	   43	  42.25
       4       4	16384	 484.53
       4       5	   32	 193.91
       4       6	16384	  29.13
       4       7	16384	 200.72
       4       8	16384	  74.93
       4       9	   30	 292.75
       4      10	16384	  89.13
       5       1	16384	  39.03
       5       2	   53	3598.35
       5       3	16384	  38.59
       5       4	   56	 509.03
       5       5	   45	 129.19
       5       6	16384	  91.25
       5       7	16384	 122.59
       5       8	16384	 763.97
       5       9	16384	 887.43
       5      10	   48	 926.47
       6       1	16384	 239.69
       6       2	16384	 286.09
       6       3	16384	2763.35
       6       4	16384	  43.31
       6       5	   32	 913.40
       6       6	16384	 898.15
       6       7	16384	 455.31
       6       8	16384	 270.75
       6       9	16384	  33.56
       6      10	   34	 311.79
       7       1	16384	  72.09
       7       2	16384	 264.12
       7       3	   36	2882.18
       7       4	16384	1649.40
       7       5	   28	 635.40
       7       6	16384	  48.00
       7       7	   29	 566.84
       7       8	   35	 246.78
       7       9	16384	 199.88
       7      10	16384	 312.06
       8       1	   40	 163.03
       8       2	   35	 487.21
       8       3	16384	  43.25
       8       4	16384	  31.31
       8       5	16384	 124.72
       8       6	16384	  65.97
       8       7	16384	 190.28
       8       8	16384	 231.28
       8       9	16384	 266.07
       8      10	16384	  82.56
       9       1	16384	   0.03
       9       2	16384	   0.03
       9       3	16384	   0.00
       9       4	   20	  24.00
       9       5	   25	   2.34
       9       6	   23	   7.41
       9       7	   29	   3.13
       9       8	16384	   0.00
       9       9	16384	   0.03
       9      10	   30	  11.94
      10       1	   15	   0.50
      10       2	   15	   0.56
      10       3	   17	  12.78
      10       4	   19	   3.00
      10       5	   13	   0.25
      10       6	   17	   0.22
      10       7	   23	   1.81
      10       8	   16	   0.47
      10       9	   13	   0.62
      10      10	   15	   2.12
      11       1	   16	   2.97
      11       2	   21	   1.25
      11       3	   21	   0.28
      11       4	   16	   0.29
      11       5	   15	   0.31
      11       6	   13	   1.10
      11       7	   13	   0.41
      11       8	   18	   0.81
      11       9	   14	   0.40
      11      10	   18	   0.25
      12       1	   15	   0.25
      12       2	   11	   0.22
      12       3	   13	   0.75
      12       4	   14	   0.62
      12       5	    8	   1.47
      12       6	   10	   3.87
      12       7	   19	   0.34
      12       8	   17	   2.31
      12       9	   19	   1.66
      12      10	   14	   0.78
      13       1	   27	  95.72
      13       2	   22	 524.53
      13       3	   23	  41.71
      13       4	   22	   5.75
      13       5	   25	 526.10
      13       6	   21	 241.97
      13       7	   26	  31.88
      13       8	   22	   8.57
      13       9	   24	  22.34
      13      10	   32	  59.47
      14       1	   19	   0.38
      14       2	   15	   0.53
      14       3	   16	   0.57
      14       4	   17	   0.88
      14       5	   19	   4.53
      14       6	   18	  12.47
      14       7	   15	   3.82
      14       8	   18	   0.78
      14       9	   18	  16.44
      14      10	   13	   0.91
      15       1	   13	   0.25
      15       2	   16	   0.78
      15       3	   15	   0.50
      15       4	   14	   1.00
      15       5	   13	  11.00
      15       6	   13	   0.32
      15       7	   19	   0.59
      15       8	   13	   2.12
      15       9	   15	   1.53
      15      10	   19	   0.19
      16       1	   12	   1.66
      16       2	   18	   0.22
      16       3	   12	   0.19
      16       4	   15	   0.97
      16       5	   16	   0.25
      16       6	   11	   1.47
      16       7	   12	   0.60
      16       8	   15	   0.41
      16       9	   18	  16.97
      16      10	   17	   0.44
      17       1	   20	   9.81
      17       2	   17	   0.47
      17       3	   33	   0.40
      17       4	16384	   0.00
      17       5	   28	   3.63
      17       6	16384	   0.03
      17       7	16384	   0.03
      17       8	   23	   2.13
      17       9	   27	 135.75
      17      10	   16	   1.46
      18       1	   13	   0.31
      18       2	   19	   0.34
      18       3	   19	   0.35
      18       4	   13	   0.28
      18       5	   14	   0.75
      18       6	   17	   0.47
      18       7	   16	   0.50
      18       8	   16	   0.97
      18       9	   12	   0.31
      18      10	   15	   0.41
      19       1	   13	   0.35
      19       2	   14	   0.38
      19       3	   17	   0.31
      19       4	   20	   0.37
      19       5	   13	   0.34
      19       6	   16	   0.38
      19       7	   20	   0.34
      19       8	   21	   0.47
      19       9	   21	   0.34
      19      10	   13	   0.56
      20       1	   15	   0.38
      20       2	   12	   0.53
      20       3	   17	   2.06
      20       4	   14	   2.78
      20       5	   16	   0.31
      20       6	   12	   5.22
      20       7	   12	   3.72
      20       8	   16	   0.69
      20       9	   14	   0.47
      20      10	   22	   0.82
      21       1	   22	  27.94
      21       2	   20	 149.53
      21       3	   25	 770.06
      21       4	   20	  26.56
      21       5	   27	 159.53
      21       6	   21	  33.78
      21       7	   17	  89.16
      21       8	   24	   4.25
      21       9	   18	  24.25
      21      10	   20	  47.53
      22       1	   18	   3.50
      22       2	   14	   0.31
      22       3	   13	  14.12
      22       4	   13	   0.40
      22       5	   18	   3.43
      22       6	   14	   0.47
      22       7	   15	   1.75
      22       8	   14	   1.18
      22       9	   15	   3.90
      22      10	   12	   0.34
      23       1	   22	   0.32
      23       2	   18	   0.75
      23       3	   23	   0.31
      23       4	   15	   0.28
      23       5	   11	   0.32
      23       6	   10	   0.40
      23       7	   16	   0.31
      23       8	   13	   1.75
      23       9	   12	   0.34
      23      10	   17	   0.44
      24       1	   14	   0.54
      24       2	   15	   0.41
      24       3	   11	   0.75
      24       4	   13	   9.85
      24       5	   15	   1.38
      24       6	    9	   0.31
      24       7	   21	   0.34
      24       8	   16	   3.47
      24       9	   17	   0.32
      24      10	   15	   0.50
      25       1	   28	   2.07
      25       2	   30	   0.28
      25       3	   22	   5.16
      25       4	   20	   5.09
      25       5	   19	   0.60
      25       6	   25	   0.62
      25       7	   22	   1.72
      25       8	   31	   3.75
      25       9	   17	   1.38
      25      10	   15	   0.25
      26       1	   13	   0.06
      26       2	   11	   0.07
      26       3	   21	   0.09
      26       4	   12	   0.09
      26       5	   14	   0.13
      26       6	   21	   0.12
      26       7	   14	   0.12
      26       8	   12	   0.06
      26       9	   10	   0.19
      26      10	   14	   0.13
      27       1	   16	   0.09
      27       2	   19	   0.09
      27       3	   18	   0.10
      27       4	   13	   0.06
      27       5	   13	   0.09
      27       6	   19	   0.04
      27       7	   17	   0.12
      27       8	   14	   0.06
      27       9	   13	   0.13
      27      10	   17	   0.06
      28       1	   23	   0.22
      28       2	   20	   0.06
      28       3	   16	   0.15
      28       4	   11	   0.06
      28       5	   14	   0.04
      28       6	   18	   0.06
      28       7	   16	   0.06
      28       8	   13	   0.07
      28       9	   12	   0.06
      28      10	   16	   0.03
      29       1	   19	   0.97
      29       2	   23	   1.78
      29       3	   25	   6.47
      29       4	   19	   5.75
      29       5	   19	   1.53
      29       6	   32	  11.19
      29       7	   33	   2.35
      29       8	   19	   1.56
      29       9	   19	   3.91
      29      10	   27	   4.34
      30       1	   22	   0.06
      30       2	   13	   0.07
      30       3	   15	   0.03
      30       4	   15	   0.15
      30       5	   19	   0.32
      30       6	   13	   0.09
      30       7	   27	   1.62
      30       8	   23	   0.28
      30       9	   18	   0.53
      30      10	   12	   0.10
      31       1	   14	   0.06
      31       2	   20	   0.03
      31       3	   15	   0.03
      31       4	   16	   0.09
      31       5	   16	   0.06
      31       6	   17	   0.06
      31       7	   17	   0.03
      31       8	   13	   0.03
      31       9	   14	   0.06
      31      10	   19	   0.07
      32       1	   20	   0.09
      32       2	   13	   0.06
      32       3	   13	   0.13
      32       4	   14	   0.06
      32       5	   18	   0.07
      32       6	   14	   0.06
      32       7	   13	   0.06
      32       8	   16	   0.06
      32       9	   11	   0.06
      32      10	   18	   0.03
      33       1	   39	 120.16
      33       2	16384	   0.03
      33       3	   33	 554.12
      33       4	   43	  18.66
      33       5	   41	 444.19
      33       6	   43	  14.09
      33       7	   40	 148.78
      33       8	16384	   0.00
      33       9	   43	  58.44
      33      10	   33	 394.00
      34       1	   28	 455.18
      34       2	   28	 712.31
      34       3	   33	 246.82
      34       4	   35	 801.50
      34       5	   29	 318.43
      34       6	   31	 544.18
      34       7	   27	 195.06
      34       8	   32	 165.97
      34       9	   33	  33.40
      34      10	   27	3982.62
      35       1	   32	 271.56
      35       2	   29	 168.69
      35       3	   27	 147.31
      35       4	   31	 525.97
      35       5	   28	1502.81
      35       6	   22	 710.32
      35       7	   29	 417.19
      35       8	   28	  22.97
      35       9	   24	 949.25
      35      10	   30	  43.28
      36       1	16384	  48.19
      36       2	16384	 383.22
      36       3	16384	  74.88
      36       4	   47	 224.53
      36       5	16384	 416.84
      36       6	16384	  50.65
      36       7	16384	  23.84
      36       8	16384	  59.63
      36       9	   43	 626.41
      36      10	16384	  73.78
      37       1	   33	 274.12
      37       2	   42	1295.18
      37       3	   35	3099.75
      37       4	   34	2219.88
      37       5	   46	1526.50
      37       6	   41	 969.35
      37       7	   38	  85.53
      37       8	   27	 464.59
      37       9	   46	 157.32
      37      10	   35  14165.88
      38       1	   28	4207.28
      38       2	   35	 128.62
      38       3	   31	 128.65
      38       4	   37	1417.84
      38       5	   29	1344.94
      38       6	   28	3440.22
      38       7	   31	 416.06
      38       8	   26	 123.94
      38       9	   31	 870.50
      38      10	   32	 161.75
      39       1	   33	2531.03
      39       2	   32	1689.38
      39       3	   26	 197.19
      39       4	   39	 237.66
      39       5	   33	 574.72
      39       6	   30	 671.60
      39       7	   28	 855.13
      39       8	   26	 145.88
      39       9	   28	1056.62
      39      10	   28	1530.62
      40       1	   29	 211.03
      40       2	   33	 563.41
      40       3	   29	  64.66
      40       4	   24	3652.25
      40       5	   28	 265.43
      40       6	   33	 283.41
      40       7	   29	 991.02
      40       8	   32	 169.09
      40       9	   33	  91.70
      40      10	   24	 112.97
      41       1	   25	 134.65
      41       2	   25	  64.59
      41       3	   37	  43.35
      41       4	   24	  49.41
      41       5	16384	   0.03
      41       6	   24	  76.97
      41       7	16384	   0.03
      41       8	16384	   0.03
      41       9	   26	  34.78
      41      10	   29	  87.44
      42       1	   23	  48.78
      42       2	   33	  16.85
      42       3	   21	 667.25
      42       4	   25	  62.32
      42       5	   20	 180.48
      42       6	   26	 332.35
      42       7	   21	  67.03
      42       8	   23	 107.53
      42       9	   18	 118.57
      42      10	   18	 291.30
      43       1	   23	 146.12
      43       2	   26	 153.43
      43       3	   17	 194.34
      43       4	   27	  15.40
      43       5	   21	 288.81
      43       6	   26	  83.13
      43       7	   26	 104.84
      43       8	   23	 102.94
      43       9	   18	 470.25
      43      10	   20	 617.72
      44       1	   20	 300.00
      44       2	   20	 211.78
      44       3	   26	  33.90
      44       4	   19	1750.03
      44       5	   23	1591.41
      44       6	   22	  32.63
      44       7	   25	  99.80
      44       8	   18	 298.78
      44       9	   19	1903.53
      44      10	   25	 288.21
      45       1	   30	 589.52
      45       2	   37	 361.09
      45       3	   26	1209.75
      45       4	   26	1789.30
      45       5	   28	5488.41
      45       6	   30	1667.68
      45       7	   23	 198.56
      45       8	   24	1939.53
      45       9	   36	 259.05
      45      10	   36	 862.38
      46       1	   20	4593.13
      46       2	   24	 300.18
      46       3	   20	2509.56
      46       4	   25	2845.69
      46       5	   20	 192.03
      46       6	   21	 339.81
      46       7	   25	 199.25
      46       8	   19	1311.31
      46       9	   22	1020.06
      46      10	   22	4401.00
      47       1	   25	 560.97
      47       2	   22	1055.41
      47       3	   21	  56.56
      47       4	   20	3914.75
      47       5	   22	 233.84
      47       6	   28	 303.16
      47       7	   21	 633.72
      47       8	   20	  67.06
      47       9	   20	  76.05
      47      10	   23	1213.10
      48       1	   21	 168.72
      48       2	   23	1132.35
      48       3	   16	 398.72
      48       4	   21	  47.22
      48       5	   21	 251.75
      48       6	   18	 102.48
      48       7	   21	 762.85
      48       8	   25	1780.66
      48       9	   17	 142.25
      48      10	   27	3947.85
      49       1	   36	   4.22
      49       2	   25	  83.25
      49       3	   21	   2.30
      49       4	   25	  13.56
      49       5	   22	   7.22
      49       6	   29	  12.34
      49       7	   19	  88.21
      49       8	   25	   6.34
      49       9	   21	   3.87
      49      10	16384	   0.04
      50       1	   17	   0.41
      50       2	   17	  15.50
      50       3	   15	   4.03
      50       4	   17	  48.22
      50       5	   15	   1.19
      50       6	   15	  37.25
      50       7	   23	   3.93
      50       8	   18	   7.00
      50       9	   23	   1.09
      50      10	   13	   3.72
      51       1	   16	   1.34
      51       2	   12	   2.50
      51       3	   13	  23.16
      51       4	   19	   1.31
      51       5	   16	  35.65
      51       6	   14	   3.16
      51       7	   26	   7.00
      51       8	   12	   3.72
      51       9	   15	   1.47
      51      10	   15	   2.06
      52       1	   14	   0.75
      52       2	   17	  14.50
      52       3	   15	  52.07
      52       4	   16	   1.31
      52       5	   16	   1.00
      52       6	   12	   4.94
      52       7	   18	  62.16
      52       8	   14	   3.25
      52       9	   19	   2.28
      52      10	   19	  10.50
      53       1	   28	 504.15
      53       2	   30	 520.43
      53       3	   24	 340.28
      53       4	   20	  89.07
      53       5	   20	 357.00
      53       6	   23	 120.57
      53       7	   17	 138.37
      53       8	   28	   8.19
      53       9	   22	  17.31
      53      10	   24	  86.57
      54       1	   22	 309.09
      54       2	   17	  38.65
      54       3	   18	   3.68
      54       4	   18	   9.00
      54       5	   21	 120.07
      54       6	   19	  34.31
      54       7	   25	  73.34
      54       8	   19	   8.25
      54       9	   18	  23.43
      54      10	   18	 201.28
      55       1	   18	   3.88
      55       2	   16	  83.85
      55       3	   15	  49.66
      55       4	   19	   4.50
      55       5	   18	  49.37
      55       6	   18	  12.12
      55       7	   15	   1.94
      55       8	   15	  46.03
      55       9	   12	  19.88
      55      10	   16	  37.25
      56       1	   16	  17.66
      56       2	   16	  12.07
      56       3	   18	   4.47
      56       4	   15	   3.22
      56       5	   15	  62.60
      56       6	   17	  10.38
      56       7	   14	  25.63
      56       8	   14	   5.72
      56       9	   14	   9.31
      56      10	   14	  36.34
      57       1	   29	   0.25
      57       2	   36	   0.53
      57       3	16384	   0.04
      57       4	   38	  10.50
      57       5	   15	   0.13
      57       6	   24	   0.69
      57       7	16384	   0.03
      57       8	   19	   0.50
      57       9	   25	   0.22
      57      10	   24	   0.16
      58       1	   13	   0.28
      58       2	   17	   0.12
      58       3	   15	   0.07
      58       4	   11	   0.22
      58       5	   14	   0.13
      58       6	   14	   0.06
      58       7	   14	   0.06
      58       8	   17	   0.44
      58       9	   15	   0.06
      58      10	   17	   0.06
      59       1	   14	   0.13
      59       2	   18	   0.10
      59       3	   12	   0.06
      59       4	    9	   0.07
      59       5	   22	   0.03
      59       6	   12	   0.06
      59       7	   17	   0.03
      59       8	   19	   0.06
      59       9	   13	   0.04
      59      10	   14	   0.06
      60       1	   15	   0.09
      60       2	   12	   0.10
      60       3	   20	   0.06
      60       4	   12	   0.09
      60       5	   15	   0.10
      60       6	   16	   0.15
      60       7	   11	   0.06
      60       8	   20	   0.04
      60       9	   17	   0.06
      60      10	   17	   0.16
      61       1	   20	   1.75
      61       2	   19	   0.15
      61       3	   17	   0.15
      61       4	   20	   2.68
      61       5	   31	   2.31
      61       6	   25	   1.88
      61       7	   30	   2.09
      61       8	   20	   0.65
      61       9	   23	   1.06
      61      10	   19	   0.63
      62       1	   17	   0.19
      62       2	   24	   0.72
      62       3	   21	   0.25
      62       4	   15	   0.06
      62       5	   12	   0.06
      62       6	   16	   0.09
      62       7	   17	   0.16
      62       8	   20	   0.10
      62       9	   16	   0.09
      62      10	   12	   0.40
      63       1	   17	   0.06
      63       2	   22	   0.07
      63       3	   20	   0.09
      63       4	   18	   0.03
      63       5	   17	   0.06
      63       6	   16	   0.06
      63       7	   13	   0.16
      63       8	   16	   0.07
      63       9	   12	   0.12
      63      10	   16	   0.12
      64       1	   15	   0.03
      64       2	   16	   0.06
      64       3	   17	   0.12
      64       4	   11	   0.12
      64       5	   12	   0.03
      64       6	   19	   0.03
      64       7	   20	   0.10
      64       8	   19	   0.03
      64       9	   13	   0.53
      64      10	   16	   0.03
