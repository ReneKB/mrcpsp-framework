jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	4		2 3 4 5 
2	3	5		13 11 9 8 6 
3	3	3		9 8 6 
4	3	2		13 7 
5	3	1		6 
6	3	5		18 17 16 15 12 
7	3	5		18 17 16 15 12 
8	3	4		17 16 15 12 
9	3	3		16 14 10 
10	3	5		26 22 21 17 15 
11	3	5		26 21 19 16 15 
12	3	3		22 21 14 
13	3	3		22 21 14 
14	3	7		31 28 27 26 24 20 19 
15	3	8		32 31 28 27 25 24 23 20 
16	3	5		32 27 25 24 23 
17	3	5		31 29 28 27 20 
18	3	5		32 30 28 27 24 
19	3	4		32 29 25 23 
20	3	5		39 36 35 33 30 
21	3	5		39 36 35 33 32 
22	3	3		36 33 29 
23	3	6		44 39 37 36 35 34 
24	3	3		37 34 29 
25	3	3		39 33 30 
26	3	3		37 34 29 
27	3	4		42 39 34 33 
28	3	5		44 42 40 37 36 
29	3	3		44 39 35 
30	3	3		42 37 34 
31	3	3		42 39 34 
32	3	6		51 44 42 41 40 38 
33	3	4		51 44 40 37 
34	3	4		51 41 40 38 
35	3	5		50 48 42 41 40 
36	3	3		51 41 38 
37	3	2		41 38 
38	3	5		50 49 48 47 43 
39	3	4		51 48 47 43 
40	3	3		49 47 43 
41	3	1		43 
42	3	1		43 
43	3	1		45 
44	3	1		45 
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
2	1	1	2	6	0	9	
	2	2	1	5	3	0	
	3	6	1	3	0	4	
3	1	5	6	5	0	9	
	2	7	5	3	0	6	
	3	8	5	3	0	4	
4	1	7	7	10	6	0	
	2	9	6	4	0	2	
	3	10	3	2	0	1	
5	1	6	8	4	0	2	
	2	8	8	3	0	1	
	3	10	7	3	0	1	
6	1	2	8	6	5	0	
	2	5	7	3	5	0	
	3	9	7	2	5	0	
7	1	2	7	1	0	2	
	2	3	4	1	0	2	
	3	3	3	1	5	0	
8	1	1	10	6	7	0	
	2	4	9	5	5	0	
	3	7	9	5	0	2	
9	1	1	9	10	0	5	
	2	2	7	10	0	2	
	3	3	7	10	0	1	
10	1	2	10	9	0	9	
	2	7	9	7	0	5	
	3	9	9	6	2	0	
11	1	1	9	4	9	0	
	2	3	9	4	6	0	
	3	10	8	4	0	10	
12	1	1	3	8	10	0	
	2	8	2	5	0	5	
	3	10	2	3	1	0	
13	1	2	5	9	0	5	
	2	3	4	4	3	0	
	3	6	3	4	1	0	
14	1	2	10	10	9	0	
	2	3	9	7	0	4	
	3	6	8	4	9	0	
15	1	1	8	4	8	0	
	2	6	7	4	8	0	
	3	7	4	4	5	0	
16	1	2	10	8	0	7	
	2	5	10	7	6	0	
	3	7	10	6	0	3	
17	1	5	3	4	0	8	
	2	6	3	4	0	5	
	3	9	3	3	3	0	
18	1	1	7	8	0	10	
	2	2	7	8	0	9	
	3	7	7	6	0	9	
19	1	1	8	7	5	0	
	2	3	6	5	4	0	
	3	6	3	4	3	0	
20	1	2	8	4	0	9	
	2	3	6	3	3	0	
	3	10	5	2	0	4	
21	1	3	5	4	6	0	
	2	4	3	4	5	0	
	3	10	2	4	3	0	
22	1	1	7	6	0	9	
	2	7	7	3	3	0	
	3	9	4	1	3	0	
23	1	1	8	8	5	0	
	2	5	4	7	4	0	
	3	6	4	5	3	0	
24	1	2	7	7	10	0	
	2	3	4	6	8	0	
	3	4	3	6	0	3	
25	1	1	5	8	0	4	
	2	1	5	6	9	0	
	3	7	3	4	7	0	
26	1	6	5	10	0	9	
	2	7	4	9	0	8	
	3	9	2	8	0	7	
27	1	1	8	7	0	5	
	2	2	8	7	0	4	
	3	7	7	7	5	0	
28	1	1	9	10	0	9	
	2	8	6	6	3	0	
	3	10	5	5	1	0	
29	1	1	7	9	1	0	
	2	2	5	8	1	0	
	3	5	3	8	0	9	
30	1	4	4	5	0	6	
	2	5	4	3	0	6	
	3	8	4	2	0	5	
31	1	5	4	2	0	6	
	2	10	4	2	0	5	
	3	10	4	2	2	0	
32	1	3	9	10	4	0	
	2	7	5	4	0	8	
	3	8	1	3	0	6	
33	1	3	3	7	8	0	
	2	6	2	7	7	0	
	3	7	2	3	6	0	
34	1	2	7	5	0	6	
	2	5	3	5	8	0	
	3	10	2	5	8	0	
35	1	3	3	2	6	0	
	2	5	3	1	0	4	
	3	9	2	1	0	3	
36	1	3	6	9	0	3	
	2	4	4	8	3	0	
	3	7	3	8	0	1	
37	1	2	7	5	10	0	
	2	4	3	3	0	8	
	3	5	3	2	3	0	
38	1	1	7	8	0	8	
	2	1	5	7	1	0	
	3	9	5	7	0	7	
39	1	4	10	10	0	3	
	2	8	8	6	0	2	
	3	10	7	2	4	0	
40	1	2	5	5	0	10	
	2	7	5	4	8	0	
	3	8	4	4	4	0	
41	1	2	3	3	7	0	
	2	3	3	2	3	0	
	3	9	3	1	1	0	
42	1	6	10	8	0	6	
	2	7	7	7	7	0	
	3	8	6	7	0	1	
43	1	1	7	7	0	8	
	2	4	4	4	3	0	
	3	10	4	2	2	0	
44	1	1	9	7	0	1	
	2	9	7	6	0	1	
	3	10	3	5	0	1	
45	1	4	8	4	6	0	
	2	7	6	3	6	0	
	3	9	2	1	0	6	
46	1	2	9	9	4	0	
	2	6	4	4	3	0	
	3	9	1	4	0	7	
47	1	2	9	10	0	6	
	2	5	5	9	0	6	
	3	6	2	9	2	0	
48	1	4	8	9	7	0	
	2	8	5	8	4	0	
	3	9	4	8	4	0	
49	1	2	9	10	2	0	
	2	5	4	9	2	0	
	3	6	3	8	0	1	
50	1	4	10	9	5	0	
	2	4	5	8	0	7	
	3	6	3	7	1	0	
51	1	5	6	4	5	0	
	2	5	6	2	0	6	
	3	6	6	2	1	0	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	31	30	78	83

************************************************************************
