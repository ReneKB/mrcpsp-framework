jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 6 8 10 13 
2	3	3		14 9 4 
3	3	2		12 5 
4	3	2		12 7 
5	3	2		9 7 
6	3	6		19 18 17 16 14 12 
7	3	4		18 17 15 11 
8	3	6		20 19 17 16 15 14 
9	3	4		19 18 17 16 
10	3	2		17 11 
11	3	5		26 25 20 19 16 
12	3	3		30 22 15 
13	3	3		26 19 17 
14	3	8		36 30 28 26 25 24 23 21 
15	3	7		36 28 26 25 24 23 21 
16	3	7		36 34 30 28 24 23 21 
17	3	5		30 25 24 22 21 
18	3	5		30 26 25 21 20 
19	3	7		36 34 33 30 28 27 24 
20	3	4		33 29 27 24 
21	3	3		33 29 27 
22	3	5		38 36 35 34 32 
23	3	4		35 32 31 29 
24	3	4		38 35 32 31 
25	3	4		38 35 33 31 
26	3	4		35 34 33 32 
27	3	4		38 37 35 31 
28	3	4		39 38 37 35 
29	3	4		41 39 38 37 
30	3	4		43 41 39 37 
31	3	5		51 43 41 40 39 
32	3	3		41 39 37 
33	3	3		41 39 37 
34	3	4		51 41 40 39 
35	3	8		51 50 49 48 44 43 42 41 
36	3	6		50 49 48 44 43 41 
37	3	4		51 50 44 40 
38	3	3		51 44 40 
39	3	5		50 48 46 44 42 
40	3	5		49 48 47 46 45 
41	3	2		46 45 
42	3	2		47 45 
43	3	2		46 45 
44	3	1		47 
45	3	1		52 
46	3	1		52 
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
2	1	2	0	5	4	6	
	2	3	0	5	3	6	
	3	7	0	4	3	4	
3	1	2	0	6	3	2	
	2	4	3	0	3	1	
	3	4	0	4	3	1	
4	1	1	0	3	8	4	
	2	2	4	0	8	4	
	3	8	0	1	8	4	
5	1	1	6	0	5	9	
	2	2	6	0	4	9	
	3	7	4	0	4	9	
6	1	3	0	9	4	3	
	2	6	0	6	2	3	
	3	10	0	5	2	3	
7	1	3	9	0	2	10	
	2	9	0	5	2	7	
	3	10	7	0	1	5	
8	1	3	9	0	9	4	
	2	4	0	3	5	3	
	3	6	4	0	3	1	
9	1	2	6	0	10	8	
	2	5	6	0	7	7	
	3	6	5	0	7	3	
10	1	4	0	7	8	7	
	2	7	3	0	7	7	
	3	8	2	0	6	2	
11	1	4	5	0	7	8	
	2	8	0	6	4	6	
	3	10	0	6	3	4	
12	1	8	7	0	7	6	
	2	9	7	0	5	5	
	3	10	0	3	1	4	
13	1	1	5	0	1	4	
	2	4	4	0	1	3	
	3	6	3	0	1	2	
14	1	1	7	0	1	3	
	2	6	0	6	1	1	
	3	8	5	0	1	1	
15	1	6	0	5	9	2	
	2	7	7	0	9	2	
	3	9	7	0	9	1	
16	1	3	4	0	5	6	
	2	4	4	0	4	6	
	3	6	0	1	4	6	
17	1	4	0	5	3	6	
	2	4	3	0	3	5	
	3	8	0	2	1	4	
18	1	1	6	0	10	10	
	2	3	5	0	7	8	
	3	10	4	0	2	8	
19	1	2	6	0	10	7	
	2	4	0	8	7	5	
	3	8	0	4	3	4	
20	1	2	5	0	3	7	
	2	10	0	4	3	6	
	3	10	4	0	3	6	
21	1	1	0	7	7	7	
	2	4	6	0	4	6	
	3	10	0	6	2	4	
22	1	1	6	0	4	6	
	2	3	3	0	4	4	
	3	9	3	0	2	3	
23	1	1	0	6	7	4	
	2	8	7	0	4	4	
	3	10	0	5	4	4	
24	1	7	10	0	3	4	
	2	9	0	7	2	3	
	3	9	5	0	1	3	
25	1	2	7	0	4	7	
	2	3	4	0	3	4	
	3	5	0	3	2	3	
26	1	4	8	0	8	8	
	2	8	0	8	8	4	
	3	10	5	0	7	2	
27	1	2	2	0	5	9	
	2	6	2	0	5	6	
	3	8	2	0	5	3	
28	1	2	0	7	2	6	
	2	4	7	0	2	4	
	3	7	4	0	2	3	
29	1	5	5	0	9	10	
	2	6	5	0	9	9	
	3	9	5	0	9	8	
30	1	3	0	4	4	6	
	2	6	0	3	4	6	
	3	6	3	0	2	3	
31	1	4	0	9	8	9	
	2	4	6	0	8	8	
	3	5	6	0	8	7	
32	1	1	9	0	9	6	
	2	7	0	4	5	5	
	3	8	0	1	4	4	
33	1	4	5	0	9	10	
	2	6	4	0	9	5	
	3	10	0	3	9	2	
34	1	4	0	5	7	6	
	2	5	8	0	5	6	
	3	10	0	4	3	3	
35	1	6	0	10	7	8	
	2	8	0	9	5	7	
	3	8	2	0	3	7	
36	1	1	0	6	8	8	
	2	1	7	0	6	4	
	3	8	7	0	5	3	
37	1	5	8	0	4	7	
	2	5	0	10	2	6	
	3	7	2	0	1	6	
38	1	1	0	8	4	1	
	2	3	3	0	3	2	
	3	9	3	0	3	1	
39	1	3	4	0	7	8	
	2	7	0	8	6	5	
	3	10	0	6	5	5	
40	1	1	5	0	5	6	
	2	6	3	0	5	5	
	3	9	0	1	5	5	
41	1	1	0	9	8	9	
	2	2	9	0	8	7	
	3	9	0	7	7	4	
42	1	3	0	3	5	9	
	2	5	6	0	2	7	
	3	10	0	3	1	4	
43	1	5	0	2	5	7	
	2	8	6	0	3	6	
	3	10	0	1	1	4	
44	1	1	8	0	6	3	
	2	9	0	3	3	3	
	3	10	0	2	2	2	
45	1	1	5	0	7	7	
	2	3	3	0	6	5	
	3	7	0	1	3	3	
46	1	6	8	0	9	7	
	2	7	0	6	7	3	
	3	8	0	4	7	1	
47	1	3	0	3	1	8	
	2	4	0	2	1	8	
	3	10	4	0	1	8	
48	1	5	0	7	2	8	
	2	6	4	0	1	8	
	3	9	0	5	1	8	
49	1	6	8	0	8	8	
	2	8	7	0	6	5	
	3	9	5	0	6	3	
50	1	3	3	0	6	5	
	2	7	0	7	4	5	
	3	10	3	0	3	4	
51	1	1	0	4	4	5	
	2	6	6	0	3	4	
	3	9	4	0	3	2	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	21	18	263	291

************************************************************************
