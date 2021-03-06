jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	9		2 3 4 5 7 10 13 16 17 
2	3	5		32 20 14 11 9 
3	3	10		33 32 31 29 23 20 19 18 14 11 
4	3	7		32 28 27 20 18 12 8 
5	3	3		18 11 6 
6	3	9		36 33 29 27 24 23 22 20 15 
7	3	5		33 23 21 19 11 
8	3	10		36 35 33 31 29 25 24 22 21 19 
9	3	4		33 27 19 12 
10	3	7		43 39 33 31 25 22 15 
11	3	9		43 42 39 36 35 28 25 24 22 
12	3	9		39 37 36 35 31 30 29 24 23 
13	3	8		43 37 36 35 30 29 27 26 
14	3	5		40 35 30 27 21 
15	3	4		42 35 28 19 
16	3	3		33 23 18 
17	3	4		42 40 35 22 
18	3	5		51 43 40 37 26 
19	3	3		37 30 26 
20	3	7		50 49 47 42 40 39 35 
21	3	4		42 41 39 26 
22	3	2		30 26 
23	3	8		50 49 48 47 46 42 40 38 
24	3	3		50 40 34 
25	3	3		49 37 34 
26	3	3		50 49 34 
27	3	3		49 41 34 
28	3	2		40 34 
29	3	7		50 48 47 46 45 42 41 
30	3	6		51 48 47 46 41 38 
31	3	6		50 49 47 46 41 38 
32	3	6		51 49 47 46 41 38 
33	3	5		49 47 46 45 41 
34	3	4		48 47 46 38 
35	3	2		48 38 
36	3	2		48 40 
37	3	2		45 41 
38	3	2		45 44 
39	3	2		48 46 
40	3	1		41 
41	3	1		44 
42	3	1		44 
43	3	1		45 
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
2	1	2	0	10	0	7	
	2	7	8	0	0	6	
	3	10	0	10	0	4	
3	1	1	0	4	7	0	
	2	2	0	3	7	0	
	3	9	0	1	3	0	
4	1	1	0	7	7	0	
	2	2	0	5	0	5	
	3	10	6	0	4	0	
5	1	5	6	0	8	0	
	2	10	5	0	0	6	
	3	10	0	3	3	0	
6	1	6	0	3	0	8	
	2	6	0	2	3	0	
	3	10	5	0	0	4	
7	1	1	5	0	0	10	
	2	5	2	0	0	9	
	3	8	0	4	0	8	
8	1	1	4	0	0	4	
	2	2	4	0	2	0	
	3	10	4	0	0	2	
9	1	2	0	5	10	0	
	2	3	9	0	10	0	
	3	8	0	5	0	2	
10	1	3	6	0	6	0	
	2	6	4	0	0	4	
	3	7	0	3	0	3	
11	1	2	5	0	1	0	
	2	3	4	0	0	4	
	3	3	4	0	1	0	
12	1	3	0	2	0	10	
	2	8	7	0	3	0	
	3	8	0	1	1	0	
13	1	5	10	0	0	8	
	2	6	0	4	0	6	
	3	8	3	0	0	3	
14	1	3	4	0	7	0	
	2	6	3	0	6	0	
	3	9	0	4	0	2	
15	1	1	4	0	0	5	
	2	9	4	0	5	0	
	3	10	4	0	1	0	
16	1	6	7	0	6	0	
	2	6	0	4	0	8	
	3	7	0	4	0	7	
17	1	1	0	1	9	0	
	2	3	5	0	7	0	
	3	5	0	1	0	4	
18	1	1	10	0	0	9	
	2	3	0	4	0	7	
	3	8	9	0	0	2	
19	1	1	0	4	0	9	
	2	3	0	4	0	7	
	3	9	0	4	0	5	
20	1	4	0	7	0	9	
	2	9	5	0	6	0	
	3	10	5	0	2	0	
21	1	5	7	0	6	0	
	2	8	0	7	4	0	
	3	10	1	0	0	4	
22	1	2	0	10	8	0	
	2	5	9	0	7	0	
	3	8	9	0	6	0	
23	1	3	8	0	0	8	
	2	4	6	0	0	6	
	3	8	6	0	0	5	
24	1	6	7	0	7	0	
	2	6	0	4	7	0	
	3	9	0	3	0	2	
25	1	3	9	0	0	8	
	2	9	9	0	4	0	
	3	10	0	6	3	0	
26	1	1	0	9	0	8	
	2	4	0	8	0	6	
	3	6	3	0	0	5	
27	1	4	9	0	4	0	
	2	7	8	0	4	0	
	3	8	7	0	4	0	
28	1	3	0	5	5	0	
	2	5	10	0	0	4	
	3	10	0	4	0	2	
29	1	2	7	0	0	1	
	2	2	0	4	7	0	
	3	6	0	3	6	0	
30	1	5	0	5	4	0	
	2	6	7	0	4	0	
	3	10	0	4	4	0	
31	1	1	0	6	0	8	
	2	9	3	0	0	8	
	3	10	3	0	3	0	
32	1	5	0	8	0	9	
	2	5	1	0	0	6	
	3	5	0	7	1	0	
33	1	1	0	8	0	3	
	2	9	3	0	0	2	
	3	9	0	4	0	2	
34	1	2	0	8	0	8	
	2	3	0	4	0	8	
	3	4	6	0	2	0	
35	1	3	6	0	0	4	
	2	4	4	0	0	4	
	3	9	0	3	1	0	
36	1	4	0	8	0	4	
	2	6	0	8	6	0	
	3	10	0	8	1	0	
37	1	3	0	2	0	7	
	2	5	8	0	5	0	
	3	8	8	0	4	0	
38	1	4	7	0	9	0	
	2	4	0	5	4	0	
	3	10	0	4	1	0	
39	1	3	2	0	9	0	
	2	7	0	6	8	0	
	3	9	2	0	0	5	
40	1	3	0	7	0	5	
	2	6	5	0	8	0	
	3	9	4	0	8	0	
41	1	2	8	0	9	0	
	2	4	6	0	6	0	
	3	10	0	6	0	1	
42	1	7	0	6	10	0	
	2	8	0	2	0	6	
	3	9	8	0	0	3	
43	1	4	0	6	2	0	
	2	5	0	4	0	6	
	3	6	0	4	0	5	
44	1	4	6	0	6	0	
	2	5	0	6	6	0	
	3	8	0	4	6	0	
45	1	4	7	0	0	4	
	2	7	0	8	2	0	
	3	8	0	5	0	3	
46	1	4	0	5	4	0	
	2	5	0	3	0	7	
	3	6	0	2	0	7	
47	1	4	0	6	4	0	
	2	8	0	5	2	0	
	3	8	3	0	0	6	
48	1	3	0	8	0	2	
	2	3	8	0	0	2	
	3	8	0	8	0	1	
49	1	2	0	8	0	1	
	2	3	0	7	8	0	
	3	5	6	0	0	1	
50	1	5	0	10	10	0	
	2	7	0	9	9	0	
	3	8	0	8	8	0	
51	1	4	0	6	0	10	
	2	5	5	0	0	7	
	3	10	0	6	0	6	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	39	35	79	92

************************************************************************
