jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	14		2 3 5 6 7 8 9 10 12 14 15 16 18 20 
2	3	2		13 4 
3	3	6		31 25 22 19 17 11 
4	3	5		31 25 22 17 11 
5	3	5		31 26 25 17 11 
6	3	5		31 23 22 17 11 
7	3	5		28 25 22 17 13 
8	3	5		31 25 22 19 11 
9	3	8		35 31 29 28 25 22 19 17 
10	3	4		28 25 17 13 
11	3	10		40 39 35 32 30 29 28 27 24 21 
12	3	9		41 35 32 31 29 27 25 24 22 
13	3	7		40 35 29 27 24 21 19 
14	3	5		32 29 28 22 17 
15	3	5		34 32 29 25 17 
16	3	4		40 28 24 19 
17	3	8		41 40 39 38 37 30 27 24 
18	3	7		50 41 40 38 37 33 28 
19	3	10		51 50 48 45 39 37 36 34 32 30 
20	3	7		51 48 38 35 31 30 27 
21	3	10		51 50 49 47 41 38 37 36 34 33 
22	3	5		40 39 38 37 30 
23	3	9		51 50 49 48 47 46 44 43 42 
24	3	7		51 49 48 45 44 36 33 
25	3	7		51 48 46 45 43 39 37 
26	3	7		50 49 48 47 46 45 36 
27	3	6		50 49 47 45 44 33 
28	3	5		51 47 46 36 34 
29	3	7		50 49 48 46 44 43 42 
30	3	6		49 47 46 44 43 42 
31	3	5		46 45 44 43 42 
32	3	4		47 46 43 42 
33	3	2		43 42 
34	3	2		44 43 
35	3	2		45 43 
36	3	1		42 
37	3	1		42 
38	3	1		45 
39	3	1		44 
40	3	1		48 
41	3	1		44 
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
2	1	8	7	0	4	0	
	2	10	5	0	0	7	
	3	10	4	0	1	0	
3	1	1	6	0	5	0	
	2	1	0	4	0	4	
	3	9	6	0	1	0	
4	1	1	0	6	10	0	
	2	6	7	0	0	6	
	3	10	0	4	0	6	
5	1	1	6	0	0	6	
	2	3	6	0	6	0	
	3	7	0	4	0	2	
6	1	1	2	0	8	0	
	2	4	0	6	0	6	
	3	7	2	0	4	0	
7	1	2	9	0	7	0	
	2	5	0	6	0	9	
	3	10	0	5	0	9	
8	1	6	10	0	9	0	
	2	8	6	0	6	0	
	3	10	0	3	5	0	
9	1	4	6	0	7	0	
	2	6	0	6	6	0	
	3	8	0	6	0	2	
10	1	1	4	0	5	0	
	2	4	0	4	0	5	
	3	9	3	0	0	5	
11	1	6	7	0	0	6	
	2	8	5	0	3	0	
	3	9	0	3	3	0	
12	1	5	2	0	10	0	
	2	8	1	0	0	5	
	3	8	0	9	4	0	
13	1	3	0	9	10	0	
	2	7	7	0	10	0	
	3	8	0	3	10	0	
14	1	1	0	7	0	7	
	2	8	8	0	7	0	
	3	9	8	0	0	3	
15	1	3	0	9	0	5	
	2	5	0	7	4	0	
	3	7	2	0	4	0	
16	1	3	0	6	0	6	
	2	5	8	0	5	0	
	3	6	8	0	4	0	
17	1	3	0	6	7	0	
	2	4	0	6	6	0	
	3	5	0	6	5	0	
18	1	3	9	0	0	8	
	2	5	4	0	7	0	
	3	6	0	2	0	2	
19	1	5	6	0	3	0	
	2	6	4	0	3	0	
	3	7	3	0	2	0	
20	1	3	7	0	1	0	
	2	6	0	4	1	0	
	3	9	4	0	1	0	
21	1	5	0	5	0	7	
	2	9	6	0	7	0	
	3	10	0	3	0	4	
22	1	6	3	0	8	0	
	2	8	0	2	7	0	
	3	9	2	0	7	0	
23	1	3	0	3	0	4	
	2	8	0	2	0	4	
	3	9	8	0	3	0	
24	1	4	0	8	0	2	
	2	5	0	5	0	2	
	3	8	0	5	0	1	
25	1	6	0	9	6	0	
	2	7	4	0	0	10	
	3	8	3	0	5	0	
26	1	1	0	7	5	0	
	2	6	2	0	0	4	
	3	9	0	4	0	3	
27	1	1	3	0	7	0	
	2	3	3	0	6	0	
	3	9	3	0	4	0	
28	1	5	0	3	0	5	
	2	8	0	1	0	3	
	3	10	2	0	1	0	
29	1	8	0	9	0	9	
	2	8	0	7	7	0	
	3	9	0	7	0	2	
30	1	2	0	10	7	0	
	2	3	0	9	0	4	
	3	4	0	8	0	3	
31	1	3	8	0	8	0	
	2	6	7	0	7	0	
	3	8	0	6	6	0	
32	1	4	0	6	0	9	
	2	6	0	6	5	0	
	3	7	0	6	4	0	
33	1	1	0	10	5	0	
	2	5	3	0	0	6	
	3	6	2	0	0	3	
34	1	1	9	0	0	7	
	2	2	0	5	5	0	
	3	9	0	2	0	5	
35	1	4	9	0	0	4	
	2	8	0	7	0	3	
	3	9	9	0	1	0	
36	1	1	0	7	0	9	
	2	2	0	6	0	7	
	3	6	0	6	8	0	
37	1	7	0	10	7	0	
	2	8	0	9	3	0	
	3	10	0	8	2	0	
38	1	5	0	4	4	0	
	2	7	0	3	0	9	
	3	9	4	0	2	0	
39	1	3	9	0	0	9	
	2	3	0	4	4	0	
	3	9	0	2	0	7	
40	1	1	9	0	5	0	
	2	1	0	7	5	0	
	3	7	0	4	0	1	
41	1	3	0	3	0	9	
	2	4	5	0	5	0	
	3	8	0	3	4	0	
42	1	1	4	0	5	0	
	2	1	0	7	0	3	
	3	2	0	5	0	3	
43	1	1	0	8	5	0	
	2	3	3	0	4	0	
	3	8	0	7	2	0	
44	1	5	5	0	6	0	
	2	8	0	1	5	0	
	3	9	0	1	4	0	
45	1	2	5	0	0	4	
	2	9	4	0	0	4	
	3	10	1	0	0	4	
46	1	9	0	4	0	10	
	2	9	6	0	6	0	
	3	10	0	1	0	4	
47	1	1	0	6	0	9	
	2	5	0	6	6	0	
	3	8	0	4	0	6	
48	1	1	8	0	0	7	
	2	6	7	0	0	5	
	3	6	0	3	0	5	
49	1	1	4	0	0	7	
	2	4	0	3	0	6	
	3	10	0	3	0	4	
50	1	2	0	7	0	2	
	2	5	5	0	6	0	
	3	9	0	5	2	0	
51	1	3	3	0	10	0	
	2	3	2	0	0	6	
	3	9	0	6	4	0	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	67	55	160	126

************************************************************************
