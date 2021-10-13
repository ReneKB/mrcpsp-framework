jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	5		2 4 5 7 10 
2	3	3		11 8 3 
3	3	2		16 6 
4	3	5		18 16 14 13 12 
5	3	2		16 8 
6	3	4		18 14 13 12 
7	3	2		14 9 
8	3	4		20 18 14 12 
9	3	5		27 22 18 15 13 
10	3	6		28 27 20 18 17 15 
11	3	6		28 27 23 20 19 17 
12	3	3		27 17 15 
13	3	4		23 20 19 17 
14	3	7		33 30 27 26 25 24 22 
15	3	5		33 32 26 23 19 
16	3	5		33 32 28 26 19 
17	3	5		32 26 25 24 21 
18	3	4		33 32 23 21 
19	3	3		25 24 21 
20	3	3		33 30 24 
21	3	4		35 31 30 29 
22	3	4		38 34 32 28 
23	3	1		24 
24	3	4		40 35 31 29 
25	3	4		40 35 31 29 
26	3	3		35 31 29 
27	3	4		40 38 37 34 
28	3	2		35 31 
29	3	3		38 37 34 
30	3	6		45 44 42 41 40 39 
31	3	4		44 41 39 36 
32	3	4		41 40 39 36 
33	3	1		34 
34	3	5		47 45 44 42 39 
35	3	3		49 44 37 
36	3	6		51 50 48 47 45 42 
37	3	2		41 39 
38	3	5		49 48 47 44 43 
39	3	4		51 50 48 43 
40	3	4		50 49 47 46 
41	3	3		48 47 46 
42	3	2		49 43 
43	3	1		46 
44	3	1		46 
45	3	1		46 
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
2	1	3	3	8	8	9	
	2	7	3	5	8	4	
	3	10	1	5	8	4	
3	1	2	7	5	8	8	
	2	3	3	3	3	6	
	3	4	1	3	1	3	
4	1	3	8	5	9	6	
	2	6	5	5	9	6	
	3	9	4	5	9	5	
5	1	5	6	1	9	7	
	2	6	5	1	7	6	
	3	9	3	1	5	4	
6	1	2	4	7	8	10	
	2	4	4	6	4	5	
	3	8	3	5	2	4	
7	1	2	6	8	4	5	
	2	3	6	8	3	4	
	3	8	4	8	2	1	
8	1	3	9	4	2	7	
	2	6	6	2	2	6	
	3	7	6	1	2	5	
9	1	3	6	9	2	6	
	2	5	4	5	2	6	
	3	6	2	5	2	6	
10	1	2	10	9	7	10	
	2	3	8	8	5	6	
	3	4	7	7	3	5	
11	1	1	8	5	10	9	
	2	7	7	3	10	7	
	3	8	5	3	10	5	
12	1	1	2	3	8	10	
	2	3	1	3	7	8	
	3	10	1	2	6	7	
13	1	2	7	8	5	6	
	2	5	6	7	5	4	
	3	10	5	5	2	3	
14	1	4	6	5	4	4	
	2	5	6	4	3	4	
	3	8	4	4	3	3	
15	1	4	1	7	6	9	
	2	6	1	7	4	6	
	3	9	1	4	2	5	
16	1	2	10	10	4	7	
	2	4	6	6	3	4	
	3	7	3	6	3	2	
17	1	5	9	6	7	4	
	2	8	8	4	5	3	
	3	9	8	3	4	1	
18	1	1	7	8	5	1	
	2	6	6	6	5	1	
	3	9	6	5	3	1	
19	1	7	9	4	8	6	
	2	8	9	4	8	4	
	3	9	9	3	8	3	
20	1	3	9	5	2	6	
	2	4	8	4	2	6	
	3	9	8	3	2	6	
21	1	1	3	6	6	7	
	2	3	3	6	5	6	
	3	6	3	6	4	6	
22	1	5	5	6	5	8	
	2	7	5	4	4	6	
	3	9	5	4	3	4	
23	1	5	5	10	7	7	
	2	7	5	8	6	6	
	3	8	5	8	4	2	
24	1	5	7	6	8	9	
	2	6	7	4	4	9	
	3	7	7	2	1	9	
25	1	1	6	8	4	3	
	2	2	4	6	2	3	
	3	3	4	6	1	2	
26	1	1	5	9	2	8	
	2	2	4	5	1	7	
	3	6	4	4	1	3	
27	1	6	5	6	5	4	
	2	7	5	5	5	4	
	3	10	4	2	4	4	
28	1	1	4	7	9	5	
	2	6	3	7	6	4	
	3	7	2	6	3	4	
29	1	1	8	8	9	7	
	2	2	4	6	6	6	
	3	9	4	6	5	1	
30	1	5	9	6	6	7	
	2	6	8	4	4	5	
	3	7	7	2	3	5	
31	1	2	8	3	8	7	
	2	3	4	2	5	3	
	3	5	4	2	4	3	
32	1	2	8	5	8	3	
	2	6	3	4	5	2	
	3	8	1	2	3	2	
33	1	3	3	3	7	6	
	2	6	3	3	5	5	
	3	10	2	2	3	5	
34	1	4	7	6	4	10	
	2	7	6	5	4	9	
	3	8	5	4	4	9	
35	1	1	7	7	6	8	
	2	2	6	6	4	6	
	3	5	6	5	4	4	
36	1	1	10	8	8	8	
	2	3	7	7	7	4	
	3	9	5	7	6	1	
37	1	4	7	7	7	3	
	2	8	7	5	7	3	
	3	9	7	4	7	3	
38	1	4	10	7	5	7	
	2	5	6	3	4	6	
	3	6	6	2	4	6	
39	1	6	7	8	8	9	
	2	7	5	7	6	8	
	3	9	5	4	3	8	
40	1	4	9	9	3	8	
	2	5	7	6	2	7	
	3	7	3	4	1	6	
41	1	1	5	4	8	5	
	2	5	3	3	8	3	
	3	6	3	1	8	1	
42	1	2	6	8	5	9	
	2	7	4	8	3	8	
	3	8	2	6	2	8	
43	1	3	5	4	9	4	
	2	4	3	4	7	3	
	3	10	3	4	6	1	
44	1	6	4	8	5	9	
	2	7	4	6	4	9	
	3	9	4	4	4	8	
45	1	1	6	3	5	9	
	2	5	5	3	4	9	
	3	6	4	3	3	9	
46	1	4	8	4	7	10	
	2	7	5	4	6	8	
	3	8	3	3	6	8	
47	1	1	2	8	9	7	
	2	2	2	5	7	7	
	3	4	2	5	6	6	
48	1	4	5	4	10	10	
	2	6	5	3	10	7	
	3	7	5	2	10	4	
49	1	1	4	10	9	4	
	2	4	3	6	8	4	
	3	9	3	4	8	1	
50	1	5	6	5	6	9	
	2	8	2	5	5	9	
	3	9	2	5	5	8	
51	1	4	8	5	7	9	
	2	8	7	3	6	9	
	3	9	7	2	5	9	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	18	17	292	317

************************************************************************
