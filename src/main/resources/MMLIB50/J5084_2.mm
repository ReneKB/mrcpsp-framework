jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	3		2 3 5 
2	3	7		12 11 10 9 8 7 6 
3	3	2		14 4 
4	3	3		12 10 7 
5	3	3		14 12 10 
6	3	6		20 19 18 17 15 14 
7	3	5		18 17 16 15 13 
8	3	5		18 17 16 15 13 
9	3	5		18 17 16 15 13 
10	3	4		18 17 15 13 
11	3	4		18 17 16 13 
12	3	4		19 18 17 16 
13	3	6		29 23 22 21 20 19 
14	3	2		22 16 
15	3	4		29 23 22 21 
16	3	6		33 31 29 28 27 21 
17	3	4		30 28 23 22 
18	3	2		23 22 
19	3	6		31 30 28 27 26 25 
20	3	6		37 35 31 30 27 25 
21	3	3		35 30 24 
22	3	6		37 35 34 33 31 27 
23	3	3		31 26 25 
24	3	3		42 26 25 
25	3	4		40 38 36 34 
26	3	4		44 39 37 32 
27	3	4		42 39 38 36 
28	3	4		44 41 37 35 
29	3	4		44 40 36 35 
30	3	3		39 38 32 
31	3	4		51 43 42 38 
32	3	4		50 46 41 40 
33	3	3		46 41 38 
34	3	4		50 46 44 41 
35	3	4		51 50 43 42 
36	3	3		51 50 41 
37	3	3		50 43 40 
38	3	4		50 49 48 44 
39	3	4		50 49 48 43 
40	3	3		51 48 45 
41	3	2		49 43 
42	3	2		49 46 
43	3	1		45 
44	3	1		45 
45	3	1		47 
46	3	1		48 
47	3	1		52 
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
2	1	3	9	6	9	9	
	2	9	6	5	4	6	
	3	10	4	3	2	4	
3	1	2	6	8	2	9	
	2	7	6	5	2	8	
	3	9	4	5	2	8	
4	1	8	8	5	9	4	
	2	9	6	5	9	4	
	3	10	5	3	8	3	
5	1	2	7	6	9	6	
	2	3	5	3	8	5	
	3	7	4	3	8	5	
6	1	5	5	4	9	9	
	2	6	3	4	8	6	
	3	8	1	3	7	4	
7	1	5	5	7	8	4	
	2	6	5	4	6	3	
	3	9	5	3	6	3	
8	1	3	4	7	9	9	
	2	7	4	5	7	3	
	3	8	1	4	2	2	
9	1	2	9	5	5	9	
	2	3	8	4	3	7	
	3	7	7	4	3	7	
10	1	2	8	4	3	4	
	2	6	8	3	3	3	
	3	9	8	1	3	3	
11	1	2	5	6	6	4	
	2	8	5	3	6	2	
	3	9	4	1	4	1	
12	1	1	7	5	7	7	
	2	8	7	4	4	7	
	3	10	7	2	3	6	
13	1	2	9	2	9	5	
	2	9	8	1	7	2	
	3	10	8	1	5	2	
14	1	4	1	5	8	9	
	2	7	1	2	6	5	
	3	8	1	2	5	4	
15	1	4	7	2	8	10	
	2	6	4	2	7	8	
	3	7	4	2	6	7	
16	1	3	10	6	8	4	
	2	4	4	4	6	4	
	3	6	3	3	4	4	
17	1	1	8	9	10	2	
	2	7	7	7	6	1	
	3	10	7	5	4	1	
18	1	5	4	4	5	6	
	2	8	4	3	4	5	
	3	10	2	2	4	2	
19	1	5	7	1	1	6	
	2	6	7	1	1	5	
	3	8	7	1	1	4	
20	1	4	6	4	9	10	
	2	9	5	3	8	8	
	3	10	4	1	7	8	
21	1	1	8	5	6	8	
	2	2	6	3	4	6	
	3	6	5	3	2	6	
22	1	4	7	8	9	4	
	2	5	5	8	9	3	
	3	6	3	7	8	3	
23	1	2	9	10	3	7	
	2	3	9	8	3	5	
	3	7	9	7	2	3	
24	1	5	9	7	7	6	
	2	6	9	5	4	6	
	3	10	7	3	2	4	
25	1	2	3	5	7	2	
	2	5	3	4	6	2	
	3	9	1	3	6	2	
26	1	6	7	3	7	4	
	2	7	6	2	5	2	
	3	8	1	1	5	2	
27	1	7	9	8	9	6	
	2	8	5	5	4	5	
	3	10	3	4	3	4	
28	1	4	6	9	3	8	
	2	5	5	9	2	8	
	3	6	5	9	2	7	
29	1	4	2	7	8	10	
	2	6	2	5	8	8	
	3	7	2	3	7	7	
30	1	3	5	8	6	10	
	2	4	5	7	5	8	
	3	5	4	7	3	5	
31	1	6	8	3	4	10	
	2	8	7	2	3	10	
	3	9	6	2	2	10	
32	1	1	3	6	6	4	
	2	3	2	4	5	4	
	3	5	2	2	4	2	
33	1	1	5	3	7	7	
	2	2	5	2	5	7	
	3	9	5	1	3	7	
34	1	3	6	9	5	10	
	2	7	4	7	2	7	
	3	8	3	3	1	6	
35	1	3	2	3	5	7	
	2	8	2	2	4	6	
	3	9	2	2	1	1	
36	1	1	4	7	7	7	
	2	4	3	7	5	5	
	3	5	2	6	2	2	
37	1	1	6	3	7	3	
	2	2	5	2	6	2	
	3	5	5	1	5	2	
38	1	4	10	7	10	7	
	2	5	9	6	6	6	
	3	8	8	6	4	5	
39	1	2	9	8	4	10	
	2	3	7	8	3	9	
	3	7	4	7	2	7	
40	1	3	7	5	9	2	
	2	7	5	4	8	1	
	3	8	5	3	8	1	
41	1	1	5	5	7	7	
	2	2	4	4	5	4	
	3	7	4	4	2	3	
42	1	2	7	6	6	4	
	2	9	3	5	5	3	
	3	10	3	5	4	3	
43	1	1	8	8	5	10	
	2	2	6	6	5	9	
	3	5	6	5	3	9	
44	1	1	8	10	4	10	
	2	6	7	6	4	8	
	3	8	5	1	2	8	
45	1	3	8	6	2	6	
	2	4	5	5	1	4	
	3	5	4	4	1	4	
46	1	3	5	7	6	5	
	2	9	4	6	6	4	
	3	10	3	6	6	3	
47	1	2	6	4	8	4	
	2	3	4	4	7	3	
	3	6	4	4	7	2	
48	1	5	1	4	5	5	
	2	6	1	2	5	4	
	3	9	1	1	5	4	
49	1	5	6	1	6	8	
	2	6	6	1	4	4	
	3	10	6	1	1	1	
50	1	6	6	9	5	7	
	2	7	4	8	3	4	
	3	10	4	6	1	4	
51	1	4	7	4	10	8	
	2	5	7	3	7	4	
	3	6	7	2	6	2	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	18	17	293	301

************************************************************************
