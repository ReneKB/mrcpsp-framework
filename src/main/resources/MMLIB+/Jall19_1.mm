jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	4		2 3 4 5 
2	3	3		13 9 7 
3	3	3		12 10 8 
4	3	2		9 6 
5	3	3		13 11 7 
6	3	3		14 13 11 
7	3	5		23 18 16 15 14 
8	3	4		23 18 16 13 
9	3	2		15 11 
10	3	2		17 11 
11	3	4		23 22 18 16 
12	3	5		28 27 23 18 17 
13	3	3		20 19 15 
14	3	3		27 22 17 
15	3	5		29 27 25 22 21 
16	3	5		29 28 27 25 21 
17	3	3		25 20 19 
18	3	2		20 19 
19	3	7		35 33 32 31 30 29 26 
20	3	4		35 32 29 24 
21	3	5		35 32 31 30 26 
22	3	3		35 32 24 
23	3	5		43 35 30 29 25 
24	3	4		43 34 33 26 
25	3	3		36 34 33 
26	3	4		40 38 37 36 
27	3	4		45 41 37 33 
28	3	3		39 35 34 
29	3	4		41 39 38 34 
30	3	5		45 42 40 39 38 
31	3	5		43 42 40 39 38 
32	3	2		39 34 
33	3	4		42 40 39 38 
34	3	5		51 49 45 42 40 
35	3	3		45 41 38 
36	3	3		45 42 41 
37	3	3		51 50 39 
38	3	6		51 50 49 48 47 44 
39	3	4		49 48 47 44 
40	3	4		50 48 47 44 
41	3	3		49 48 44 
42	3	3		50 47 46 
43	3	3		49 48 46 
44	3	1		46 
45	3	1		47 
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
2	1	1	6	4	5	9	
	2	4	2	3	5	8	
	3	5	1	3	4	8	
3	1	1	4	6	2	6	
	2	2	4	4	1	5	
	3	3	4	2	1	3	
4	1	3	10	10	10	4	
	2	5	7	7	8	4	
	3	8	4	4	7	4	
5	1	3	9	7	4	6	
	2	4	8	4	3	6	
	3	7	8	4	3	5	
6	1	5	7	9	8	7	
	2	7	7	5	7	7	
	3	9	7	4	6	7	
7	1	3	2	6	7	3	
	2	6	1	5	7	3	
	3	7	1	4	5	3	
8	1	5	5	8	10	9	
	2	8	4	6	10	6	
	3	9	2	4	10	6	
9	1	1	3	7	6	3	
	2	9	2	7	5	3	
	3	10	2	6	5	2	
10	1	5	5	5	10	7	
	2	7	5	5	8	6	
	3	8	5	3	8	6	
11	1	3	8	7	7	10	
	2	6	4	6	7	7	
	3	7	2	2	5	3	
12	1	1	6	2	7	9	
	2	4	4	2	6	9	
	3	10	2	2	5	7	
13	1	8	8	8	4	6	
	2	9	8	6	4	4	
	3	10	8	6	3	3	
14	1	2	9	9	10	3	
	2	5	9	4	9	2	
	3	8	9	2	8	2	
15	1	2	5	9	6	9	
	2	4	3	9	3	8	
	3	6	1	7	1	8	
16	1	5	9	4	10	10	
	2	9	6	2	10	9	
	3	10	4	2	10	8	
17	1	3	4	3	8	7	
	2	5	2	2	7	5	
	3	8	2	1	7	2	
18	1	3	10	4	3	7	
	2	5	7	3	2	3	
	3	9	5	2	2	1	
19	1	2	3	5	6	5	
	2	5	3	5	5	3	
	3	6	2	5	4	3	
20	1	1	6	4	8	9	
	2	6	4	3	8	7	
	3	10	4	3	6	6	
21	1	3	8	9	4	7	
	2	6	7	9	4	7	
	3	7	6	8	4	7	
22	1	1	7	9	8	2	
	2	5	5	6	7	2	
	3	9	5	5	3	2	
23	1	2	9	9	9	5	
	2	3	7	9	7	5	
	3	9	6	8	6	4	
24	1	2	6	4	7	7	
	2	5	6	4	3	7	
	3	8	3	4	3	7	
25	1	3	5	4	9	7	
	2	7	5	3	8	7	
	3	9	3	3	8	6	
26	1	1	8	2	5	8	
	2	7	8	2	3	5	
	3	9	8	2	1	2	
27	1	8	9	7	10	4	
	2	9	9	6	10	4	
	3	10	9	6	10	2	
28	1	2	3	8	5	9	
	2	5	3	5	5	6	
	3	10	3	4	5	1	
29	1	6	4	7	8	1	
	2	8	3	3	8	1	
	3	10	1	3	4	1	
30	1	1	5	5	7	6	
	2	6	3	4	7	5	
	3	8	2	3	7	5	
31	1	1	7	6	9	9	
	2	2	6	5	8	5	
	3	6	5	4	6	1	
32	1	2	10	5	10	8	
	2	4	10	5	7	8	
	3	6	10	3	6	7	
33	1	4	7	4	8	7	
	2	9	5	2	5	5	
	3	10	5	2	2	1	
34	1	5	5	8	5	5	
	2	7	4	6	4	2	
	3	8	4	2	2	1	
35	1	6	7	3	7	7	
	2	7	6	3	5	6	
	3	8	6	3	4	5	
36	1	1	5	9	4	8	
	2	7	4	6	3	7	
	3	8	4	5	3	7	
37	1	2	6	4	5	6	
	2	4	6	2	5	3	
	3	5	5	2	1	2	
38	1	2	4	7	4	8	
	2	6	4	5	2	5	
	3	7	4	5	1	3	
39	1	2	9	7	7	9	
	2	3	8	6	5	9	
	3	4	8	6	3	8	
40	1	7	7	7	7	5	
	2	9	5	5	6	5	
	3	10	3	3	2	5	
41	1	7	8	6	5	8	
	2	8	8	3	4	6	
	3	9	8	3	1	6	
42	1	2	6	10	3	3	
	2	5	5	5	2	2	
	3	6	2	3	2	2	
43	1	5	2	7	8	6	
	2	7	2	6	7	6	
	3	8	2	4	7	4	
44	1	4	9	9	9	6	
	2	5	4	4	9	4	
	3	6	3	2	8	2	
45	1	1	4	8	7	7	
	2	4	3	8	7	7	
	3	5	2	8	2	5	
46	1	4	4	9	8	4	
	2	5	4	8	7	3	
	3	7	1	6	7	3	
47	1	6	8	9	6	7	
	2	7	6	8	4	3	
	3	9	4	7	2	3	
48	1	2	8	5	9	7	
	2	3	8	5	7	7	
	3	9	6	5	4	7	
49	1	3	2	8	8	7	
	2	4	2	8	6	5	
	3	8	2	6	4	3	
50	1	3	7	9	8	8	
	2	5	4	9	7	8	
	3	6	4	9	7	7	
51	1	1	2	6	9	4	
	2	2	2	5	9	4	
	3	4	2	3	9	4	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	20	17	262	240

************************************************************************
