jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	5		2 3 4 5 6 
2	3	5		19 11 10 9 7 
3	3	6		25 19 18 16 12 9 
4	3	2		19 7 
5	3	1		7 
6	3	5		25 16 15 14 13 
7	3	3		20 18 8 
8	3	4		25 17 15 13 
9	3	4		20 17 15 13 
10	3	4		25 17 15 13 
11	3	3		25 17 15 
12	3	2		17 15 
13	3	6		30 27 24 23 22 21 
14	3	4		27 24 21 20 
15	3	5		27 24 23 22 21 
16	3	2		26 17 
17	3	5		30 28 27 24 22 
18	3	5		30 28 27 26 22 
19	3	4		34 30 24 21 
20	3	4		34 33 30 23 
21	3	3		29 28 26 
22	3	5		37 36 34 33 29 
23	3	4		40 35 31 26 
24	3	5		40 37 33 32 31 
25	3	2		33 30 
26	3	3		37 36 32 
27	3	3		40 37 32 
28	3	4		40 38 36 35 
29	3	2		40 31 
30	3	3		40 39 37 
31	3	4		43 42 39 38 
32	3	3		42 39 38 
33	3	2		41 35 
34	3	3		45 43 39 
35	3	6		51 47 45 44 43 42 
36	3	6		51 47 45 44 43 41 
37	3	1		38 
38	3	5		51 50 47 45 44 
39	3	4		51 47 44 41 
40	3	4		51 47 44 43 
41	3	3		50 49 46 
42	3	3		50 49 46 
43	3	3		50 49 48 
44	3	2		49 46 
45	3	1		46 
46	3	1		48 
47	3	1		48 
48	3	1		52 
49	3	1		52 
50	3	1		52 
51	3	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	
2	1	4	3	5	9	6	
	2	7	2	3	8	2	
	3	8	2	2	8	1	
3	1	3	9	4	7	6	
	2	4	4	3	4	6	
	3	5	3	2	1	4	
4	1	2	5	8	7	6	
	2	3	4	8	4	4	
	3	8	4	8	3	3	
5	1	1	7	6	5	8	
	2	2	6	4	4	6	
	3	3	6	1	4	3	
6	1	1	6	9	10	1	
	2	3	4	5	10	1	
	3	10	4	2	10	1	
7	1	1	7	5	7	7	
	2	4	6	4	6	5	
	3	5	5	1	5	3	
8	1	2	8	6	8	3	
	2	8	8	6	4	2	
	3	10	8	4	4	2	
9	1	2	6	8	4	6	
	2	6	4	5	3	5	
	3	7	4	5	2	5	
10	1	2	5	9	5	9	
	2	5	4	8	5	8	
	3	10	4	8	5	6	
11	1	5	8	6	9	6	
	2	6	6	6	5	4	
	3	8	4	5	2	3	
12	1	3	7	4	10	9	
	2	7	6	2	4	8	
	3	10	6	1	4	8	
13	1	2	10	6	7	5	
	2	3	9	3	6	5	
	3	6	7	3	4	5	
14	1	3	6	9	8	9	
	2	5	5	9	6	8	
	3	8	5	8	4	8	
15	1	4	4	7	7	9	
	2	6	4	6	5	8	
	3	7	2	6	4	7	
16	1	5	2	4	3	4	
	2	7	2	4	3	2	
	3	10	2	4	3	1	
17	1	5	5	5	5	5	
	2	6	3	5	3	3	
	3	7	2	4	3	3	
18	1	2	3	4	6	6	
	2	9	3	4	5	5	
	3	10	1	4	5	5	
19	1	1	4	3	4	8	
	2	5	3	3	4	6	
	3	8	2	3	4	6	
20	1	3	9	9	9	5	
	2	7	9	8	6	5	
	3	9	9	8	5	3	
21	1	3	10	5	9	2	
	2	4	8	4	8	1	
	3	9	8	2	8	1	
22	1	2	8	10	10	10	
	2	5	7	7	9	9	
	3	7	5	5	9	9	
23	1	4	10	5	6	8	
	2	8	7	3	6	6	
	3	10	5	3	5	5	
24	1	4	8	5	6	5	
	2	5	7	3	4	4	
	3	8	7	2	2	2	
25	1	5	9	8	8	9	
	2	6	9	6	8	7	
	3	9	9	5	6	5	
26	1	3	4	6	8	9	
	2	6	2	3	7	7	
	3	10	2	3	7	6	
27	1	4	8	3	8	6	
	2	8	6	3	7	5	
	3	9	4	1	5	3	
28	1	3	7	5	7	6	
	2	4	6	3	5	5	
	3	5	4	2	4	5	
29	1	1	9	6	6	9	
	2	2	8	5	4	9	
	3	6	6	5	3	7	
30	1	1	7	9	5	10	
	2	4	5	9	5	10	
	3	9	3	7	2	10	
31	1	7	10	4	10	7	
	2	8	8	4	7	4	
	3	9	7	2	7	3	
32	1	2	7	6	6	10	
	2	5	7	6	6	9	
	3	7	7	6	2	8	
33	1	7	3	10	3	8	
	2	8	1	9	3	6	
	3	10	1	9	2	5	
34	1	3	6	4	6	9	
	2	5	4	3	4	8	
	3	7	3	2	3	6	
35	1	1	7	4	7	3	
	2	6	4	4	6	2	
	3	9	3	4	6	2	
36	1	3	3	9	6	6	
	2	7	2	9	5	5	
	3	10	2	9	5	3	
37	1	5	8	6	8	10	
	2	6	6	3	7	9	
	3	10	2	2	7	8	
38	1	3	9	5	8	2	
	2	4	7	5	7	1	
	3	5	6	5	6	1	
39	1	3	3	4	8	8	
	2	4	3	2	7	6	
	3	10	2	1	7	6	
40	1	3	6	5	5	7	
	2	8	6	4	2	7	
	3	10	6	4	1	7	
41	1	2	2	10	9	5	
	2	3	2	9	9	4	
	3	4	2	9	8	4	
42	1	3	3	3	6	7	
	2	4	3	3	6	3	
	3	5	3	3	6	2	
43	1	5	7	4	10	3	
	2	7	4	3	8	3	
	3	9	2	2	6	3	
44	1	1	8	9	4	10	
	2	3	5	8	3	9	
	3	7	4	7	3	8	
45	1	2	4	1	7	9	
	2	9	2	1	5	9	
	3	10	2	1	5	8	
46	1	1	9	8	8	9	
	2	8	8	8	5	7	
	3	10	6	8	3	5	
47	1	4	2	6	10	7	
	2	5	2	6	8	7	
	3	7	2	5	7	7	
48	1	2	5	9	9	2	
	2	4	4	9	8	2	
	3	8	3	8	8	2	
49	1	1	9	3	7	7	
	2	3	7	3	5	6	
	3	4	4	3	4	6	
50	1	4	10	6	8	2	
	2	5	7	4	5	2	
	3	9	4	3	4	2	
51	1	1	5	9	1	8	
	2	4	4	9	1	6	
	3	5	4	9	1	5	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	40	33	290	283

************************************************************************
