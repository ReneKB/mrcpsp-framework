jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	8		2 3 4 5 6 7 9 16 
2	3	8		28 23 19 17 15 14 13 8 
3	3	6		23 21 18 12 11 10 
4	3	7		29 26 23 18 15 13 11 
5	3	6		26 23 22 21 18 10 
6	3	4		32 28 17 10 
7	3	5		26 24 22 14 13 
8	3	8		34 32 27 25 24 22 20 18 
9	3	6		39 27 26 21 20 15 
10	3	5		31 29 24 20 13 
11	3	8		39 34 32 31 27 25 24 20 
12	3	6		51 50 38 28 26 25 
13	3	5		51 39 30 27 25 
14	3	5		51 37 34 31 20 
15	3	8		51 50 44 38 37 34 30 24 
16	3	8		51 39 38 37 33 31 30 29 
17	3	6		51 50 49 38 26 24 
18	3	7		51 50 48 39 33 31 30 
19	3	3		48 38 21 
20	3	7		50 48 44 38 36 33 30 
21	3	4		50 45 44 25 
22	3	9		51 50 49 45 44 41 36 35 33 
23	3	9		47 46 45 44 43 37 36 35 34 
24	3	6		48 45 41 36 35 33 
25	3	5		49 37 36 35 33 
26	3	5		48 44 43 37 31 
27	3	9		50 49 48 47 46 41 40 38 35 
28	3	6		49 47 45 44 43 34 
29	3	6		48 46 44 41 40 35 
30	3	6		49 45 43 42 41 40 
31	3	3		45 36 35 
32	3	3		44 37 36 
33	3	4		47 46 43 40 
34	3	3		48 41 40 
35	3	1		42 
36	3	1		40 
37	3	1		41 
38	3	1		42 
39	3	1		44 
40	3	1		52 
41	3	1		52 
42	3	1		52 
43	3	1		52 
44	3	1		52 
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
2	1	4	5	4	6	6	
	2	5	4	4	4	5	
	3	6	2	1	2	3	
3	1	4	8	5	8	8	
	2	6	5	5	6	7	
	3	10	5	3	5	7	
4	1	1	4	10	6	9	
	2	8	4	10	4	9	
	3	10	3	10	4	9	
5	1	5	8	5	8	2	
	2	6	6	4	8	1	
	3	7	5	4	5	1	
6	1	1	6	7	10	4	
	2	7	6	6	10	3	
	3	10	6	6	10	2	
7	1	7	6	9	4	6	
	2	9	5	4	2	4	
	3	10	4	2	1	4	
8	1	1	4	4	7	8	
	2	2	2	3	7	7	
	3	6	1	3	7	6	
9	1	1	8	8	7	5	
	2	2	7	7	5	4	
	3	9	6	5	4	4	
10	1	1	1	4	6	9	
	2	2	1	4	6	8	
	3	7	1	3	6	5	
11	1	5	6	9	4	9	
	2	7	3	8	3	9	
	3	8	2	8	1	9	
12	1	3	7	3	10	6	
	2	5	6	3	7	4	
	3	9	5	1	5	4	
13	1	3	8	7	7	3	
	2	8	8	7	5	2	
	3	9	8	2	4	2	
14	1	5	5	8	10	2	
	2	6	4	7	8	1	
	3	8	4	6	5	1	
15	1	2	3	8	8	1	
	2	5	2	5	7	1	
	3	10	2	3	5	1	
16	1	1	3	10	7	4	
	2	2	3	4	7	4	
	3	5	3	3	5	4	
17	1	1	6	9	4	5	
	2	3	6	7	3	4	
	3	8	6	7	3	3	
18	1	1	3	6	3	10	
	2	2	3	5	2	7	
	3	3	3	3	2	7	
19	1	3	7	8	9	7	
	2	8	5	5	6	5	
	3	10	3	3	6	4	
20	1	2	10	7	4	5	
	2	5	9	5	2	2	
	3	6	9	3	1	2	
21	1	4	7	4	5	6	
	2	5	7	3	4	6	
	3	7	6	1	3	6	
22	1	3	7	9	9	4	
	2	8	6	5	4	4	
	3	9	2	2	4	4	
23	1	4	10	9	2	4	
	2	5	7	4	1	3	
	3	6	1	3	1	2	
24	1	5	8	4	9	5	
	2	6	3	3	7	5	
	3	7	3	2	5	5	
25	1	1	2	6	3	9	
	2	7	2	5	2	9	
	3	9	2	5	1	9	
26	1	2	8	4	3	7	
	2	9	5	2	3	6	
	3	10	4	1	2	6	
27	1	4	8	9	5	2	
	2	8	8	7	5	2	
	3	10	6	4	5	2	
28	1	5	7	6	4	6	
	2	6	4	4	4	5	
	3	9	4	4	4	4	
29	1	6	6	9	5	5	
	2	8	6	8	2	3	
	3	10	5	7	1	2	
30	1	1	9	6	10	3	
	2	3	5	5	10	2	
	3	4	4	5	10	2	
31	1	6	8	4	7	6	
	2	7	7	3	6	3	
	3	8	5	1	4	3	
32	1	3	7	8	5	6	
	2	5	6	7	2	6	
	3	10	6	7	1	6	
33	1	2	7	9	6	5	
	2	7	6	5	4	4	
	3	8	6	3	4	4	
34	1	1	4	9	9	8	
	2	3	3	6	5	8	
	3	5	2	5	3	6	
35	1	3	7	6	5	5	
	2	6	3	4	5	5	
	3	10	3	4	2	1	
36	1	2	10	7	9	9	
	2	4	9	4	7	8	
	3	10	9	2	6	8	
37	1	5	5	9	5	4	
	2	6	4	8	4	3	
	3	8	1	8	3	2	
38	1	3	7	10	7	6	
	2	5	4	7	7	5	
	3	8	3	4	6	5	
39	1	5	8	6	7	8	
	2	7	4	6	5	4	
	3	8	3	4	4	3	
40	1	1	6	8	5	9	
	2	2	6	6	4	8	
	3	3	6	5	2	7	
41	1	2	4	7	1	8	
	2	7	3	6	1	6	
	3	10	2	5	1	5	
42	1	5	4	8	10	7	
	2	7	3	7	9	6	
	3	8	2	5	9	4	
43	1	2	7	8	5	9	
	2	6	6	7	4	7	
	3	8	5	5	4	2	
44	1	1	9	10	9	6	
	2	2	6	10	8	5	
	3	5	1	10	7	4	
45	1	4	4	9	5	5	
	2	5	3	5	3	4	
	3	10	1	5	3	3	
46	1	3	10	4	9	8	
	2	5	7	2	9	5	
	3	7	2	1	8	5	
47	1	4	4	6	6	4	
	2	5	3	6	6	4	
	3	9	1	4	4	4	
48	1	6	7	10	5	7	
	2	7	7	9	2	5	
	3	9	5	9	1	2	
49	1	2	9	8	10	7	
	2	3	7	7	9	6	
	3	7	4	4	8	6	
50	1	2	7	7	10	7	
	2	3	6	7	7	5	
	3	5	3	7	3	1	
51	1	2	8	9	4	7	
	2	9	8	8	4	5	
	3	10	8	7	3	4	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	52	54	262	254

************************************************************************
