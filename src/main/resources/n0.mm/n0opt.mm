    ==================================================================
Authors's Name		:A. Sprecher / A. Drexl
Authors's Email		:Drexl@bwl.uni-kiel.de
Instance Set		:C15
Type			:N0
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
Average CPU-Time : N0[1..8]	0.02 sec. N0[9..16]   0.05 sec.
		   N0[17..24]	0.11 sec. N0[25..32]  0.90 sec.
		   N0[33..40]	3.28 sec. N0[41..48] 11.42 sec.
=======================================================================
   Paramter Instance  Makespan	CPU-Time[sec.]
-----------------------------------------------------------------------
       1       1       16384	  0.03
       1       2	  15	  0.04
       1       3	  19	  0.03
       1       4	  24	  0.03
       1       5       16384	  0.06
       1       6	  23	  0.03
       1       7	  26	  0.03
       1       8       16384	  0.06
       1       9       16384	  0.06
       1      10       16384	  0.04
       2       1	  14	  0.00
       2       2	  15	  0.06
       2       3	  13	  0.00
       2       4	  18	  0.03
       2       5	  15	  0.06
       2       6	  14	  0.03
       2       7	  14	  0.03
       2       8	  18	  0.00
       2       9	  23	  0.00
       2      10	  17	  0.00
       3       1	  11	  0.00
       3       2	  13	  0.00
       3       3	  14	  0.03
       3       4	  12	  0.00
       3       5	  15	  0.00
       3       6	  13	  0.00
       3       7	  14	  0.00
       3       8	  18	  0.00
       3       9	   9	  0.03
       3      10	  18	  0.00
       4       1	  14	  0.00
       4       2	  13	  0.03
       4       3	  11	  0.04
       4       4	  17	  0.00
       4       5	  14	  0.00
       4       6	  21	  0.03
       4       7	  10	  0.00
       4       8	  12	  0.00
       4       9	  12	  0.03
       4      10	  16	  0.00
       5       1	  15	  0.03
       5       2	  24	  0.09
       5       3	  28	  0.13
       5       4	  25	  0.09
       5       5	  20	  0.13
       5       6	  25	  0.06
       5       7	  23	  0.03
       5       8	  22	  0.06
       5       9	  27	  0.13
       5      10	  20	  0.06
       6       1	  16	  0.03
       6       2	  23	  0.00
       6       3	  13	  0.03
       6       4	  15	  0.03
       6       5	  18	  0.03
       6       6	  16	  0.12
       6       7	  18	  0.00
       6       8	  12	  0.04
       6       9	  20	  0.03
       6      10	  21	  0.09
       7       1	  14	  0.03
       7       2	  15	  0.03
       7       3	  14	  0.03
       7       4	  16	  0.03
       7       5	  14	  0.00
       7       6	  16	  0.03
       7       7	  24	  0.00
       7       8	   9	  0.03
       7       9	  20	  0.03
       7      10	  14	  0.03
       8       1	  14	  0.00
       8       2	  17	  0.03
       8       3	  11	  0.00
       8       4	  14	  0.03
       8       5	  13	  0.00
       8       6	  16	  0.00
       8       7	  18	  0.00
       8       8	  20	  0.00
       8       9	  12	  0.03
       8      10	  14	  0.03
       9       1	  13	  0.03
       9       2	  24	  0.06
       9       3       16384	  0.03
       9       4	  24	  0.16
       9       5	  21	  0.13
       9       6	  17	  0.06
       9       7	  32	  0.10
       9       8	  27	  0.06
       9       9       16384	  0.34
       9      10       16384	  0.00
      10       1	  19	  0.03
      10       2	  18	  0.03
      10       3	  18	  0.00
      10       4	  17	  0.06
      10       5	  15	  0.03
      10       6	  18	  0.03
      10       7	  16	  0.00
      10       8	  24	  0.03
      10       9	  22	  0.00
      10      10	  15	  0.03
      11       1	  16	  0.00
      11       2	  21	  0.03
      11       3	  19	  0.03
      11       4	  14	  0.00
      11       5	  24	  0.00
      11       6	  19	  0.00
      11       7	  16	  0.03
      11       8	  13	  0.00
      11       9	  16	  0.00
      11      10	  20	  0.03
      12       1	  21	  0.03
      12       2	  11	  0.03
      12       3	  19	  0.03
      12       4	  17	  0.00
      12       5	  19	  0.03
      12       6	  15	  0.03
      12       7	  14	  0.04
      12       8	  10	  0.03
      12       9	  13	  0.00
      12      10	  21	  0.00
      13       1	  36	  0.22
      13       2	  23	  0.31
      13       3	  28	  0.19
      13       4	  27	  0.38
      13       5	  25	  0.22
      13       6	  34	  0.16
      13       7	  26	  0.16
      13       8	  26	  0.10
      13       9	  14	  0.13
      13      10	  31	  0.16
      14       1	  22	  0.04
      14       2	  22	  0.03
      14       3	  18	  0.15
      14       4	  24	  0.13
      14       5	  16	  0.03
      14       6	  21	  0.03
      14       7	  19	  0.03
      14       8	  17	  0.12
      14       9	  22	  0.09
      14      10	  18	  0.06
      15       1	  15	  0.03
      15       2	  17	  0.00
      15       3	   9	  0.00
      15       4	  17	  0.03
      15       5	  12	  0.03
      15       6	  14	  0.03
      15       7	  24	  0.00
      15       8	  14	  0.03
      15       9	  14	  0.03
      15      10	  15	  0.19
      16       1	  24	  0.00
      16       2	  23	  0.03
      16       3	  24	  0.00
      16       4	  15	  0.00
      16       5	  14	  0.00
      16       6	  15	  0.00
      16       7	  18	  0.00
      16       8	  19	  0.03
      16       9	  20	  0.03
      16      10	  20	  0.00
      17       1	  31	  0.16
      17       2	  19	  0.06
      17       3	  26	  0.37
      17       4       16384	  0.00
      17       5	  28	  0.09
      17       6	  36	  0.60
      17       7	  22	  0.22
      17       8	  17	  0.06
      17       9	  24	  0.53
      17      10	  14	  0.10
      18       1	  17	  0.06
      18       2	  18	  0.07
      18       3	  31	  0.06
      18       4	  22	  0.06
      18       5	  14	  0.03
      18       6	  16	  0.03
      18       7	  24	  0.03
      18       8	  22	  0.03
      18       9	  28	  0.03
      18      10	  21	  0.06
      19       1	  14	  0.03
      19       2	  24	  0.03
      19       3	  18	  0.03
      19       4	  19	  0.06
      19       5	  18	  0.00
      19       6	  21	  0.09
      19       7	  15	  0.03
      19       8	  17	  0.03
      19       9	  17	  0.03
      19      10	  18	  0.00
      20       1	  17	  0.03
      20       2	  17	  0.03
      20       3	  17	  0.04
      20       4	  22	  0.00
      20       5	  18	  0.04
      20       6	  19	  0.00
      20       7	  14	  0.12
      20       8	  11	  0.03
      20       9	  18	  0.04
      20      10	  22	  0.03
      21       1	  25	  0.22
      21       2	  26	  0.18
      21       3	  31	  0.84
      21       4	  27	  0.41
      21       5	  24	  1.44
      21       6	  39	  0.37
      21       7	  29	  0.44
      21       8	  30	  0.12
      21       9	  28	  0.06
      21      10	  20	  0.38
      22       1	  16	  0.03
      22       2	  30	  0.03
      22       3	  26	  0.03
      22       4	  20	  0.31
      22       5	  22	  0.06
      22       6	  21	  0.13
      22       7	  20	  0.18
      22       8	  31	  0.09
      22       9	  26	  0.00
      22      10	  24	  0.03
      23       1	  13	  0.00
      23       2	  21	  0.00
      23       3	  17	  0.09
      23       4	  17	  0.00
      23       5	  18	  0.03
      23       6	  14	  0.00
      23       7	  20	  0.13
      23       8	  16	  0.03
      23       9	  21	  0.03
      23      10	  16	  0.00
      24       1	  19	  0.04
      24       2	  21	  0.00
      24       3	  19	  0.03
      24       4	  22	  0.00
      24       5	  29	  0.03
      24       6	  18	  0.00
      24       7	  23	  0.03
      24       8	  17	  0.00
      24       9	  20	  0.06
      24      10	  22	  0.03
      25       1	  30	  0.18
      25       2	  27	  0.47
      25       3       16384	  0.00
      25       4	  25	  0.59
      25       5	  17	  0.18
      25       6	  46	  0.16
      25       7	  25	  0.28
      25       8	  17	  0.34
      25       9	  29	  0.28
      25      10	  44	  0.75
      26       1	  13	  0.03
      26       2	  20	  0.06
      26       3	  19	  0.22
      26       4	  21	  0.16
      26       5	  31	  0.07
      26       6	  17	  0.06
      26       7	  29	  0.03
      26       8	  23	  0.50
      26       9	  22	  0.06
      26      10	  17	  0.38
      27       1	  24	  0.09
      27       2	  22	  0.03
      27       3	  23	  0.10
      27       4	  18	  0.03
      27       5	  18	  0.06
      27       6	  32	  0.03
      27       7	  15	  0.03
      27       8	  20	  0.06
      27       9	  19	  0.03
      27      10	  31	  0.04
      28       1	  27	  0.04
      28       2	  18	  0.03
      28       3	  20	  0.03
      28       4	  28	  0.00
      28       5	  20	  0.00
      28       6	  14	  0.03
      28       7	  18	  0.03
      28       8	  22	  0.03
      28       9	  24	  0.07
      28      10	  31	  0.00
      29       1	  30	 10.65
      29       2	  39	  2.16
      29       3	  28	  2.59
      29       4	  30	 19.34
      29       5	  38	  1.68
      29       6	  28	  1.32
      29       7	  24	  0.72
      29       8	  34	  2.75
      29       9	  27	  0.91
      29      10	  26	  0.63
      30       1	  26	  0.29
      30       2	  26	  0.03
      30       3	  18	  0.59
      30       4	  22	  0.03
      30       5	  27	 19.78
      30       6	  17	  0.38
      30       7	  25	  0.12
      30       8	  22	  0.09
      30       9	  23	  0.22
      30      10	  19	  0.03
      31       1	  31	  0.09
      31       2	  24	  0.07
      31       3	  15	  0.03
      31       4	  18	  0.03
      31       5	  18	  0.13
      31       6	  19	  0.47
      31       7	  17	  0.07
      31       8	  21	  0.03
      31       9	  20	  0.09
      31      10	  27	  0.03
      32       1	  20	  0.03
      32       2	  22	  0.03
      32       3	  19	  0.22
      32       4	  25	  0.03
      32       5	  19	  0.12
      32       6	  29	  0.03
      32       7	  17	  0.03
      32       8	  21	  0.06
      32       9	  33	  0.10
      32      10	  18	  0.00
      33       1	  31	  1.28
      33       2	  30	  0.18
      33       3	  29	  8.00
      33       4	  24	  0.66
      33       5	  29	  0.38
      33       6	  24	  0.69
      33       7	  32	  1.25
      33       8	  29	  1.25
      33       9	  20	  1.47
      33      10	  32	  1.16
      34       1	  25	  0.09
      34       2	  24	  0.15
      34       3	  17	  0.09
      34       4	  26	  0.28
      34       5	  29	  0.03
      34       6	  20	  0.34
      34       7	  23	  0.03
      34       8	  20	  0.06
      34       9	  13	  0.15
      34      10	  22	  0.12
      35       1	  20	  0.13
      35       2	  14	  0.28
      35       3	  24	  0.22
      35       4	  16	  0.12
      35       5	  16	  0.06
      35       6	  20	  0.16
      35       7	  25	  0.06
      35       8	  21	  0.09
      35       9	  31	  0.06
      35      10	  18	  0.25
      36       1	  22	  0.06
      36       2	  20	  0.09
      36       3	  18	  0.10
      36       4	  15	  0.16
      36       5	  20	  0.47
      36       6	  19	  0.25
      36       7	  29	  0.03
      36       8	  20	  0.10
      36       9	  19	  0.09
      36      10	  22	  0.06
      37       1	  37	  4.78
      37       2	  39	110.94
      37       3	  25	  2.15
      37       4	  39	  0.43
      37       5	  35	  5.50
      37       6	  25	  7.06
      37       7	  34	  5.50
      37       8	  25	  4.72
      37       9	  33	 85.13
      37      10	  38	  1.03
      38       1	  22	  0.12
      38       2	  20	  3.34
      38       3	  23	  2.07
      38       4	  27	  0.22
      38       5	  18	  0.10
      38       6	  23	  2.84
      38       7	  22	  0.34
      38       8	  29	  0.75
      38       9	  22	  3.34
      38      10	  28	  0.07
      39       1	  23	  0.09
      39       2	  23	  0.03
      39       3	  23	  0.06
      39       4	  21	  0.06
      39       5	  25	  0.19
      39       6	  19	  0.00
      39       7	  17	  0.12
      39       8	  25	  0.03
      39       9	  17	  0.03
      39      10	  26	  0.13
      40       1	  22	  0.06
      40       2	  20	  0.09
      40       3	  20	  0.07
      40       4	  16	  0.19
      40       5	  22	  0.03
      40       6	  31	  0.03
      40       7	  24	  0.34
      40       8	  30	  0.03
      40       9	  25	  0.03
      40      10	  23	  0.07
      41       1	  23	  0.62
      41       2	  36	  1.34
      41       3	  22	  4.25
      41       4	  33	  1.53
      41       5	  33	  2.03
      41       6	  30	  3.22
      41       7	  25	  1.53
      41       8	  28	  0.65
      41       9	  24	  0.32
      41      10	  19	  0.28
      42       1	  29	  2.10
      42       2	  19	  0.75
      42       3	  24	  0.19
      42       4	  30	  0.40
      42       5	  24	  2.12
      42       6	  24	  1.10
      42       7	  21	  4.16
      42       8	  32	  0.03
      42       9	  25	  0.13
      42      10	  15	  0.13
      43       1	  33	  0.13
      43       2	  21	  0.37
      43       3	  22	  0.15
      43       4	  30	  0.09
      43       5	  24	  0.06
      43       6	  28	  0.15
      43       7	  22	  0.28
      43       8	  20	  0.32
      43       9	  27	  0.15
      43      10	  22	  0.06
      44       1	  25	  0.38
      44       2	  24	  0.10
      44       3	  17	  1.09
      44       4	  20	  0.29
      44       5	  22	  0.37
      44       6	  20	  0.56
      44       7	  18	  0.16
      44       8	  34	  0.03
      44       9	  23	  0.25
      44      10	  27	  0.25
      45       1	  36	576.22
      45       2	  24	  9.72
      45       3	  35	 35.57
      45       4	  28	 11.88
      45       5	  28	 38.94
      45       6	  40	  7.84
      45       7	  31	 17.19
      45       8	  26	 18.25
      45       9	  31	  8.00
      45      10	  33	125.87
      46       1	  32	  5.91
      46       2	  19	  0.60
      46       3	  25	  0.75
      46       4	  24	  0.15
      46       5	  26	  7.00
      46       6	  27	  1.41
      46       7	  24	  7.59
      46       8	  27	  0.09
      46       9	  30	  0.22
      46      10	  28	  0.43
      47       1	  32	  0.09
      47       2	  31	  0.06
      47       3	  23	  0.10
      47       4	  29	  0.03
      47       5	  19	  0.15
      47       6	  27	  0.15
      47       7	  28	  2.10
      47       8	  17	  0.06
      47       9	  18	  0.22
      47      10	  23	  0.25
      48       1	  21	  0.13
      48       2	  24	  0.22
      48       3	  30	  0.25
      48       4	  26	  1.50
      48       5	  18	  0.44
      48       6	  20	  0.03
      48       7	  20	  0.16
      48       8	  22	  0.97
      48       9	  25	  1.37
      48      10	  31	  0.07
