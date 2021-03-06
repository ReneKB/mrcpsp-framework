jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	11		2 3 4 5 6 8 9 10 13 16 19 
2	3	5		30 21 14 12 11 
3	3	5		28 25 15 14 12 
4	3	3		27 20 7 
5	3	9		32 30 29 28 27 24 22 17 15 
6	3	5		36 33 24 22 11 
7	3	7		32 29 26 25 24 21 15 
8	3	3		36 33 11 
9	3	6		32 27 26 25 20 18 
10	3	6		33 26 25 24 22 18 
11	3	6		37 32 29 26 25 20 
12	3	5		41 33 24 22 17 
13	3	2		35 14 
14	3	8		41 40 37 32 31 29 27 26 
15	3	6		41 37 36 33 31 23 
16	3	6		37 36 35 34 33 25 
17	3	6		48 40 37 35 31 26 
18	3	7		49 47 40 38 37 36 28 
19	3	7		51 50 48 41 40 32 26 
20	3	6		49 47 40 38 35 28 
21	3	7		51 50 46 38 37 34 33 
22	3	7		50 48 46 39 38 35 34 
23	3	6		48 40 39 38 35 34 
24	3	8		51 50 48 47 46 39 38 37 
25	3	7		50 49 48 46 41 40 38 
26	3	5		46 45 39 38 34 
27	3	5		51 50 39 38 34 
28	3	4		48 45 41 31 
29	3	7		49 48 47 46 45 44 43 
30	3	3		46 41 34 
31	3	5		50 46 44 43 39 
32	3	5		47 46 45 44 42 
33	3	4		48 45 40 39 
34	3	4		49 47 43 42 
35	3	4		51 45 43 42 
36	3	3		48 43 39 
37	3	3		45 44 43 
38	3	2		44 43 
39	3	1		42 
40	3	1		42 
41	3	1		42 
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
2	1	5	7	0	6	10	
	2	6	3	0	6	8	
	3	10	0	1	6	8	
3	1	2	9	0	7	6	
	2	4	0	6	6	3	
	3	6	0	4	6	3	
4	1	2	0	5	9	7	
	2	4	0	5	5	5	
	3	8	6	0	4	1	
5	1	1	0	8	4	9	
	2	3	8	0	2	7	
	3	4	8	0	2	6	
6	1	1	0	6	7	3	
	2	5	0	5	6	3	
	3	10	0	4	5	1	
7	1	6	0	6	7	4	
	2	9	0	6	7	2	
	3	10	2	0	7	2	
8	1	2	0	5	6	2	
	2	6	0	4	4	2	
	3	10	0	4	1	1	
9	1	6	0	10	10	5	
	2	6	2	0	7	5	
	3	8	0	8	7	4	
10	1	5	0	7	10	9	
	2	6	0	6	9	8	
	3	8	2	0	9	7	
11	1	2	4	0	6	3	
	2	6	0	7	6	2	
	3	8	0	6	6	2	
12	1	2	2	0	4	4	
	2	4	2	0	3	3	
	3	9	1	0	3	2	
13	1	3	0	7	3	9	
	2	5	3	0	3	9	
	3	6	2	0	3	9	
14	1	4	8	0	3	6	
	2	9	0	4	3	6	
	3	10	5	0	2	6	
15	1	4	0	8	7	8	
	2	8	6	0	5	8	
	3	10	0	8	4	8	
16	1	3	7	0	8	9	
	2	7	0	4	4	8	
	3	8	0	4	4	7	
17	1	2	0	6	6	10	
	2	4	2	0	6	10	
	3	9	2	0	3	10	
18	1	1	3	0	6	5	
	2	2	1	0	5	4	
	3	7	1	0	4	4	
19	1	1	6	0	2	8	
	2	5	2	0	1	6	
	3	8	0	6	1	5	
20	1	6	0	6	7	6	
	2	8	6	0	3	5	
	3	9	5	0	2	4	
21	1	1	0	9	4	6	
	2	3	0	7	3	4	
	3	8	0	7	3	1	
22	1	5	8	0	9	7	
	2	6	6	0	9	6	
	3	10	2	0	9	5	
23	1	2	5	0	9	1	
	2	6	4	0	9	1	
	3	6	0	4	7	1	
24	1	2	0	2	8	8	
	2	2	6	0	6	8	
	3	4	6	0	1	8	
25	1	1	8	0	8	10	
	2	2	8	0	8	5	
	3	4	8	0	8	1	
26	1	2	0	5	6	6	
	2	6	0	4	6	5	
	3	7	0	4	6	4	
27	1	1	8	0	6	5	
	2	4	0	8	5	5	
	3	10	6	0	3	4	
28	1	4	0	8	8	7	
	2	5	6	0	6	5	
	3	6	6	0	5	4	
29	1	4	9	0	3	6	
	2	7	9	0	3	5	
	3	9	9	0	3	4	
30	1	3	5	0	6	4	
	2	5	5	0	5	3	
	3	6	5	0	1	2	
31	1	2	10	0	8	9	
	2	2	0	6	5	7	
	3	10	0	5	5	7	
32	1	1	7	0	4	5	
	2	5	6	0	4	5	
	3	9	5	0	2	3	
33	1	6	0	10	5	10	
	2	9	5	0	5	9	
	3	10	5	0	5	8	
34	1	4	0	8	10	7	
	2	7	6	0	9	7	
	3	9	0	6	9	7	
35	1	3	9	0	7	6	
	2	4	8	0	5	5	
	3	5	0	2	4	4	
36	1	3	0	7	4	5	
	2	9	0	4	3	5	
	3	10	5	0	3	3	
37	1	3	0	8	7	7	
	2	8	0	8	7	6	
	3	9	0	8	4	4	
38	1	3	8	0	6	4	
	2	5	5	0	6	3	
	3	6	5	0	6	2	
39	1	1	6	0	2	9	
	2	2	5	0	2	4	
	3	4	0	3	2	3	
40	1	2	6	0	9	5	
	2	3	0	4	9	3	
	3	9	0	4	9	2	
41	1	2	0	8	8	8	
	2	7	0	8	8	7	
	3	8	4	0	8	6	
42	1	4	5	0	8	10	
	2	6	0	4	8	10	
	3	10	0	4	8	9	
43	1	4	0	8	1	7	
	2	6	8	0	1	6	
	3	10	0	3	1	6	
44	1	1	6	0	7	2	
	2	5	0	8	7	2	
	3	8	2	0	7	2	
45	1	1	4	0	4	8	
	2	2	4	0	2	8	
	3	8	0	5	1	8	
46	1	3	0	7	3	8	
	2	5	5	0	3	3	
	3	6	5	0	2	1	
47	1	5	0	8	3	9	
	2	8	6	0	2	7	
	3	10	5	0	2	5	
48	1	1	0	3	3	5	
	2	3	5	0	2	4	
	3	5	0	3	2	3	
49	1	2	4	0	7	6	
	2	4	0	5	7	4	
	3	9	0	4	7	2	
50	1	1	1	0	5	10	
	2	1	0	4	5	7	
	3	8	1	0	5	2	
51	1	6	0	7	4	6	
	2	8	5	0	2	6	
	3	9	1	0	1	6	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	40	51	279	302

************************************************************************
