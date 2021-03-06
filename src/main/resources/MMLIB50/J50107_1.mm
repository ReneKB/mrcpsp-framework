jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	5		2 3 4 5 7 
2	3	3		10 9 6 
3	3	5		14 11 10 9 8 
4	3	6		20 19 14 13 12 11 
5	3	6		16 15 14 12 10 9 
6	3	5		19 15 14 13 8 
7	3	3		14 12 9 
8	3	5		23 20 17 16 12 
9	3	7		39 26 23 20 19 18 17 
10	3	7		39 28 26 23 21 19 18 
11	3	3		21 16 15 
12	3	6		39 31 28 26 21 18 
13	3	6		39 31 26 23 21 18 
14	3	5		39 31 23 21 17 
15	3	6		39 31 30 24 23 22 
16	3	5		39 31 30 28 22 
17	3	5		30 28 27 25 24 
18	3	4		30 25 24 22 
19	3	4		31 30 25 22 
20	3	3		30 28 21 
21	3	1		22 
22	3	5		38 36 33 29 27 
23	3	2		32 25 
24	3	5		38 36 35 34 32 
25	3	2		36 29 
26	3	2		32 29 
27	3	3		37 34 32 
28	3	2		33 32 
29	3	3		42 35 34 
30	3	3		42 36 35 
31	3	1		32 
32	3	4		43 42 41 40 
33	3	2		41 34 
34	3	3		45 43 40 
35	3	3		44 43 41 
36	3	2		45 40 
37	3	2		45 40 
38	3	4		47 45 44 43 
39	3	1		40 
40	3	4		51 49 47 44 
41	3	4		51 50 46 45 
42	3	2		45 44 
43	3	3		50 49 48 
44	3	2		50 46 
45	3	2		49 48 
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
2	1	4	9	6	0	10	
	2	5	8	5	0	9	
	3	10	8	4	0	7	
3	1	5	7	6	4	0	
	2	9	7	2	4	0	
	3	10	7	1	2	0	
4	1	4	3	9	7	0	
	2	5	1	9	7	0	
	3	9	1	8	5	0	
5	1	3	3	7	4	0	
	2	8	3	5	0	2	
	3	10	3	2	0	1	
6	1	4	9	5	0	9	
	2	4	6	4	3	0	
	3	10	2	3	3	0	
7	1	1	9	8	4	0	
	2	2	8	4	0	8	
	3	5	6	4	3	0	
8	1	3	9	7	4	0	
	2	4	7	4	4	0	
	3	8	6	4	0	1	
9	1	2	5	6	0	8	
	2	3	4	5	0	8	
	3	6	4	3	5	0	
10	1	3	4	8	8	0	
	2	7	3	6	8	0	
	3	8	3	6	0	5	
11	1	1	1	8	8	0	
	2	2	1	8	0	6	
	3	10	1	8	0	4	
12	1	3	2	7	10	0	
	2	6	2	7	8	0	
	3	9	1	7	0	2	
13	1	1	10	7	9	0	
	2	6	8	7	8	0	
	3	10	7	4	0	3	
14	1	3	8	9	6	0	
	2	9	7	9	6	0	
	3	9	7	9	0	7	
15	1	3	4	6	0	5	
	2	5	4	5	0	3	
	3	7	4	4	0	2	
16	1	4	5	5	0	8	
	2	6	4	4	8	0	
	3	10	2	4	8	0	
17	1	8	6	5	7	0	
	2	9	5	4	0	5	
	3	10	5	3	0	4	
18	1	3	7	9	5	0	
	2	5	6	9	4	0	
	3	7	6	9	3	0	
19	1	1	3	7	0	6	
	2	4	2	5	0	3	
	3	6	2	2	6	0	
20	1	4	5	6	0	4	
	2	6	4	3	3	0	
	3	7	3	2	3	0	
21	1	1	2	7	5	0	
	2	6	2	6	0	4	
	3	8	2	4	0	2	
22	1	8	4	4	0	5	
	2	9	3	2	3	0	
	3	9	2	2	0	3	
23	1	2	7	3	0	3	
	2	6	5	3	0	2	
	3	9	3	3	5	0	
24	1	2	6	5	0	7	
	2	7	4	5	6	0	
	3	10	4	4	0	5	
25	1	2	9	9	8	0	
	2	8	9	6	0	9	
	3	9	9	4	7	0	
26	1	2	9	6	0	4	
	2	6	7	6	0	3	
	3	7	6	5	0	2	
27	1	1	3	9	0	4	
	2	2	3	7	6	0	
	3	9	3	7	4	0	
28	1	1	9	6	5	0	
	2	2	8	3	5	0	
	3	9	8	1	3	0	
29	1	3	9	10	0	3	
	2	4	9	9	0	1	
	3	5	9	9	2	0	
30	1	3	10	8	9	0	
	2	4	8	7	6	0	
	3	10	6	5	5	0	
31	1	4	4	4	9	0	
	2	5	4	2	9	0	
	3	7	4	2	0	5	
32	1	2	3	4	5	0	
	2	7	2	4	5	0	
	3	8	1	4	0	3	
33	1	2	5	4	0	6	
	2	6	3	3	4	0	
	3	8	1	2	4	0	
34	1	4	8	8	9	0	
	2	4	7	6	0	5	
	3	5	7	6	1	0	
35	1	5	5	7	6	0	
	2	6	4	6	4	0	
	3	7	1	6	0	2	
36	1	2	3	8	8	0	
	2	4	3	8	0	2	
	3	9	3	8	0	1	
37	1	6	10	8	0	9	
	2	7	9	8	8	0	
	3	8	9	8	6	0	
38	1	1	8	7	0	3	
	2	3	6	6	5	0	
	3	10	5	6	0	2	
39	1	5	8	9	0	7	
	2	7	7	8	0	7	
	3	8	7	8	4	0	
40	1	2	4	6	6	0	
	2	6	3	5	0	7	
	3	7	2	5	5	0	
41	1	1	4	9	3	0	
	2	2	3	8	0	3	
	3	10	2	8	1	0	
42	1	3	7	2	0	8	
	2	4	5	1	5	0	
	3	10	5	1	3	0	
43	1	2	8	5	0	3	
	2	9	8	5	4	0	
	3	10	6	3	2	0	
44	1	8	7	4	0	7	
	2	9	4	3	0	7	
	3	9	2	3	4	0	
45	1	1	7	4	0	9	
	2	2	6	4	0	8	
	3	10	3	4	0	6	
46	1	6	5	10	6	0	
	2	7	5	9	6	0	
	3	8	5	8	2	0	
47	1	5	5	9	0	4	
	2	9	3	6	3	0	
	3	10	3	5	0	3	
48	1	5	10	6	9	0	
	2	7	9	3	8	0	
	3	8	8	3	0	4	
49	1	3	6	4	4	0	
	2	5	5	3	3	0	
	3	7	1	1	3	0	
50	1	7	1	10	7	0	
	2	8	1	5	6	0	
	3	9	1	3	0	5	
51	1	1	6	9	0	9	
	2	2	6	4	6	0	
	3	4	6	2	6	0	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	37	33	204	176

************************************************************************
