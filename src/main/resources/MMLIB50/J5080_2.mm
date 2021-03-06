jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	7		2 3 4 5 7 9 10 
2	3	5		18 17 15 13 8 
3	3	3		12 8 6 
4	3	3		13 12 6 
5	3	1		6 
6	3	6		24 21 18 16 15 14 
7	3	5		24 16 15 14 12 
8	3	3		24 16 11 
9	3	2		24 11 
10	3	2		13 12 
11	3	4		26 21 20 14 
12	3	5		33 28 26 22 18 
13	3	4		28 26 20 19 
14	3	4		28 23 22 19 
15	3	3		28 26 20 
16	3	5		33 31 30 27 22 
17	3	2		23 19 
18	3	4		34 31 27 23 
19	3	5		34 33 30 27 25 
20	3	3		33 31 22 
21	3	4		34 33 31 25 
22	3	2		34 25 
23	3	2		30 25 
24	3	3		34 32 27 
25	3	3		42 36 29 
26	3	3		42 36 29 
27	3	6		43 42 40 38 36 35 
28	3	3		42 36 32 
29	3	2		40 32 
30	3	2		36 32 
31	3	2		40 32 
32	3	4		43 38 37 35 
33	3	4		40 38 37 35 
34	3	5		43 41 39 38 37 
35	3	2		41 39 
36	3	2		44 37 
37	3	5		51 50 49 46 45 
38	3	5		50 49 47 46 45 
39	3	4		50 49 46 44 
40	3	4		49 47 46 44 
41	3	4		51 49 47 45 
42	3	3		51 50 44 
43	3	2		49 45 
44	3	1		45 
45	3	1		48 
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
2	1	1	6	9	5	3	
	2	5	5	8	4	3	
	3	9	4	7	3	3	
3	1	3	1	5	8	4	
	2	6	1	4	4	3	
	3	10	1	3	3	1	
4	1	5	8	9	9	5	
	2	7	7	6	9	5	
	3	9	4	6	7	5	
5	1	3	9	4	8	7	
	2	9	6	3	5	5	
	3	10	5	2	5	5	
6	1	5	4	4	8	7	
	2	6	2	4	7	7	
	3	9	2	4	7	6	
7	1	1	6	10	9	8	
	2	5	4	9	8	7	
	3	7	3	9	8	6	
8	1	1	5	8	9	5	
	2	5	5	7	8	3	
	3	6	5	3	7	1	
9	1	5	6	8	10	9	
	2	6	3	6	9	7	
	3	7	1	6	9	6	
10	1	2	8	9	6	2	
	2	4	4	9	6	2	
	3	10	2	9	4	2	
11	1	2	7	8	7	8	
	2	3	6	7	5	5	
	3	4	3	7	3	3	
12	1	4	1	6	4	10	
	2	8	1	6	4	6	
	3	10	1	6	4	5	
13	1	1	7	3	8	9	
	2	5	7	2	8	8	
	3	10	5	2	7	6	
14	1	1	6	1	6	7	
	2	2	6	1	5	4	
	3	10	6	1	5	3	
15	1	1	5	6	4	5	
	2	3	3	5	2	5	
	3	4	2	1	2	3	
16	1	4	5	9	2	7	
	2	6	5	9	1	7	
	3	7	5	9	1	5	
17	1	1	10	8	7	6	
	2	3	9	5	6	6	
	3	5	9	4	5	4	
18	1	1	6	3	8	4	
	2	6	5	3	8	3	
	3	7	4	3	8	3	
19	1	1	8	8	9	7	
	2	9	7	6	9	6	
	3	10	4	1	9	6	
20	1	6	3	7	6	10	
	2	7	2	4	4	6	
	3	9	2	1	4	5	
21	1	1	4	6	10	2	
	2	4	2	5	8	2	
	3	8	1	5	7	2	
22	1	2	4	9	1	7	
	2	3	4	8	1	4	
	3	7	3	8	1	2	
23	1	2	6	10	3	8	
	2	5	4	9	2	5	
	3	8	3	9	1	2	
24	1	5	9	5	7	2	
	2	8	6	5	6	2	
	3	9	4	5	6	2	
25	1	1	6	3	10	7	
	2	4	4	2	5	7	
	3	7	2	1	3	4	
26	1	5	7	6	6	7	
	2	6	6	6	4	6	
	3	8	3	4	3	3	
27	1	4	7	10	4	6	
	2	6	5	7	2	4	
	3	8	3	5	1	3	
28	1	1	8	9	5	5	
	2	8	7	8	5	3	
	3	9	5	7	4	2	
29	1	1	7	3	9	5	
	2	9	7	1	7	5	
	3	10	7	1	4	4	
30	1	1	7	7	8	3	
	2	5	6	7	7	3	
	3	10	5	7	7	3	
31	1	1	10	7	8	7	
	2	9	5	6	6	6	
	3	10	5	6	4	6	
32	1	2	1	5	6	7	
	2	3	1	3	5	7	
	3	5	1	3	4	7	
33	1	7	9	7	6	9	
	2	8	4	6	3	8	
	3	9	2	6	3	7	
34	1	2	4	5	6	5	
	2	3	3	4	4	3	
	3	8	2	4	4	2	
35	1	5	6	4	7	7	
	2	8	5	2	6	6	
	3	9	4	2	5	4	
36	1	1	10	6	4	1	
	2	2	6	3	4	1	
	3	9	6	2	4	1	
37	1	7	5	8	7	8	
	2	8	4	8	6	6	
	3	9	4	6	4	6	
38	1	3	6	9	9	7	
	2	4	6	7	8	6	
	3	6	4	6	8	5	
39	1	1	6	7	9	3	
	2	2	5	7	7	1	
	3	5	5	7	5	1	
40	1	1	10	6	5	3	
	2	5	7	6	5	2	
	3	6	6	1	4	1	
41	1	6	5	8	7	4	
	2	8	4	4	5	4	
	3	10	3	3	5	4	
42	1	6	5	3	8	7	
	2	8	3	2	8	7	
	3	9	3	1	8	6	
43	1	1	10	7	5	7	
	2	7	8	5	3	6	
	3	9	6	4	2	2	
44	1	2	9	7	5	7	
	2	5	7	6	5	7	
	3	6	5	6	2	7	
45	1	2	3	3	6	10	
	2	3	2	2	3	5	
	3	7	2	2	1	3	
46	1	1	10	6	8	10	
	2	2	9	5	4	7	
	3	10	8	2	1	6	
47	1	6	3	3	8	8	
	2	7	3	3	7	8	
	3	8	3	3	6	8	
48	1	4	9	3	9	4	
	2	5	4	3	9	3	
	3	6	2	3	9	2	
49	1	4	6	4	4	6	
	2	9	6	3	3	6	
	3	10	6	1	1	6	
50	1	6	7	9	2	8	
	2	9	5	6	1	4	
	3	10	5	4	1	4	
51	1	4	5	6	2	4	
	2	9	5	4	1	4	
	3	10	4	3	1	3	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	19	21	246	223

************************************************************************
