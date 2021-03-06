jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 4 5 11 14 
2	3	3		17 8 6 
3	3	4		12 10 9 8 
4	3	4		17 12 10 7 
5	3	3		17 12 7 
6	3	2		10 7 
7	3	4		22 16 15 13 
8	3	3		22 15 13 
9	3	3		22 16 13 
10	3	2		16 13 
11	3	2		15 13 
12	3	5		23 22 21 20 18 
13	3	5		28 23 21 20 19 
14	3	2		25 15 
15	3	3		23 20 18 
16	3	2		25 18 
17	3	4		28 27 21 20 
18	3	5		30 28 27 26 24 
19	3	6		36 32 30 29 27 25 
20	3	3		31 26 24 
21	3	4		37 31 29 26 
22	3	3		36 31 25 
23	3	6		42 37 36 35 34 32 
24	3	4		42 37 32 29 
25	3	5		42 37 35 34 33 
26	3	4		42 36 34 32 
27	3	5		42 39 37 34 31 
28	3	4		42 39 34 31 
29	3	3		41 35 33 
30	3	5		42 41 40 38 37 
31	3	4		44 41 40 38 
32	3	1		33 
33	3	3		44 40 38 
34	3	4		50 47 44 41 
35	3	3		44 43 39 
36	3	3		51 48 39 
37	3	5		51 49 47 46 44 
38	3	4		51 49 48 43 
39	3	5		50 49 47 46 45 
40	3	3		50 47 43 
41	3	2		49 43 
42	3	3		48 47 45 
43	3	2		46 45 
44	3	2		48 45 
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
2	1	7	7	10	5	0	
	2	7	7	10	0	8	
	3	8	6	10	0	8	
3	1	1	10	6	9	0	
	2	1	9	3	0	6	
	3	5	7	3	0	2	
4	1	1	9	6	6	0	
	2	3	8	5	4	0	
	3	8	7	4	4	0	
5	1	4	4	3	0	5	
	2	4	4	3	6	0	
	3	6	4	3	0	4	
6	1	2	3	4	9	0	
	2	6	2	2	0	5	
	3	7	1	2	0	1	
7	1	8	2	5	8	0	
	2	9	2	4	7	0	
	3	10	1	3	0	2	
8	1	3	8	9	0	2	
	2	5	5	7	0	2	
	3	9	1	4	0	2	
9	1	3	6	4	0	8	
	2	4	6	4	5	0	
	3	10	5	3	0	5	
10	1	1	8	4	7	0	
	2	7	6	3	6	0	
	3	9	5	3	6	0	
11	1	8	6	7	0	6	
	2	9	4	7	0	4	
	3	10	1	3	0	4	
12	1	7	6	1	0	7	
	2	8	6	1	0	6	
	3	9	6	1	0	5	
13	1	6	3	2	7	0	
	2	9	2	1	5	0	
	3	9	1	1	0	1	
14	1	3	4	7	0	9	
	2	4	3	5	0	7	
	3	7	2	4	0	4	
15	1	3	6	8	0	4	
	2	3	5	5	4	0	
	3	7	3	3	0	3	
16	1	4	5	8	5	0	
	2	6	4	4	0	3	
	3	8	1	3	2	0	
17	1	1	8	1	3	0	
	2	5	6	1	2	0	
	3	6	1	1	2	0	
18	1	4	9	8	7	0	
	2	10	9	8	0	2	
	3	10	7	8	3	0	
19	1	5	2	9	5	0	
	2	7	2	9	4	0	
	3	10	2	9	3	0	
20	1	1	7	6	4	0	
	2	4	6	6	3	0	
	3	10	4	6	2	0	
21	1	1	6	6	0	10	
	2	4	5	5	0	9	
	3	10	4	5	1	0	
22	1	1	5	6	3	0	
	2	2	4	6	2	0	
	3	4	4	6	1	0	
23	1	3	5	6	9	0	
	2	4	5	3	0	4	
	3	7	5	1	0	4	
24	1	2	7	4	3	0	
	2	3	7	3	3	0	
	3	5	7	3	2	0	
25	1	5	3	7	6	0	
	2	6	1	4	6	0	
	3	7	1	4	5	0	
26	1	1	5	7	0	4	
	2	8	4	5	0	4	
	3	9	2	4	0	4	
27	1	2	7	6	0	10	
	2	6	5	6	0	10	
	3	10	5	4	0	10	
28	1	4	7	8	9	0	
	2	5	7	7	0	5	
	3	10	5	7	0	1	
29	1	1	1	7	6	0	
	2	2	1	7	5	0	
	3	4	1	5	0	4	
30	1	3	5	9	0	7	
	2	4	4	9	8	0	
	3	8	2	9	0	1	
31	1	2	9	9	0	8	
	2	3	5	8	2	0	
	3	10	4	8	0	6	
32	1	6	8	5	3	0	
	2	6	8	5	0	4	
	3	8	8	5	0	2	
33	1	1	5	7	6	0	
	2	6	3	5	4	0	
	3	9	3	3	2	0	
34	1	3	8	6	0	5	
	2	5	7	5	2	0	
	3	10	6	5	2	0	
35	1	4	7	6	0	9	
	2	6	6	4	0	7	
	3	7	6	1	0	7	
36	1	3	8	6	0	3	
	2	5	7	4	0	2	
	3	7	6	2	0	1	
37	1	3	6	6	6	0	
	2	5	4	4	0	3	
	3	9	4	3	0	3	
38	1	2	8	6	0	1	
	2	3	8	5	0	1	
	3	5	5	4	7	0	
39	1	3	3	5	0	6	
	2	6	2	4	0	6	
	3	6	2	3	1	0	
40	1	2	4	7	7	0	
	2	3	2	7	5	0	
	3	9	1	7	4	0	
41	1	2	9	4	0	9	
	2	4	8	3	0	8	
	3	8	5	3	0	7	
42	1	2	7	4	0	3	
	2	3	5	3	0	3	
	3	6	4	2	0	2	
43	1	4	8	8	2	0	
	2	9	7	6	0	8	
	3	9	7	6	2	0	
44	1	3	5	7	0	5	
	2	4	5	3	0	4	
	3	10	4	3	0	4	
45	1	1	10	6	8	0	
	2	2	4	6	7	0	
	3	6	4	5	7	0	
46	1	7	10	2	2	0	
	2	9	6	2	2	0	
	3	10	6	2	1	0	
47	1	2	3	10	8	0	
	2	4	3	8	0	3	
	3	10	2	8	0	3	
48	1	5	4	3	8	0	
	2	7	3	2	0	3	
	3	10	2	1	0	3	
49	1	5	7	8	3	0	
	2	9	5	6	0	3	
	3	10	4	6	2	0	
50	1	2	9	10	8	0	
	2	5	8	9	4	0	
	3	8	8	9	2	0	
51	1	1	4	7	0	10	
	2	6	3	5	5	0	
	3	7	3	5	3	0	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	25	29	84	85

************************************************************************
