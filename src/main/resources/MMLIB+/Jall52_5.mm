jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 4 5 10 16 
2	3	4		11 9 7 6 
3	3	6		20 17 15 11 9 8 
4	3	5		19 17 12 11 7 
5	3	3		19 17 7 
6	3	5		20 18 17 15 14 
7	3	4		20 18 15 14 
8	3	4		21 19 13 12 
9	3	3		19 14 12 
10	3	3		20 18 14 
11	3	2		25 13 
12	3	3		25 24 18 
13	3	3		28 24 18 
14	3	4		30 28 23 21 
15	3	3		30 22 21 
16	3	3		30 23 20 
17	3	5		31 30 26 24 22 
18	3	4		31 30 26 22 
19	3	4		31 30 26 22 
20	3	5		37 29 28 25 24 
21	3	4		37 29 25 24 
22	3	2		27 23 
23	3	4		37 36 32 29 
24	3	3		42 32 27 
25	3	3		42 31 27 
26	3	5		42 37 35 34 33 
27	3	4		36 35 34 33 
28	3	5		42 39 38 35 34 
29	3	4		42 38 35 34 
30	3	4		38 37 35 34 
31	3	4		50 39 35 34 
32	3	5		51 43 40 39 38 
33	3	4		43 41 39 38 
34	3	5		51 49 43 41 40 
35	3	5		51 49 43 41 40 
36	3	4		50 49 43 41 
37	3	3		51 50 40 
38	3	4		50 49 48 44 
39	3	4		49 47 46 45 
40	3	2		45 44 
41	3	3		47 46 45 
42	3	3		47 46 45 
43	3	3		48 47 46 
44	3	2		47 46 
45	3	1		48 
46	3	1		52 
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
2	1	8	5	10	9	9	2	5	
	2	9	4	4	8	8	1	5	
	3	10	4	4	7	8	1	3	
3	1	5	5	9	3	6	5	5	
	2	6	5	8	3	5	3	3	
	3	10	5	7	3	4	2	3	
4	1	4	7	10	6	7	10	6	
	2	5	7	9	4	5	8	3	
	3	10	7	8	3	3	5	2	
5	1	3	8	9	8	4	5	4	
	2	4	7	8	6	4	4	4	
	3	6	7	8	6	4	2	2	
6	1	4	5	9	6	7	10	6	
	2	6	3	8	4	7	6	6	
	3	8	3	8	3	7	5	6	
7	1	1	5	7	7	8	4	10	
	2	6	5	5	7	8	4	4	
	3	9	4	4	7	6	2	4	
8	1	2	4	3	8	9	6	10	
	2	3	2	1	8	8	5	9	
	3	4	1	1	7	8	4	9	
9	1	4	8	7	1	3	2	6	
	2	7	8	5	1	2	1	4	
	3	9	8	4	1	2	1	1	
10	1	1	9	8	7	3	9	8	
	2	6	7	8	5	3	7	5	
	3	7	3	6	4	1	7	4	
11	1	7	9	8	9	5	7	3	
	2	8	8	8	9	3	6	2	
	3	9	6	5	9	2	5	2	
12	1	3	8	6	8	9	6	10	
	2	4	7	4	6	9	4	6	
	3	5	5	4	6	8	3	5	
13	1	1	7	7	5	8	7	7	
	2	4	6	6	5	5	7	5	
	3	7	6	3	3	4	7	3	
14	1	2	7	8	8	4	5	10	
	2	3	6	6	7	4	3	7	
	3	9	5	6	7	4	2	6	
15	1	2	9	5	10	4	6	7	
	2	5	9	4	8	3	5	6	
	3	6	8	3	5	3	5	3	
16	1	1	8	5	3	8	3	7	
	2	2	6	4	3	8	3	6	
	3	8	6	3	3	6	2	2	
17	1	1	4	5	4	4	10	8	
	2	5	2	5	3	3	7	5	
	3	7	1	3	3	3	5	5	
18	1	6	8	7	8	9	9	3	
	2	8	7	4	8	7	5	2	
	3	10	6	3	8	7	3	2	
19	1	1	7	7	1	3	7	8	
	2	2	6	5	1	2	6	8	
	3	3	2	1	1	1	4	8	
20	1	5	6	4	8	9	6	9	
	2	8	5	4	7	6	4	6	
	3	10	3	2	1	3	3	6	
21	1	2	9	6	8	7	1	5	
	2	3	8	6	8	7	1	3	
	3	4	8	5	8	7	1	2	
22	1	1	8	4	3	10	8	6	
	2	5	7	3	3	9	5	4	
	3	9	6	3	3	9	2	3	
23	1	8	10	8	8	7	8	4	
	2	9	8	4	7	7	8	4	
	3	10	7	2	5	4	6	4	
24	1	3	6	9	9	1	2	6	
	2	4	6	7	8	1	2	6	
	3	9	6	5	8	1	2	2	
25	1	3	5	6	8	9	7	10	
	2	9	3	4	6	7	7	9	
	3	10	1	3	5	4	7	9	
26	1	6	4	5	3	8	6	4	
	2	7	4	4	2	5	6	4	
	3	8	4	4	2	1	6	3	
27	1	1	4	7	8	7	9	8	
	2	2	4	7	6	6	9	7	
	3	9	2	7	3	5	9	7	
28	1	1	9	2	7	8	3	6	
	2	6	7	1	7	8	3	5	
	3	8	4	1	7	6	3	1	
29	1	5	2	8	8	7	8	8	
	2	6	1	8	7	7	8	6	
	3	8	1	6	7	4	8	3	
30	1	3	8	9	9	7	8	8	
	2	6	6	8	6	7	6	8	
	3	8	4	8	3	6	4	7	
31	1	1	8	9	8	6	8	5	
	2	5	7	8	7	5	8	3	
	3	10	4	6	4	4	8	1	
32	1	3	3	1	9	6	5	8	
	2	4	2	1	5	5	4	8	
	3	6	1	1	3	3	3	7	
33	1	4	8	6	4	5	7	5	
	2	6	6	5	4	4	7	5	
	3	9	6	4	4	3	6	4	
34	1	1	4	10	10	8	9	9	
	2	5	3	4	8	6	8	8	
	3	9	3	4	7	5	6	8	
35	1	2	3	2	5	7	4	10	
	2	6	3	2	4	6	4	6	
	3	7	2	2	3	4	3	5	
36	1	1	9	10	8	3	7	6	
	2	3	8	10	7	3	7	3	
	3	9	5	10	7	3	5	3	
37	1	1	7	5	7	9	7	1	
	2	4	5	4	6	8	4	1	
	3	5	2	2	3	6	1	1	
38	1	2	10	5	6	7	5	10	
	2	4	10	4	4	4	4	8	
	3	10	10	1	4	3	4	8	
39	1	7	9	7	3	7	7	3	
	2	8	9	3	3	5	3	2	
	3	10	8	2	3	4	2	2	
40	1	2	8	9	9	2	6	4	
	2	3	5	9	7	1	5	4	
	3	4	3	8	5	1	5	4	
41	1	4	6	5	6	7	10	8	
	2	9	4	5	6	4	10	4	
	3	10	4	5	5	2	10	2	
42	1	1	10	9	9	7	7	7	
	2	4	9	7	8	7	7	6	
	3	10	8	4	8	7	7	6	
43	1	1	8	4	6	1	9	7	
	2	3	6	2	3	1	7	5	
	3	7	5	1	2	1	5	1	
44	1	3	10	7	5	6	3	9	
	2	6	9	6	5	5	2	6	
	3	7	8	6	5	4	1	4	
45	1	1	4	10	8	5	6	2	
	2	4	3	7	5	3	3	2	
	3	6	3	7	4	2	1	1	
46	1	2	2	8	7	7	4	8	
	2	7	2	6	7	7	3	5	
	3	10	2	5	7	6	3	5	
47	1	3	3	10	5	9	6	4	
	2	6	2	4	4	9	4	4	
	3	10	2	1	3	9	4	4	
48	1	1	8	7	4	5	6	6	
	2	2	8	5	3	5	5	6	
	3	3	8	3	3	3	5	6	
49	1	2	8	5	2	8	4	9	
	2	4	4	5	1	5	4	6	
	3	5	2	1	1	5	4	5	
50	1	3	1	9	9	9	4	7	
	2	4	1	9	9	9	3	3	
	3	5	1	7	9	8	2	3	
51	1	6	7	4	6	6	8	8	
	2	7	7	4	2	5	4	7	
	3	10	7	3	2	2	2	7	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	40	40	254	242	230	236

************************************************************************
