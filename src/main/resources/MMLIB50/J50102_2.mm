jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 4 5 8 13 
2	3	6		16 15 12 11 10 9 
3	3	3		12 7 6 
4	3	2		15 6 
5	3	4		16 15 14 11 
6	3	3		16 14 11 
7	3	3		16 15 11 
8	3	1		9 
9	3	3		20 18 14 
10	3	3		20 18 14 
11	3	4		20 19 18 17 
12	3	2		18 14 
13	3	5		24 22 20 19 17 
14	3	6		27 25 24 22 19 17 
15	3	6		33 28 27 23 21 18 
16	3	5		28 22 21 20 19 
17	3	6		33 32 30 28 26 21 
18	3	5		35 26 25 24 22 
19	3	4		33 30 26 23 
20	3	6		36 35 33 31 27 25 
21	3	6		42 39 36 35 31 29 
22	3	5		42 39 34 32 29 
23	3	5		42 39 35 32 29 
24	3	4		40 36 34 30 
25	3	5		42 39 38 34 32 
26	3	4		39 38 36 31 
27	3	3		42 39 29 
28	3	2		39 31 
29	3	5		51 47 40 38 37 
30	3	5		51 47 42 39 38 
31	3	2		51 34 
32	3	3		51 47 37 
33	3	3		47 38 37 
34	3	2		47 37 
35	3	2		51 37 
36	3	4		51 45 44 41 
37	3	3		45 44 41 
38	3	3		45 44 43 
39	3	3		45 44 43 
40	3	2		44 43 
41	3	2		46 43 
42	3	1		44 
43	3	2		50 49 
44	3	1		46 
45	3	1		46 
46	3	1		48 
47	3	1		49 
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
2	1	4	0	8	8	5	
	2	5	0	6	6	5	
	3	9	1	0	6	3	
3	1	2	0	7	9	8	
	2	8	2	0	6	8	
	3	9	2	0	6	6	
4	1	7	4	0	7	6	
	2	9	4	0	6	5	
	3	9	0	4	6	5	
5	1	4	7	0	5	2	
	2	8	0	7	4	2	
	3	8	5	0	3	1	
6	1	2	2	0	3	3	
	2	3	0	4	3	3	
	3	6	0	4	3	1	
7	1	2	5	0	10	6	
	2	3	5	0	9	4	
	3	10	3	0	9	2	
8	1	7	0	9	7	3	
	2	8	0	3	5	3	
	3	10	0	3	4	3	
9	1	3	0	7	5	9	
	2	6	0	5	4	9	
	3	8	7	0	4	9	
10	1	2	8	0	8	9	
	2	4	0	4	6	7	
	3	8	2	0	4	6	
11	1	6	7	0	9	6	
	2	7	6	0	7	6	
	3	8	0	3	7	6	
12	1	1	7	0	7	7	
	2	5	6	0	5	6	
	3	7	0	2	4	4	
13	1	3	4	0	9	7	
	2	3	0	5	7	6	
	3	5	0	3	7	4	
14	1	5	0	4	3	5	
	2	7	8	0	3	5	
	3	9	0	2	3	2	
15	1	6	0	6	7	7	
	2	7	0	6	7	6	
	3	8	0	5	7	5	
16	1	1	8	0	2	8	
	2	9	6	0	1	8	
	3	10	0	2	1	8	
17	1	4	0	8	2	9	
	2	6	2	0	2	7	
	3	10	2	0	2	4	
18	1	3	8	0	8	5	
	2	5	7	0	7	5	
	3	6	7	0	3	1	
19	1	1	0	5	7	7	
	2	7	0	4	6	5	
	3	10	0	4	6	4	
20	1	4	7	0	5	7	
	2	5	0	8	4	7	
	3	9	0	8	3	7	
21	1	2	7	0	7	5	
	2	5	7	0	3	5	
	3	10	5	0	3	4	
22	1	3	0	5	9	9	
	2	5	6	0	7	9	
	3	8	4	0	7	9	
23	1	1	0	9	10	9	
	2	6	0	6	9	9	
	3	8	6	0	9	9	
24	1	8	7	0	6	7	
	2	8	0	8	5	7	
	3	10	0	6	5	7	
25	1	3	0	7	9	4	
	2	7	3	0	9	3	
	3	10	3	0	9	2	
26	1	1	9	0	9	3	
	2	5	0	5	5	3	
	3	6	0	3	3	3	
27	1	1	0	3	8	9	
	2	4	8	0	7	8	
	3	9	0	2	6	6	
28	1	2	7	0	8	7	
	2	4	5	0	5	6	
	3	10	0	6	4	4	
29	1	2	0	6	9	7	
	2	5	0	6	9	5	
	3	5	5	0	7	4	
30	1	3	5	0	9	7	
	2	5	5	0	5	7	
	3	6	1	0	5	5	
31	1	1	5	0	8	5	
	2	4	0	8	8	4	
	3	8	0	8	6	3	
32	1	3	0	3	7	10	
	2	4	0	3	7	9	
	3	4	3	0	6	7	
33	1	3	0	8	7	8	
	2	7	7	0	6	4	
	3	9	5	0	3	3	
34	1	3	3	0	9	7	
	2	4	0	4	9	4	
	3	8	3	0	7	2	
35	1	5	0	5	8	9	
	2	6	0	4	6	8	
	3	7	8	0	4	8	
36	1	7	0	10	4	6	
	2	8	0	9	4	7	
	3	9	0	9	4	6	
37	1	3	0	6	9	3	
	2	4	8	0	9	2	
	3	8	7	0	8	1	
38	1	2	10	0	8	7	
	2	3	0	7	8	4	
	3	8	0	5	7	2	
39	1	5	0	7	7	5	
	2	9	2	0	7	5	
	3	10	0	3	7	4	
40	1	1	2	0	7	5	
	2	6	0	4	6	4	
	3	8	0	3	6	4	
41	1	2	0	7	4	8	
	2	5	0	7	4	7	
	3	7	0	7	3	7	
42	1	5	8	0	4	1	
	2	7	0	4	3	1	
	3	8	0	2	2	1	
43	1	4	0	6	5	9	
	2	6	9	0	4	7	
	3	9	0	2	1	5	
44	1	1	10	0	5	5	
	2	5	9	0	4	3	
	3	8	9	0	2	1	
45	1	2	9	0	8	6	
	2	7	0	8	8	5	
	3	8	5	0	6	1	
46	1	2	0	7	9	7	
	2	3	4	0	5	6	
	3	8	2	0	4	3	
47	1	1	8	0	8	6	
	2	3	0	7	6	6	
	3	5	0	6	2	6	
48	1	3	0	9	3	6	
	2	4	0	8	2	5	
	3	5	5	0	2	3	
49	1	4	0	8	7	8	
	2	6	0	8	3	3	
	3	8	0	8	1	2	
50	1	1	0	2	7	10	
	2	4	0	2	4	7	
	3	6	0	2	4	6	
51	1	5	8	0	5	10	
	2	6	6	0	3	7	
	3	10	0	8	2	7	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	37	36	316	299

************************************************************************
