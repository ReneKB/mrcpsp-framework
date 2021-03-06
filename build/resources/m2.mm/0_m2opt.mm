==================================================================
Authors's Name		:A. Sprecher / A. Drexl
Authors's Email		:Drexl@bwl.uni-kiel.de
Instance Set		:M2
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
Average CPU-Time :  1.06 sec.
=======================================================================
   Paramter Instance  Makespan	CPU-Time[sec.]
-----------------------------------------------------------------------
       1       1	16384	   1.31
       1       2	16384	   1.25
       1       3	16384	   0.00
       1       4	16384	   0.03
       1       5	16384	   0.03
       1       6	16384	   0.43
       1       7	16384	   0.31
       1       8	16384	   0.16
       1       9	16384	   0.13
       1      10	16384	   0.50
       2       1	16384	   0.15
       2       2	16384	   1.43
       2       3	16384	   0.25
       2       4	16384	   1.15
       2       5	16384	   0.28
       2       6	16384	   0.35
       2       7	16384	   0.34
       2       8	16384	   0.91
       2       9	16384	   0.85
       2      10	16384	   0.72
       3       1	16384	   0.57
       3       2	16384	   0.03
       3       3	16384	   0.12
       3       4	   38	   0.22
       3       5	16384	   2.97
       3       6	16384	   0.19
       3       7	16384	   0.16
       3       8	16384	   0.41
       3       9	16384	   0.37
       3      10	16384	   0.44
       4       1	16384	   0.16
       4       2	16384	   0.75
       4       3	16384	   0.03
       4       4	16384	   0.12
       4       5	16384	   0.43
       4       6	16384	   0.18
       4       7	16384	   0.34
       4       8	16384	   0.54
       4       9	16384	   0.22
       4      10	16384	   0.19
       5       1	16384	   0.87
       5       2	16384	   0.28
       5       3	16384	   1.65
       5       4	16384	   1.93
       5       5	16384	   0.28
       5       6	16384	   0.19
       5       7	16384	   1.07
       5       8	16384	   0.03
       5       9	16384	   3.56
       5      10	16384	   1.81
       6       1	16384	   0.40
       6       2	16384	   5.09
       6       3	16384	   0.31
       6       4	16384	   9.34
       6       5	16384	   3.50
       6       6	16384	   0.37
       6       7	16384	   2.93
       6       8	16384	   0.62
       6       9	16384	   0.09
       6      10	16384	   0.28
       7       1	16384	   0.15
       7       2	16384	   0.09
       7       3	16384	   0.00
       7       4	16384	   0.03
       7       5	16384	   0.41
       7       6	16384	   1.25
       7       7	16384	   0.19
       7       8	16384	   0.41
       7       9	16384	   0.69
       7      10	16384	   0.38
       8       1	16384	   0.16
       8       2	16384	   0.13
       8       3	16384	   0.15
       8       4	16384	   0.47
       8       5	16384	   0.25
       8       6	16384	   1.57
       8       7	16384	   0.09
       8       8	16384	   0.12
       8       9	16384	   0.12
       8      10	16384	   0.16
       9       1	   38	   0.82
       9       2	   26	   2.59
       9       3	   30	   0.78
       9       4	   37	   0.38
       9       5	   32	   0.66
       9       6	   33	   1.12
       9       7	   26	   0.37
       9       8	   24	   0.81
       9       9	   29	   0.28
       9      10	   28	   4.21
      10       1	   34	   0.94
      10       2	   27	   2.84
      10       3	   44	   1.97
      10       4	   25	   0.38
      10       5	   24	   1.69
      10       6	   28	   0.13
      10       7	   19	   0.22
      10       8	   19	   0.07
      10       9	   23	   0.50
      10      10	   33	   0.13
      11       1	   27	   0.16
      11       2	   32	   0.22
      11       3	   31	   0.25
      11       4	   24	   0.09
      11       5	   30	   0.22
      11       6	   31	   0.25
      11       7	   37	   0.56
      11       8	   27	   0.22
      11       9	   26	   0.44
      11      10	   22	   0.93
      12       1	   20	   0.34
      12       2	   21	   0.29
      12       3	   35	   0.12
      12       4	   27	   0.18
      12       5	   26	   0.47
      12       6	   26	   0.12
      12       7	   22	   0.65
      12       8	   34	   0.15
      12       9	   20	   0.25
      12      10	   40	   0.75
      13       1	   34	   6.53
      13       2	   27	   0.44
      13       3	   37	   4.72
      13       4	   42	  48.68
      13       5	   45	   1.00
      13       6	   40	   0.41
      13       7	   36	   2.28
      13       8	   40	  30.34
      13       9	   54	   0.66
      13      10	   32	   4.25
      14       1	   26	   0.18
      14       2	   31	   2.68
      14       3	   34	   0.31
      14       4	   32	   0.78
      14       5	   30	   3.81
      14       6	   31	   0.25
      14       7	   40	  13.60
      14       8	   27	   0.94
      14       9	   20	   0.50
      14      10	   26	   1.21
      15       1	   28	   0.06
      15       2	   29	   1.72
      15       3	   24	   1.09
      15       4	   29	   0.91
      15       5	   25	   0.13
      15       6	   35	   0.75
      15       7	   27	   0.07
      15       8	   31	   0.09
      15       9	   38	   0.09
      15      10	   30	   0.13
      16       1	   30	   0.13
      16       2	   28	   0.22
      16       3	   31	   0.12
      16       4	   32	   1.68
      16       5	   23	   0.22
      16       6	   20	   0.12
      16       7	   21	   0.06
      16       8	   23	   0.16
      16       9	   25	   0.16
      16      10	   29	   0.09
      17       1	   41	   0.75
      17       2	   29	   0.44
      17       3	   33	   0.22
      17       4	   35	   0.16
      17       5	   21	   0.13
      17       6	   33	   0.16
      17       7	   29	   0.06
      17       8	   21	   0.10
      17       9	   27	   0.25
      17      10	   22	   0.41
      18       1	   24	   0.16
      18       2	   21	   0.19
      18       3	   31	   0.07
      18       4	   28	   0.12
      18       5	   27	   0.06
      18       6	   35	   0.10
      18       7	   23	   0.09
      18       8	   26	   0.22
      18       9	   25	   0.56
      18      10	   17	   0.10
      19       1	   26	   0.10
      19       2	   33	   0.09
      19       3	   30	   0.06
      19       4	   14	   0.09
      19       5	   32	   0.18
      19       6	   22	   0.09
      19       7	   17	   0.10
      19       8	   29	   0.22
      19       9	   24	   0.06
      19      10	   34	   0.12
      20       1	   35	   0.06
      20       2	   23	   0.16
      20       3	   30	   0.13
      20       4	   25	   0.06
      20       5	   20	   0.09
      20       6	   31	   0.29
      20       7	   23	   0.09
      20       8	   39	   0.09
      20       9	   27	   0.13
      20      10	   37	   0.09
      21       1	   44	   2.09
      21       2	   44	   3.10
      21       3	   41	   1.25
      21       4	   36	   0.21
      21       5	   33	   0.90
      21       6	   39	   0.93
      21       7	   38	   4.25
      21       8	   35	   3.50
      21       9	   34	   1.91
      21      10	   41	  31.75
      22       1	   22	   0.34
      22       2	   17	   0.13
      22       3	   39	   3.25
      22       4	   26	   0.22
      22       5	   38	   8.87
      22       6	   24	   0.09
      22       7	   36	   0.63
      22       8	   25	   0.13
      22       9	   32	   0.40
      22      10	   26	   0.25
      23       1	   23	   0.06
      23       2	   28	   0.09
      23       3	   35	   1.22
      23       4	   20	   0.34
      23       5	   21	   0.10
      23       6	   31	   0.09
      23       7	   39	   0.06
      23       8	   26	   0.10
      23       9	   22	   0.12
      23      10	   22	   0.09
      24       1	   27	   0.10
      24       2	   18	   0.15
      24       3	   29	   0.09
      24       4	   19	   0.10
      24       5	   28	   0.09
      24       6	   24	   0.09
      24       7	   22	   0.10
      24       8	   34	   0.15
      24       9	   22	   0.15
      24      10	   27	   0.09
      25       1	   25	   0.10
      25       2	   22	   0.06
      25       3	   31	   0.07
      25       4	   40	   0.13
      25       5	   28	   0.15
      25       6	   34	   0.06
      25       7	   31	   0.10
      25       8	   37	   0.12
      25       9	   22	   0.21
      25      10	   25	   0.15
      26       1	   30	   0.06
      26       2	   27	   0.10
      26       3	   30	   0.06
      26       4	   30	   0.06
      26       5	   24	   0.09
      26       6	   37	   0.06
      26       7	   31	   0.07
      26       8	   21	   0.03
      26       9	   32	   0.07
      26      10	   24	   0.06
      27       1	   25	   0.07
      27       2	   22	   0.03
      27       3	   22	   0.07
      27       4	   15	   0.03
      27       5	   25	   0.04
      27       6	   24	   0.03
      27       7	   28	   0.07
      27       8	   32	   0.06
      27       9	   29	   0.04
      27      10	   30	   0.03
      28       1	   36	   0.03
      28       2	   28	   0.03
      28       3	   33	   0.00
      28       4	   26	   0.03
      28       5	   29	   0.06
      28       6	   25	   0.03
      28       7	   25	   0.03
      28       8	   27	   0.06
      28       9	   20	   0.03
      28      10	   33	   0.03
      29       1	   29	   0.41
      29       2	   40	   0.53
      29       3	   37	   1.62
      29       4	   40	   0.19
      29       5	   25	   0.25
      29       6	   35	   0.21
      29       7	   25	   0.15
      29       8	   40	   0.40
      29       9	   33	   0.43
      29      10	   30	   0.40
      30       1	   23	   0.03
      30       2	   28	   0.22
      30       3	   36	   0.75
      30       4	   35	   0.04
      30       5	   32	   0.12
      30       6	   22	   0.09
      30       7	   26	   0.35
      30       8	   30	   0.09
      30       9	   18	   0.03
      30      10	   30	   0.06
      31       1	   22	   0.03
      31       2	   30	   0.13
      31       3	   22	   0.06
      31       4	   26	   0.04
      31       5	   33	   0.06
      31       6	   25	   0.06
      31       7	   36	   0.06
      31       8	   31	   0.03
      31       9	   31	   0.06
      31      10	   25	   0.04
      32       1	   27	   0.03
      32       2	   30	   0.03
      32       3	   26	   0.03
      32       4	   23	   0.00
      32       5	   16	   0.03
      32       6	   27	   0.03
      32       7	   25	   0.04
      32       8	   20	   0.03
      32       9	   22	   0.03
      32      10	   23	   0.03
      33       1	   34	   0.63
      33       2	   45	   0.06
      33       3	   37	   1.06
      33       4	   47	   0.09
      33       5	   51	   0.65
      33       6	   42	   0.34
      33       7	   31	   0.50
      33       8	   37	   0.31
      33       9	   49	   0.13
      33      10	   34	   0.37
      34       1	   35	   0.22
      34       2	   33	   0.56
      34       3	   31	   0.75
      34       4	   33	   0.44
      34       5	   32	   0.97
      34       6	   28	   1.19
      34       7	   35	   0.16
      34       8	   39	   0.57
      34       9	   28	   0.37
      34      10	   32	   1.90
      35       1	   32	   0.82
      35       2	   31	   0.53
      35       3	   29	   0.53
      35       4	   31	   0.81
      35       5	   34	   0.62
      35       6	   43	   1.19
      35       7	   29	   0.82
      35       8	   28	   0.22
      35       9	   34	   0.16
      35      10	   36	   0.38
      36       1	16384	   0.47
      36       2	16384	   0.13
      36       3	16384	   0.37
      36       4	16384	   0.65
      36       5	16384	   0.22
      36       6	16384	   0.09
      36       7	16384	   0.40
      36       8	16384	   0.16
      36       9	16384	   0.57
      36      10	16384	   0.37
      37       1	   40	   1.56
      37       2	   44	   1.66
      37       3	   34	  18.03
      37       4	   40	   4.37
      37       5	   58	   2.75
      37       6	   44	   2.03
      37       7	   42	   5.53
      37       8	   42	   1.53
      37       9	   38	   1.56
      37      10	   48	   1.37
      38       1	   35	   1.34
      38       2	   39	   0.91
      38       3	   40	   0.79
      38       4	   35	   0.50
      38       5	   34	   0.35
      38       6	   29	   1.09
      38       7	   36	   1.90
      38       8	   36	   1.00
      38       9	   29	   1.78
      38      10	   22	   1.28
      39       1	   32	   0.50
      39       2	   27	   0.50
      39       3	   30	   0.87
      39       4	   35	   1.31
      39       5	   38	   0.50
      39       6	   35	   0.34
      39       7	   34	   0.40
      39       8	   41	   0.79
      39       9	   33	   2.75
      39      10	   39	   0.22
      40       1	   34	   0.25
      40       2	   30	   0.34
      40       3	   27	   0.40
      40       4	   28	   1.34
      40       5	   32	   0.66
      40       6	   25	   0.28
      40       7	   33	   0.15
      40       8	   38	   0.18
      40       9	   27	   0.18
      40      10	   32	   0.37
      41       1	   39	   5.16
      41       2	   28	   0.63
      41       3	   31	   0.75
      41       4	   35	   0.53
      41       5	   27	   0.22
      41       6	   34	   2.79
      41       7	   41	   0.56
      41       8	   30	   0.34
      41       9	   27	   1.44
      41      10	   29	   0.97
      42       1	   26	   0.37
      42       2	   30	   0.62
      42       3	   31	   2.90
      42       4	   43	   1.79
      42       5	   22	   0.25
      42       6	   23	   0.16
      42       7	   38	   0.09
      42       8	   31	   0.31
      42       9	   28	   0.32
      42      10	   31	   0.19
      43       1	   35	   0.37
      43       2	   26	   0.59
      43       3	   31	   0.41
      43       4	   28	   0.22
      43       5	   29	   0.34
      43       6	   36	   0.38
      43       7	   30	   0.19
      43       8	   22	   1.94
      43       9	   25	   0.41
      43      10	   35	   0.38
      44       1	   25	   0.44
      44       2	   27	   0.66
      44       3	   29	   0.44
      44       4	   30	   0.10
      44       5	   28	   0.22
      44       6	   27	   0.22
      44       7	   25	   0.41
      44       8	   24	   0.38
      44       9	   26	   0.41
      44      10	   26	   0.28
      45       1	   41	   2.34
      45       2	   41	   2.82
      45       3	   37	  11.65
      45       4	   36	  19.81
      45       5	   33	  23.56
      45       6	   45	   8.40
      45       7	   40	  37.40
      45       8	   40	  11.71
      45       9	   38	   1.56
      45      10	   36	   6.16
      46       1	   33	   0.72
      46       2	   33	   1.87
      46       3	   27	   4.44
      46       4	   32	   2.37
      46       5	   32	   0.79
      46       6	   23	   0.15
      46       7	   26	   6.72
      46       8	   37	  14.84
      46       9	   33	   0.69
      46      10	   30	   0.19
      47       1	   31	   3.22
      47       2	   21	   0.59
      47       3	   32	   0.31
      47       4	   26	   0.82
      47       5	   28	   0.97
      47       6	   27	   0.53
      47       7	   26	   0.41
      47       8	   28	   0.10
      47       9	   29	   0.69
      47      10	   22	   0.56
      48       1	   41	   0.63
      48       2	   27	   0.50
      48       3	   35	   0.47
      48       4	   30	   0.31
      48       5	   21	   0.28
      48       6	   34	   0.22
      48       7	   31	   0.31
      48       8	   40	   0.25
      48       9	   32	   0.69
      48      10	   30	   0.13
      49       1	   37	   0.19
      49       2	   33	   1.47
      49       3	   35	   0.19
      49       4	   31	   2.53
      49       5	   23	   0.09
      49       6	   34	   0.59
      49       7	   25	   0.22
      49       8	   29	   0.25
      49       9	   27	   0.50
      49      10	   53	   0.44
      50       1	   21	   0.16
      50       2	   22	   0.19
      50       3	   32	   0.25
      50       4	   20	   0.15
      50       5	   43	   0.15
      50       6	   30	   0.41
      50       7	   22	   0.50
      50       8	   25	   0.78
      50       9	   24	   0.28
      50      10	   25	   0.15
      51       1	   30	   0.21
      51       2	   23	   0.18
      51       3	   27	   0.22
      51       4	   30	   0.06
      51       5	   24	   0.12
      51       6	   40	   0.06
      51       7	   30	   0.16
      51       8	   27	   0.41
      51       9	   36	   0.06
      51      10	   36	   0.09
      52       1	   18	   0.10
      52       2	   34	   0.06
      52       3	   26	   0.09
      52       4	   23	   0.09
      52       5	   26	   0.25
      52       6	   18	   0.19
      52       7	   33	   0.16
      52       8	   19	   0.16
      52       9	   22	   0.10
      52      10	   41	   0.12
      53       1	   24	   0.53
      53       2	   34	   2.82
      53       3	   33	   0.75
      53       4	   33	   4.97
      53       5	   28	   3.40
      53       6	   42	  12.97
      53       7	   39	   1.16
      53       8	   41	   1.31
      53       9	   32	   2.15
      53      10	   42	   0.28
      54       1	   28	   0.19
      54       2	   23	   1.32
      54       3	   22	   0.84
      54       4	   25	   0.56
      54       5	   22	   0.60
      54       6	   27	   0.12
      54       7	   25	   0.09
      54       8	   23	   0.16
      54       9	   44	   0.72
      54      10	   23	   0.16
      55       1	   36	   0.19
      55       2	   22	   0.54
      55       3	   22	   0.22
      55       4	   26	   0.34
      55       5	   35	   0.06
      55       6	   26	   0.57
      55       7	   18	   0.22
      55       8	   27	   0.22
      55       9	   23	   0.41
      55      10	   23	   1.57
      56       1	   40	   0.09
      56       2	   25	   0.12
      56       3	   29	   0.10
      56       4	   31	   0.19
      56       5	   26	   0.07
      56       6	   21	   0.22
      56       7	   31	   0.13
      56       8	   22	   0.19
      56       9	   30	   0.09
      56      10	   34	   0.12
      57       1	   31	   0.22
      57       2	   31	   0.12
      57       3	   34	   0.07
      57       4	   27	   0.25
      57       5	   26	   0.06
      57       6	   26	   0.06
      57       7	   23	   0.10
      57       8	   30	   0.16
      57       9	   30	   0.09
      57      10	   27	   0.03
      58       1	   29	   0.03
      58       2	   22	   0.04
      58       3	   37	   0.03
      58       4	   25	   0.07
      58       5	   29	   0.03
      58       6	   36	   0.03
      58       7	   33	   0.06
      58       8	   33	   0.07
      58       9	   30	   0.04
      58      10	   39	   0.03
      59       1	   43	   0.03
      59       2	   24	   0.06
      59       3	   18	   0.04
      59       4	   30	   0.03
      59       5	   21	   0.03
      59       6	   21	   0.03
      59       7	   24	   0.03
      59       8	   25	   0.03
      59       9	   19	   0.03
      59      10	   23	   0.03
      60       1	   34	   0.03
      60       2	   23	   0.03
      60       3	   25	   0.03
      60       4	   26	   0.03
      60       5	   22	   0.06
      60       6	   28	   0.03
      60       7	   21	   0.06
      60       8	   28	   0.06
      60       9	   28	   0.03
      60      10	   33	   0.03
      61       1	   31	   0.10
      61       2	   43	   0.41
      61       3	   46	   0.25
      61       4	   31	   0.16
      61       5	   30	   0.41
      61       6	   48	   0.87
      61       7	   35	   0.53
      61       8	   28	   0.44
      61       9	   40	   0.44
      61      10	   41	   1.50
      62       1	   33	   0.10
      62       2	   17	   0.06
      62       3	   27	   0.07
      62       4	   24	   0.13
      62       5	   17	   0.09
      62       6	   22	   0.12
      62       7	   29	   0.04
      62       8	   29	   0.03
      62       9	   34	   0.03
      62      10	   26	   0.22
      63       1	   29	   0.06
      63       2	   22	   0.03
      63       3	   49	   0.03
      63       4	   23	   0.03
      63       5	   30	   0.10
      63       6	   32	   0.06
      63       7	   24	   0.06
      63       8	   30	   0.16
      63       9	   30	   0.03
      63      10	   16	   0.04
      64       1	   24	   0.03
      64       2	   21	   0.04
      64       3	   18	   0.03
      64       4	   31	   0.07
      64       5	   22	   0.03
      64       6	   25	   0.03
      64       7	   29	   0.06
      64       8	   29	   0.03
      64       9	   29	   0.03
      64      10	   32	   0.03
