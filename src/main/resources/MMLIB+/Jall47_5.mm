jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	5		2 4 7 8 9 
2	3	3		13 5 3 
3	3	3		15 11 6 
4	3	6		19 17 15 14 11 10 
5	3	5		17 14 12 11 10 
6	3	4		19 17 14 10 
7	3	4		17 15 14 11 
8	3	3		19 17 10 
9	3	3		19 17 10 
10	3	5		25 24 22 20 16 
11	3	5		25 24 22 20 16 
12	3	4		25 21 19 16 
13	3	2		22 15 
14	3	4		24 23 21 18 
15	3	4		27 24 23 21 
16	3	3		30 23 18 
17	3	7		38 32 30 29 28 27 26 
18	3	6		38 32 29 28 27 26 
19	3	3		29 28 22 
20	3	1		21 
21	3	6		38 32 31 29 28 26 
22	3	5		38 35 33 32 27 
23	3	4		38 35 29 26 
24	3	5		44 35 32 31 30 
25	3	2		31 26 
26	3	4		43 36 34 33 
27	3	3		44 36 31 
28	3	4		39 37 35 33 
29	3	3		43 36 34 
30	3	3		43 36 34 
31	3	3		43 41 34 
32	3	3		43 41 34 
33	3	8		51 50 49 46 44 42 41 40 
34	3	5		49 42 40 39 37 
35	3	7		51 50 49 45 43 42 41 
36	3	6		50 49 46 42 41 39 
37	3	5		51 50 48 46 45 
38	3	3		49 44 41 
39	3	2		48 45 
40	3	2		48 45 
41	3	2		48 47 
42	3	2		48 47 
43	3	2		48 47 
44	3	1		45 
45	3	1		47 
46	3	1		47 
47	3	1		52 
48	3	1		52 
49	3	1		52 
50	3	1		52 
51	3	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	4	8	8	6	9	7	10	
	2	7	8	6	5	8	5	6	
	3	8	8	6	4	8	4	5	
3	1	5	2	7	7	10	6	9	
	2	6	1	4	3	9	5	8	
	3	7	1	4	2	9	5	8	
4	1	3	8	1	9	9	7	8	
	2	5	7	1	8	4	6	8	
	3	7	6	1	6	2	4	8	
5	1	7	7	1	9	5	6	8	
	2	8	5	1	5	4	4	7	
	3	9	1	1	1	4	4	7	
6	1	2	5	4	6	9	6	5	
	2	9	4	4	4	7	3	5	
	3	10	3	2	4	7	3	5	
7	1	2	7	7	6	9	3	5	
	2	5	6	3	6	7	2	3	
	3	6	6	3	6	3	2	3	
8	1	1	6	6	7	8	8	6	
	2	6	6	4	7	7	5	4	
	3	9	4	1	7	6	3	4	
9	1	5	9	6	7	3	2	4	
	2	6	8	6	7	3	2	3	
	3	7	4	5	7	2	2	3	
10	1	1	8	7	5	10	4	6	
	2	5	7	4	4	6	4	4	
	3	9	7	2	4	2	3	4	
11	1	2	8	8	5	10	4	8	
	2	7	8	6	5	7	4	4	
	3	10	7	1	4	6	4	4	
12	1	1	5	10	8	3	5	5	
	2	4	5	5	8	2	2	5	
	3	7	5	3	6	2	2	4	
13	1	2	1	7	6	8	8	9	
	2	4	1	3	5	8	5	6	
	3	6	1	1	5	8	4	5	
14	1	1	9	8	10	4	8	5	
	2	3	7	4	9	3	6	5	
	3	8	4	4	7	2	3	2	
15	1	2	6	9	10	6	7	8	
	2	5	4	6	7	2	4	6	
	3	7	3	4	4	2	4	6	
16	1	1	9	7	8	10	6	9	
	2	3	8	6	5	9	5	7	
	3	4	8	6	2	9	3	5	
17	1	2	5	6	5	8	10	5	
	2	7	5	6	4	7	6	5	
	3	10	3	6	3	6	3	5	
18	1	1	8	9	7	9	7	9	
	2	4	7	8	5	8	5	7	
	3	7	2	8	5	8	2	7	
19	1	1	5	9	10	4	7	9	
	2	2	5	8	9	4	7	8	
	3	9	5	8	8	3	7	8	
20	1	1	9	6	3	7	8	8	
	2	3	5	4	3	6	7	7	
	3	4	1	4	2	5	6	5	
21	1	4	8	4	9	8	4	6	
	2	7	4	3	4	7	2	5	
	3	8	2	3	1	7	1	3	
22	1	3	9	7	9	7	8	7	
	2	4	9	6	5	5	8	6	
	3	7	9	5	3	4	8	5	
23	1	3	9	9	2	7	7	10	
	2	4	5	9	1	6	5	9	
	3	6	5	9	1	6	4	9	
24	1	1	10	1	7	8	6	7	
	2	3	8	1	5	5	4	7	
	3	9	7	1	4	4	2	7	
25	1	2	6	5	9	8	6	7	
	2	4	6	4	8	7	4	6	
	3	8	6	4	7	7	3	2	
26	1	2	8	4	5	8	4	7	
	2	4	6	4	3	5	2	5	
	3	7	4	2	3	3	2	2	
27	1	1	10	7	3	4	9	8	
	2	7	9	5	3	2	9	5	
	3	9	7	3	2	2	9	5	
28	1	3	7	3	9	2	7	4	
	2	4	6	2	7	2	7	3	
	3	6	5	1	5	2	7	1	
29	1	6	8	6	6	3	3	6	
	2	7	8	6	3	2	2	6	
	3	10	8	3	2	2	2	4	
30	1	3	2	8	5	7	4	9	
	2	8	1	6	5	5	4	6	
	3	9	1	2	4	5	4	6	
31	1	1	10	7	5	3	7	9	
	2	5	6	5	4	2	6	7	
	3	8	4	5	3	2	2	6	
32	1	2	3	6	7	2	7	6	
	2	7	3	6	6	2	5	5	
	3	9	2	6	4	2	5	1	
33	1	5	3	5	8	6	5	10	
	2	6	3	4	6	5	4	8	
	3	10	3	3	4	4	3	6	
34	1	2	10	10	9	5	9	4	
	2	7	9	8	7	4	8	4	
	3	9	9	6	5	2	8	4	
35	1	1	9	5	8	7	4	6	
	2	7	8	3	8	4	4	6	
	3	8	8	2	8	4	4	4	
36	1	1	7	8	10	4	7	8	
	2	3	5	4	7	3	6	7	
	3	9	4	4	6	3	2	6	
37	1	7	6	6	2	6	4	10	
	2	8	5	5	2	5	3	10	
	3	9	4	2	1	5	2	10	
38	1	2	4	4	6	4	7	1	
	2	5	4	3	4	3	5	1	
	3	7	4	2	4	1	1	1	
39	1	2	8	7	9	9	6	6	
	2	4	8	6	8	7	5	6	
	3	7	6	4	8	7	5	6	
40	1	2	6	4	9	4	3	2	
	2	5	5	4	5	3	2	2	
	3	10	4	4	3	2	1	1	
41	1	6	8	7	5	6	4	8	
	2	8	8	7	5	6	4	6	
	3	9	8	6	5	2	4	6	
42	1	1	9	2	10	10	5	9	
	2	2	9	2	10	10	4	9	
	3	5	9	2	10	10	4	8	
43	1	1	9	5	10	6	9	2	
	2	5	6	4	9	4	4	1	
	3	9	5	4	9	4	3	1	
44	1	1	8	6	7	6	4	9	
	2	7	6	5	7	6	3	9	
	3	10	3	5	7	6	2	7	
45	1	3	6	10	5	7	7	9	
	2	5	4	9	3	6	5	9	
	3	7	3	8	3	3	4	9	
46	1	2	5	10	6	8	5	6	
	2	4	5	6	4	4	3	5	
	3	9	4	3	4	3	3	5	
47	1	3	3	1	5	5	7	10	
	2	8	2	1	3	5	5	9	
	3	10	2	1	3	1	3	8	
48	1	4	5	9	6	4	7	10	
	2	7	4	6	5	2	5	9	
	3	10	4	2	5	2	5	8	
49	1	2	7	3	5	1	9	7	
	2	5	5	2	5	1	8	7	
	3	9	3	2	3	1	7	5	
50	1	1	5	8	6	6	9	1	
	2	6	3	6	6	6	9	1	
	3	9	1	3	6	4	9	1	
51	1	6	9	6	3	7	4	4	
	2	9	5	4	2	5	3	4	
	3	10	2	3	1	4	3	2	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	20	18	280	263	248	295

************************************************************************
