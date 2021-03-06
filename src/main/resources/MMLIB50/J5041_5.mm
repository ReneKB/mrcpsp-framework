jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	6		2 3 4 5 6 8 
2	3	7		26 18 15 14 13 10 9 
3	3	6		26 21 15 14 13 7 
4	3	8		32 29 28 20 16 15 13 11 
5	3	6		29 20 19 15 13 10 
6	3	7		32 29 25 22 20 15 12 
7	3	7		29 28 27 23 22 20 19 
8	3	5		27 26 25 20 15 
9	3	7		51 33 29 27 24 22 21 
10	3	6		33 32 28 25 24 17 
11	3	5		27 24 23 21 18 
12	3	5		51 27 24 23 21 
13	3	5		39 27 25 22 17 
14	3	4		34 33 30 20 
15	3	5		49 38 35 34 23 
16	3	6		51 49 37 35 34 24 
17	3	10		51 50 49 40 38 37 36 35 34 30 
18	3	10		51 49 39 38 37 36 35 34 31 30 
19	3	10		50 49 45 40 39 38 36 32 31 30 
20	3	5		51 49 45 35 24 
21	3	9		50 49 48 42 37 36 35 34 31 
22	3	7		49 40 38 37 36 34 30 
23	3	6		50 40 36 33 31 30 
24	3	8		50 48 46 43 39 38 36 31 
25	3	8		51 48 47 44 42 41 37 34 
26	3	6		46 45 44 43 39 36 
27	3	6		48 46 45 44 43 36 
28	3	5		47 45 44 42 36 
29	3	5		48 47 45 43 41 
30	3	4		48 46 44 43 
31	3	3		47 44 41 
32	3	3		44 42 41 
33	3	2		42 37 
34	3	2		46 43 
35	3	2		46 43 
36	3	1		41 
37	3	1		45 
38	3	1		47 
39	3	1		42 
40	3	1		42 
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
2	1	2	0	2	0	9	
	2	7	5	0	0	5	
	3	9	0	1	2	0	
3	1	3	7	0	0	7	
	2	3	0	8	7	0	
	3	9	0	7	7	0	
4	1	3	8	0	6	0	
	2	7	0	5	0	9	
	3	10	6	0	2	0	
5	1	9	0	3	7	0	
	2	9	5	0	5	0	
	3	10	4	0	5	0	
6	1	2	0	9	0	2	
	2	5	0	8	4	0	
	3	7	4	0	0	1	
7	1	1	6	0	7	0	
	2	7	5	0	7	0	
	3	9	4	0	0	1	
8	1	4	4	0	0	3	
	2	7	0	9	0	3	
	3	7	3	0	4	0	
9	1	1	9	0	6	0	
	2	3	0	1	6	0	
	3	9	0	1	0	1	
10	1	7	0	9	8	0	
	2	7	0	7	0	6	
	3	8	3	0	0	5	
11	1	8	10	0	7	0	
	2	10	0	4	0	5	
	3	10	0	4	3	0	
12	1	2	0	9	5	0	
	2	5	0	9	0	9	
	3	7	0	8	3	0	
13	1	9	6	0	0	9	
	2	9	0	7	0	7	
	3	10	0	6	0	7	
14	1	2	0	4	6	0	
	2	8	0	3	0	1	
	3	9	0	2	4	0	
15	1	6	0	8	0	4	
	2	9	6	0	0	4	
	3	10	0	2	6	0	
16	1	6	5	0	0	6	
	2	10	0	5	6	0	
	3	10	4	0	0	6	
17	1	6	0	5	0	7	
	2	8	0	5	2	0	
	3	9	3	0	0	5	
18	1	1	8	0	2	0	
	2	3	8	0	1	0	
	3	5	0	5	2	0	
19	1	3	1	0	0	5	
	2	5	0	4	0	5	
	3	6	0	1	1	0	
20	1	8	8	0	9	0	
	2	9	5	0	4	0	
	3	10	1	0	3	0	
21	1	1	0	2	8	0	
	2	8	0	1	0	4	
	3	10	0	1	0	3	
22	1	2	7	0	0	7	
	2	5	0	7	3	0	
	3	9	4	0	0	7	
23	1	3	0	10	8	0	
	2	4	0	8	8	0	
	3	10	5	0	8	0	
24	1	1	0	10	10	0	
	2	3	0	8	9	0	
	3	7	0	7	0	3	
25	1	3	0	8	9	0	
	2	6	0	4	9	0	
	3	10	0	4	8	0	
26	1	2	1	0	0	8	
	2	3	0	7	0	7	
	3	3	1	0	1	0	
27	1	1	0	9	0	2	
	2	3	0	8	5	0	
	3	10	3	0	4	0	
28	1	2	0	7	5	0	
	2	3	0	7	4	0	
	3	8	0	4	0	6	
29	1	1	0	4	10	0	
	2	5	4	0	9	0	
	3	9	0	3	0	6	
30	1	1	5	0	0	5	
	2	3	0	4	5	0	
	3	7	1	0	4	0	
31	1	6	0	7	10	0	
	2	7	2	0	8	0	
	3	10	0	6	0	3	
32	1	4	0	3	0	4	
	2	4	0	2	4	0	
	3	5	9	0	2	0	
33	1	2	0	3	0	9	
	2	6	0	3	5	0	
	3	8	0	3	0	8	
34	1	4	0	5	0	7	
	2	5	0	5	0	6	
	3	7	0	4	2	0	
35	1	1	8	0	0	10	
	2	3	7	0	0	9	
	3	3	6	0	5	0	
36	1	3	0	8	0	8	
	2	4	0	6	6	0	
	3	7	0	6	4	0	
37	1	2	4	0	0	1	
	2	8	0	3	3	0	
	3	9	3	0	0	1	
38	1	1	0	9	7	0	
	2	3	3	0	6	0	
	3	4	0	7	0	5	
39	1	1	9	0	0	8	
	2	4	8	0	0	7	
	3	4	0	6	0	5	
40	1	1	0	8	8	0	
	2	3	3	0	8	0	
	3	6	3	0	0	5	
41	1	3	0	9	0	10	
	2	5	0	8	0	9	
	3	9	5	0	6	0	
42	1	6	9	0	0	7	
	2	7	0	6	0	5	
	3	9	0	3	4	0	
43	1	5	0	8	3	0	
	2	7	10	0	0	6	
	3	10	10	0	2	0	
44	1	1	8	0	8	0	
	2	3	0	7	6	0	
	3	4	8	0	0	7	
45	1	2	8	0	0	2	
	2	9	0	2	8	0	
	3	10	5	0	7	0	
46	1	3	0	4	9	0	
	2	3	0	3	0	4	
	3	6	0	2	0	4	
47	1	6	10	0	0	5	
	2	10	0	6	0	4	
	3	10	7	0	2	0	
48	1	2	0	2	8	0	
	2	5	4	0	0	8	
	3	6	0	1	0	6	
49	1	4	0	9	9	0	
	2	5	0	7	8	0	
	3	10	5	0	6	0	
50	1	2	0	5	7	0	
	2	5	0	2	6	0	
	3	9	7	0	6	0	
51	1	2	8	0	10	0	
	2	5	4	0	0	8	
	3	9	3	0	10	0	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	21	23	221	184

************************************************************************
