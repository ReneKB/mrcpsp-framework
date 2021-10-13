jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	7		2 3 4 6 7 8 9 
2	6	4		14 13 10 5 
3	6	6		19 14 13 12 11 10 
4	6	4		14 12 11 10 
5	6	5		21 19 15 12 11 
6	6	3		21 11 10 
7	6	4		19 16 15 11 
8	6	3		21 12 11 
9	6	3		21 16 11 
10	6	3		20 16 15 
11	6	6		27 25 22 20 18 17 
12	6	4		27 25 20 16 
13	6	4		27 25 20 16 
14	6	7		29 25 23 22 21 20 18 
15	6	4		25 22 18 17 
16	6	2		18 17 
17	6	6		42 30 29 26 24 23 
18	6	5		42 31 30 26 24 
19	6	4		42 30 24 23 
20	6	4		42 31 30 24 
21	6	6		42 33 32 31 28 26 
22	6	3		42 31 24 
23	6	5		34 33 32 31 28 
24	6	4		34 33 32 28 
25	6	6		42 41 38 37 33 32 
26	6	4		37 36 35 34 
27	6	3		36 34 31 
28	6	4		41 39 38 37 
29	6	2		36 31 
30	6	3		39 38 37 
31	6	2		38 35 
32	6	2		36 35 
33	6	4		46 45 43 40 
34	6	2		46 38 
35	6	7		51 49 48 46 45 44 43 
36	6	4		50 46 45 40 
37	6	4		50 46 45 40 
38	6	3		50 45 40 
39	6	5		49 48 45 44 43 
40	6	4		51 49 48 44 
41	6	3		49 45 44 
42	6	3		51 48 44 
43	6	2		50 47 
44	6	1		47 
45	6	1		47 
46	6	1		47 
47	6	1		52 
48	6	1		52 
49	6	1		52 
50	6	1		52 
51	6	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	1	9	17	15	7	19	3	
	2	6	9	17	12	6	18	3	
	3	10	9	15	12	6	17	3	
	4	11	8	12	9	5	17	3	
	5	17	8	10	7	5	16	3	
	6	18	8	6	5	4	15	3	
3	1	8	17	17	7	9	17	4	
	2	9	17	16	7	9	17	3	
	3	10	17	15	6	8	17	3	
	4	14	17	14	6	8	17	2	
	5	15	17	12	6	8	16	1	
	6	19	17	12	5	7	16	1	
4	1	7	16	18	13	10	13	14	
	2	9	14	14	12	10	12	14	
	3	10	10	12	10	10	12	12	
	4	13	10	10	10	10	11	9	
	5	18	7	10	8	10	10	7	
	6	19	6	7	8	10	10	4	
5	1	1	17	18	16	5	17	17	
	2	2	13	18	15	4	16	16	
	3	7	12	18	14	4	14	16	
	4	9	10	17	13	3	14	16	
	5	12	6	17	13	3	13	15	
	6	14	4	17	11	3	11	15	
6	1	1	17	20	15	10	13	14	
	2	7	16	16	13	8	11	11	
	3	9	16	16	11	7	11	11	
	4	11	15	13	10	7	10	7	
	5	15	15	12	8	5	8	6	
	6	20	15	10	8	4	7	3	
7	1	3	20	20	18	16	20	17	
	2	4	15	17	18	15	18	16	
	3	5	12	15	17	14	18	16	
	4	8	10	11	17	12	16	16	
	5	12	10	11	16	9	15	15	
	6	14	7	7	16	9	14	15	
8	1	5	18	15	6	4	18	8	
	2	6	15	13	6	4	16	7	
	3	9	12	13	6	3	13	6	
	4	11	9	10	5	3	12	3	
	5	16	7	10	5	2	10	2	
	6	18	3	8	5	2	7	2	
9	1	3	17	15	5	18	15	7	
	2	7	16	15	4	17	12	6	
	3	8	11	15	4	17	11	6	
	4	10	10	15	4	17	7	6	
	5	11	5	15	3	16	6	6	
	6	12	4	15	3	15	3	6	
10	1	5	6	17	16	16	13	11	
	2	6	5	16	13	14	12	8	
	3	7	5	13	13	11	9	7	
	4	9	5	10	12	10	8	6	
	5	10	5	9	10	8	6	4	
	6	16	5	6	7	7	4	2	
11	1	2	16	16	7	11	19	15	
	2	11	16	14	6	10	19	14	
	3	12	14	14	5	10	19	13	
	4	13	13	12	3	9	19	11	
	5	18	13	9	3	9	19	11	
	6	19	12	9	2	8	19	10	
12	1	8	16	15	13	16	18	6	
	2	12	15	15	13	12	18	6	
	3	14	13	10	11	11	17	6	
	4	15	10	9	7	9	17	6	
	5	19	8	7	7	7	16	6	
	6	20	8	5	4	6	15	6	
13	1	4	10	19	9	15	15	15	
	2	12	9	19	8	15	11	13	
	3	16	7	18	6	15	9	13	
	4	17	7	17	6	15	9	12	
	5	18	6	17	5	15	5	9	
	6	20	5	16	4	15	5	8	
14	1	1	17	8	17	15	10	18	
	2	3	14	8	16	14	10	17	
	3	4	14	7	16	13	10	16	
	4	13	9	4	16	13	10	14	
	5	17	6	4	16	13	10	12	
	6	19	6	2	16	12	10	10	
15	1	2	16	5	9	6	10	18	
	2	3	13	4	8	6	9	16	
	3	7	12	4	7	6	9	15	
	4	9	10	4	5	6	8	14	
	5	10	8	4	5	6	7	12	
	6	17	4	4	3	6	6	11	
16	1	1	15	19	9	16	18	13	
	2	4	14	18	8	15	16	13	
	3	7	14	18	7	15	13	10	
	4	9	14	18	7	15	10	9	
	5	16	14	17	5	15	10	6	
	6	20	14	17	4	15	5	3	
17	1	1	17	7	5	13	17	5	
	2	3	15	7	4	13	16	5	
	3	12	15	7	4	10	15	4	
	4	17	14	7	3	9	14	4	
	5	18	13	6	2	9	14	3	
	6	19	13	6	2	6	13	2	
18	1	4	7	15	19	9	14	15	
	2	8	6	14	18	8	14	13	
	3	9	6	14	16	7	14	13	
	4	10	5	13	14	7	14	11	
	5	12	3	11	11	5	14	9	
	6	13	2	9	11	5	14	7	
19	1	1	18	6	16	14	12	16	
	2	4	16	6	15	10	12	16	
	3	5	16	5	13	10	12	13	
	4	10	14	4	13	8	12	11	
	5	16	14	4	10	6	12	8	
	6	19	13	3	9	5	12	6	
20	1	2	19	7	18	19	13	20	
	2	5	16	6	17	14	10	15	
	3	6	14	5	15	11	10	15	
	4	9	11	4	13	9	8	12	
	5	10	10	3	12	7	7	10	
	6	13	6	1	12	5	6	9	
21	1	1	16	17	11	19	8	17	
	2	3	12	17	9	18	7	13	
	3	7	10	16	7	18	6	11	
	4	8	7	15	6	18	6	9	
	5	9	6	13	5	16	5	6	
	6	15	3	13	5	16	5	3	
22	1	2	17	16	20	5	10	19	
	2	3	17	15	20	3	9	18	
	3	4	13	11	20	3	9	16	
	4	7	12	11	20	3	8	15	
	5	10	10	8	20	2	7	15	
	6	15	7	6	20	1	7	14	
23	1	3	5	18	11	16	18	11	
	2	6	3	16	10	16	17	10	
	3	10	3	15	10	16	17	9	
	4	13	2	14	8	16	17	7	
	5	19	1	13	5	15	17	7	
	6	20	1	12	5	15	17	6	
24	1	6	16	16	10	8	8	13	
	2	10	14	11	9	6	8	12	
	3	11	13	9	9	6	8	9	
	4	12	12	7	8	5	7	8	
	5	14	9	5	7	4	7	6	
	6	19	9	3	7	3	6	4	
25	1	1	2	14	10	17	10	16	
	2	3	2	14	10	15	10	15	
	3	5	2	14	9	15	7	15	
	4	13	2	14	8	14	5	14	
	5	14	2	13	6	13	4	12	
	6	19	2	13	5	12	2	11	
26	1	3	17	4	18	17	6	17	
	2	4	17	3	16	14	4	16	
	3	5	17	3	14	13	4	15	
	4	6	17	2	14	12	3	13	
	5	8	17	1	11	12	2	12	
	6	19	17	1	11	10	2	11	
27	1	4	20	18	14	12	17	14	
	2	5	19	14	12	11	16	11	
	3	6	19	14	10	10	16	10	
	4	7	19	12	7	8	15	6	
	5	16	19	9	5	7	14	3	
	6	20	19	7	2	6	14	2	
28	1	5	13	16	10	17	20	17	
	2	9	12	14	10	16	17	17	
	3	11	11	11	7	15	16	17	
	4	12	10	10	6	12	15	17	
	5	13	9	8	5	10	12	17	
	6	18	7	6	3	10	12	17	
29	1	1	18	4	18	14	6	6	
	2	2	15	4	13	13	5	5	
	3	3	15	3	11	11	5	5	
	4	6	14	3	8	11	5	3	
	5	13	12	3	4	8	4	3	
	6	17	9	2	2	7	4	2	
30	1	2	10	18	17	9	18	14	
	2	8	10	17	17	8	18	12	
	3	12	9	17	17	7	18	11	
	4	13	7	16	17	7	18	11	
	5	14	7	14	17	7	18	9	
	6	17	6	13	17	6	18	7	
31	1	2	14	18	13	8	8	9	
	2	3	10	16	12	8	8	9	
	3	6	10	13	10	8	6	9	
	4	10	6	12	9	8	5	8	
	5	19	6	10	5	8	3	8	
	6	20	3	10	3	8	3	7	
32	1	3	12	6	13	5	11	14	
	2	5	10	5	11	4	10	14	
	3	7	9	4	11	4	9	14	
	4	12	9	4	8	3	9	14	
	5	15	6	3	6	3	8	14	
	6	20	5	2	5	3	8	14	
33	1	1	9	15	5	19	10	18	
	2	3	9	11	4	14	10	17	
	3	6	9	9	3	10	10	17	
	4	12	8	9	3	8	10	17	
	5	15	7	6	2	5	10	17	
	6	19	7	5	2	3	10	17	
34	1	1	3	3	14	16	14	9	
	2	6	3	2	13	14	14	7	
	3	7	2	2	10	13	13	7	
	4	8	2	2	10	13	13	6	
	5	10	2	2	6	11	12	4	
	6	11	1	2	6	11	11	3	
35	1	10	4	17	11	18	15	5	
	2	11	4	16	10	16	14	5	
	3	14	4	15	10	13	10	5	
	4	15	4	13	8	12	10	5	
	5	18	4	13	8	10	7	5	
	6	20	4	12	7	9	6	5	
36	1	1	9	13	19	12	3	8	
	2	3	7	13	15	10	3	7	
	3	8	7	13	12	10	3	7	
	4	12	6	13	11	10	2	7	
	5	14	6	13	7	9	1	7	
	6	18	5	13	6	8	1	7	
37	1	1	14	12	20	6	18	18	
	2	3	13	10	16	5	18	14	
	3	4	13	8	13	4	16	12	
	4	9	11	7	10	2	16	8	
	5	14	9	6	10	2	13	7	
	6	15	7	4	6	1	12	4	
38	1	5	15	15	7	11	6	6	
	2	9	12	11	6	11	6	6	
	3	10	11	10	5	7	6	6	
	4	11	9	10	4	6	5	5	
	5	15	5	8	4	3	5	5	
	6	18	4	5	3	2	5	5	
39	1	1	14	9	7	17	16	14	
	2	8	13	6	5	16	16	13	
	3	9	13	6	4	16	16	12	
	4	10	13	4	3	16	16	11	
	5	19	12	3	2	16	16	11	
	6	20	12	2	2	16	16	10	
40	1	1	19	11	11	19	16	19	
	2	3	16	10	11	17	16	16	
	3	4	16	8	10	16	14	12	
	4	7	15	8	10	15	13	9	
	5	19	14	6	10	14	13	6	
	6	20	13	5	9	11	11	6	
41	1	1	19	14	14	19	12	4	
	2	5	17	13	14	17	10	3	
	3	6	15	13	12	17	10	2	
	4	7	12	13	12	16	7	2	
	5	8	9	13	11	13	5	2	
	6	19	9	13	10	13	5	1	
42	1	4	8	18	12	13	8	17	
	2	10	7	13	12	12	8	16	
	3	11	6	11	11	12	8	14	
	4	12	6	8	9	10	7	14	
	5	14	5	6	8	10	7	13	
	6	15	4	1	6	9	7	12	
43	1	3	10	15	9	19	4	16	
	2	8	9	13	8	13	4	16	
	3	9	7	11	7	12	4	15	
	4	11	5	9	4	10	3	13	
	5	13	4	6	4	7	2	11	
	6	17	1	4	2	3	2	10	
44	1	1	14	18	17	15	8	16	
	2	3	12	17	15	15	8	14	
	3	4	11	16	14	15	7	10	
	4	7	10	16	13	15	6	8	
	5	10	10	16	13	15	4	4	
	6	14	8	15	11	15	4	2	
45	1	11	14	19	8	15	18	6	
	2	12	12	15	6	15	12	5	
	3	13	11	12	6	12	11	5	
	4	15	8	10	5	11	8	5	
	5	16	8	8	5	8	6	5	
	6	19	7	2	4	6	3	5	
46	1	1	9	18	18	7	13	10	
	2	2	7	15	16	7	12	9	
	3	8	7	15	16	7	11	7	
	4	10	4	13	14	7	11	4	
	5	13	3	12	14	7	10	4	
	6	14	2	10	13	7	9	2	
47	1	8	17	15	17	8	7	14	
	2	9	16	14	16	8	7	12	
	3	10	15	12	14	8	7	9	
	4	14	14	12	13	8	7	8	
	5	17	13	10	12	7	7	8	
	6	18	12	10	12	7	7	5	
48	1	2	13	13	19	7	10	14	
	2	4	13	12	18	6	9	14	
	3	5	13	11	18	6	9	14	
	4	12	13	8	16	5	9	14	
	5	15	13	8	15	5	9	14	
	6	16	13	5	14	4	9	14	
49	1	1	17	18	19	10	16	15	
	2	5	14	17	16	9	15	14	
	3	7	14	17	15	9	15	14	
	4	8	12	15	12	8	14	12	
	5	11	11	15	8	6	12	11	
	6	19	11	13	6	5	11	10	
50	1	6	16	14	15	18	16	18	
	2	7	16	13	12	18	16	14	
	3	8	15	13	12	17	16	11	
	4	10	13	13	11	16	16	10	
	5	16	13	13	8	14	16	7	
	6	17	12	13	7	12	16	3	
51	1	6	10	17	11	4	18	12	
	2	8	9	17	11	3	16	8	
	3	9	9	17	11	3	14	7	
	4	10	8	17	11	3	13	6	
	5	11	7	16	10	3	12	3	
	6	17	7	16	10	3	10	1	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	90	96	577	568	605	567

************************************************************************
