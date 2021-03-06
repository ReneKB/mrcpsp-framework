jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	7		2 3 4 5 6 9 10 
2	3	4		17 14 13 7 
3	3	3		17 12 8 
4	3	3		17 13 7 
5	3	2		14 7 
6	3	6		21 16 15 14 13 12 
7	3	5		21 20 16 15 12 
8	3	5		20 18 16 15 13 
9	3	4		16 15 14 12 
10	3	2		16 11 
11	3	3		20 19 12 
12	3	4		26 23 22 18 
13	3	4		27 26 23 22 
14	3	6		29 28 27 26 25 24 
15	3	5		29 26 25 24 23 
16	3	3		27 26 19 
17	3	3		25 24 21 
18	3	6		31 29 28 27 25 24 
19	3	4		33 30 29 23 
20	3	4		30 28 27 26 
21	3	3		30 26 23 
22	3	4		39 32 29 25 
23	3	5		35 34 32 31 28 
24	3	6		39 38 35 34 33 32 
25	3	6		38 37 35 34 33 30 
26	3	4		37 34 33 31 
27	3	3		38 35 32 
28	3	5		42 40 39 38 36 
29	3	4		42 37 36 34 
30	3	6		51 45 43 42 41 40 
31	3	5		51 42 41 40 39 
32	3	4		45 43 40 37 
33	3	4		51 41 40 36 
34	3	4		51 45 41 40 
35	3	4		51 45 42 40 
36	3	5		50 49 45 44 43 
37	3	4		51 49 44 41 
38	3	4		51 49 44 41 
39	3	5		50 49 48 45 44 
40	3	4		50 49 48 44 
41	3	4		50 48 47 46 
42	3	2		49 44 
43	3	3		48 47 46 
44	3	2		47 46 
45	3	2		47 46 
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
2	1	1	9	0	7	5	
	2	4	0	8	6	3	
	3	6	0	7	4	3	
3	1	3	7	0	7	8	
	2	4	0	6	3	6	
	3	5	0	4	3	6	
4	1	7	9	0	8	8	
	2	10	9	0	7	5	
	3	10	0	6	7	4	
5	1	1	0	2	9	3	
	2	5	4	0	7	3	
	3	9	0	1	5	3	
6	1	1	0	10	5	8	
	2	4	0	9	3	7	
	3	9	0	7	2	6	
7	1	5	0	9	9	3	
	2	6	4	0	6	1	
	3	9	0	5	6	1	
8	1	2	0	9	10	7	
	2	4	0	8	8	6	
	3	7	0	8	8	4	
9	1	6	5	0	7	6	
	2	8	4	0	7	4	
	3	9	0	4	7	1	
10	1	6	0	6	8	10	
	2	8	5	0	5	8	
	3	9	0	6	3	8	
11	1	1	10	0	7	9	
	2	6	0	2	7	5	
	3	10	0	1	7	4	
12	1	2	0	7	5	10	
	2	4	4	0	4	8	
	3	5	4	0	3	6	
13	1	1	0	6	7	7	
	2	7	2	0	6	6	
	3	8	0	4	6	2	
14	1	1	0	6	6	1	
	2	2	7	0	6	1	
	3	9	7	0	4	1	
15	1	2	6	0	8	4	
	2	6	4	0	8	2	
	3	8	3	0	8	2	
16	1	1	7	0	9	10	
	2	7	5	0	7	4	
	3	8	2	0	6	2	
17	1	4	0	3	6	8	
	2	7	4	0	5	6	
	3	7	0	1	3	5	
18	1	2	6	0	8	9	
	2	8	0	9	6	9	
	3	10	0	9	4	8	
19	1	6	10	0	10	1	
	2	7	10	0	6	1	
	3	9	10	0	3	1	
20	1	3	6	0	8	8	
	2	5	4	0	6	8	
	3	9	0	6	1	7	
21	1	2	7	0	5	5	
	2	3	6	0	3	3	
	3	9	4	0	2	2	
22	1	1	0	2	5	7	
	2	4	0	2	3	7	
	3	8	5	0	3	7	
23	1	4	0	4	1	7	
	2	5	0	3	1	5	
	3	9	5	0	1	5	
24	1	2	0	8	1	4	
	2	8	7	0	1	2	
	3	9	0	6	1	2	
25	1	2	0	4	6	8	
	2	3	0	3	5	3	
	3	5	0	1	4	3	
26	1	3	5	0	3	3	
	2	6	5	0	2	3	
	3	8	0	3	2	1	
27	1	5	0	4	4	9	
	2	8	9	0	3	8	
	3	8	0	4	3	8	
28	1	4	0	7	6	5	
	2	5	4	0	4	4	
	3	7	3	0	3	4	
29	1	4	0	7	4	4	
	2	6	0	6	3	4	
	3	10	0	5	3	3	
30	1	4	8	0	5	9	
	2	7	8	0	4	7	
	3	10	8	0	1	7	
31	1	1	0	9	9	6	
	2	2	0	8	9	6	
	3	7	3	0	9	1	
32	1	8	0	7	8	5	
	2	9	0	6	6	3	
	3	10	0	5	2	3	
33	1	7	6	0	8	9	
	2	9	6	0	7	9	
	3	10	0	7	5	9	
34	1	5	5	0	4	3	
	2	6	4	0	4	2	
	3	7	4	0	3	1	
35	1	3	5	0	5	8	
	2	6	4	0	5	7	
	3	10	3	0	4	6	
36	1	1	0	7	8	8	
	2	2	1	0	6	8	
	3	4	0	1	4	8	
37	1	2	0	6	9	6	
	2	6	0	5	9	5	
	3	8	0	4	9	5	
38	1	3	0	8	4	6	
	2	3	7	0	3	6	
	3	7	7	0	1	4	
39	1	2	0	9	7	9	
	2	6	7	0	5	9	
	3	9	0	8	5	9	
40	1	1	6	0	7	9	
	2	4	6	0	6	9	
	3	10	5	0	6	9	
41	1	3	5	0	1	9	
	2	3	0	6	1	8	
	3	10	2	0	1	6	
42	1	4	0	8	8	10	
	2	7	0	7	8	8	
	3	9	6	0	7	6	
43	1	2	5	0	4	2	
	2	8	3	0	4	3	
	3	9	3	0	4	2	
44	1	4	0	10	6	10	
	2	6	6	0	5	5	
	3	8	3	0	4	2	
45	1	3	9	0	6	8	
	2	6	7	0	4	5	
	3	8	5	0	4	4	
46	1	3	0	9	9	5	
	2	8	0	9	9	3	
	3	9	4	0	9	2	
47	1	3	3	0	9	6	
	2	4	0	1	6	6	
	3	5	0	1	6	5	
48	1	2	6	0	6	7	
	2	5	0	9	2	6	
	3	8	3	0	2	5	
49	1	3	9	0	3	9	
	2	7	9	0	2	9	
	3	7	0	2	2	9	
50	1	2	0	6	9	7	
	2	10	0	5	9	5	
	3	10	6	0	9	2	
51	1	2	4	0	4	9	
	2	4	3	0	3	8	
	3	6	1	0	3	8	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	17	18	238	251

************************************************************************
