jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	10		2 3 4 6 7 8 9 11 13 14 
2	6	5		22 19 18 17 5 
3	6	9		28 27 25 24 22 21 16 15 12 
4	6	5		26 21 20 19 10 
5	6	7		31 29 28 27 24 23 16 
6	6	7		32 31 28 25 24 22 20 
7	6	6		30 28 27 25 21 19 
8	6	3		26 21 10 
9	6	7		50 30 28 27 25 23 21 
10	6	5		32 30 29 28 25 
11	6	4		33 27 22 19 
12	6	5		51 36 33 30 19 
13	6	5		51 36 33 27 19 
14	6	6		50 36 35 32 26 25 
15	6	4		51 36 33 19 
16	6	8		51 50 39 36 35 33 32 26 
17	6	6		50 49 48 39 35 23 
18	6	5		49 48 36 29 25 
19	6	7		49 48 46 39 34 32 29 
20	6	3		39 29 27 
21	6	8		49 48 39 38 37 36 35 33 
22	6	9		51 50 49 46 41 37 36 35 34 
23	6	5		51 36 34 33 32 
24	6	9		50 49 48 43 41 38 37 36 35 
25	6	7		51 47 42 39 37 34 33 
26	6	9		49 48 46 45 44 42 41 38 34 
27	6	7		48 47 46 42 41 37 34 
28	6	4		44 39 36 33 
29	6	6		50 45 41 38 37 35 
30	6	7		49 48 47 45 41 40 39 
31	6	6		48 47 46 45 42 40 
32	6	4		45 42 38 37 
33	6	4		46 45 41 40 
34	6	2		43 40 
35	6	2		47 40 
36	6	2		42 40 
37	6	1		44 
38	6	1		40 
39	6	1		43 
40	6	1		52 
41	6	1		52 
42	6	1		52 
43	6	1		52 
44	6	1		52 
45	6	1		52 
46	6	1		52 
47	6	1		52 
48	6	1		52 
49	6	1		52 
50	6	1		52 
51	6	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	
2	1	1	1	5	19	7	
	2	6	1	4	17	6	
	3	8	1	4	17	5	
	4	13	1	4	17	4	
	5	14	1	3	16	5	
	6	17	1	3	15	5	
3	1	9	3	3	10	15	
	2	13	3	2	8	15	
	3	14	3	2	7	15	
	4	15	3	1	5	15	
	5	16	3	1	4	15	
	6	17	3	1	3	15	
4	1	3	1	5	2	20	
	2	7	1	5	2	17	
	3	8	1	5	2	15	
	4	10	1	5	2	14	
	5	13	1	5	1	14	
	6	14	1	5	1	11	
5	1	2	5	4	12	8	
	2	3	4	3	10	7	
	3	4	4	2	8	7	
	4	6	4	2	6	7	
	5	14	3	2	5	7	
	6	17	3	1	2	7	
6	1	8	5	3	15	16	
	2	11	4	2	15	16	
	3	12	4	2	15	12	
	4	18	3	2	15	9	
	5	19	3	2	15	6	
	6	20	3	2	15	2	
7	1	6	3	1	13	18	
	2	7	3	1	11	16	
	3	13	3	1	11	13	
	4	17	3	1	10	10	
	5	18	3	1	8	9	
	6	20	3	1	7	6	
8	1	1	5	5	9	13	
	2	3	4	4	8	13	
	3	9	4	4	7	13	
	4	13	3	3	6	13	
	5	18	2	2	5	13	
	6	20	2	2	4	13	
9	1	1	3	4	9	14	
	2	2	3	4	8	13	
	3	3	3	4	8	12	
	4	5	3	4	7	10	
	5	6	3	4	6	9	
	6	15	3	4	6	6	
10	1	2	5	5	20	5	
	2	3	5	5	16	4	
	3	9	5	5	15	4	
	4	10	5	5	11	4	
	5	15	5	5	10	3	
	6	16	5	5	7	3	
11	1	4	5	3	20	7	
	2	6	4	2	18	6	
	3	10	4	2	16	5	
	4	15	4	2	15	5	
	5	17	3	2	15	4	
	6	20	3	2	13	4	
12	1	4	4	4	18	13	
	2	6	3	4	17	11	
	3	10	3	4	16	10	
	4	15	3	4	16	8	
	5	18	2	4	16	8	
	6	19	2	4	15	7	
13	1	3	4	4	8	11	
	2	5	4	4	7	11	
	3	10	4	4	6	9	
	4	13	4	4	5	5	
	5	15	4	4	3	4	
	6	16	4	4	1	1	
14	1	2	2	2	18	16	
	2	6	2	2	14	14	
	3	10	2	2	14	12	
	4	14	2	2	10	11	
	5	15	1	1	5	8	
	6	18	1	1	3	8	
15	1	1	3	3	14	7	
	2	2	3	2	13	6	
	3	3	2	2	12	5	
	4	14	2	2	8	5	
	5	19	2	2	8	3	
	6	20	1	2	4	3	
16	1	9	2	5	7	13	
	2	10	2	4	5	12	
	3	11	2	4	5	11	
	4	12	2	4	3	7	
	5	15	2	4	3	5	
	6	16	2	4	1	5	
17	1	4	5	3	11	19	
	2	7	3	2	9	17	
	3	10	3	2	8	16	
	4	12	3	2	8	14	
	5	13	2	2	6	13	
	6	14	1	2	6	12	
18	1	2	4	1	19	12	
	2	3	4	1	19	9	
	3	4	4	1	19	8	
	4	6	4	1	19	7	
	5	7	4	1	19	6	
	6	17	4	1	19	4	
19	1	1	2	2	13	10	
	2	2	2	2	11	10	
	3	10	2	2	9	10	
	4	17	1	2	7	10	
	5	19	1	2	5	9	
	6	20	1	2	5	8	
20	1	7	1	3	17	12	
	2	8	1	2	15	11	
	3	9	1	2	13	11	
	4	13	1	2	12	10	
	5	18	1	2	10	10	
	6	20	1	2	10	9	
21	1	4	2	4	14	16	
	2	6	2	4	12	15	
	3	8	2	3	12	13	
	4	13	2	3	10	12	
	5	18	1	3	9	11	
	6	20	1	2	8	11	
22	1	1	5	2	14	8	
	2	9	4	2	14	6	
	3	10	3	2	14	6	
	4	12	3	1	13	5	
	5	17	1	1	12	4	
	6	19	1	1	12	2	
23	1	2	5	4	17	3	
	2	3	5	3	15	3	
	3	4	5	3	12	3	
	4	13	5	2	12	3	
	5	14	5	2	9	2	
	6	20	5	2	8	2	
24	1	2	4	2	8	6	
	2	4	3	1	8	5	
	3	9	2	1	8	5	
	4	11	2	1	8	4	
	5	12	2	1	8	3	
	6	17	1	1	8	5	
25	1	2	5	3	8	18	
	2	4	4	3	7	15	
	3	6	4	3	6	14	
	4	7	3	3	5	13	
	5	10	3	3	4	10	
	6	15	3	3	4	8	
26	1	1	4	2	19	19	
	2	3	3	2	17	18	
	3	7	3	2	16	17	
	4	11	3	2	13	15	
	5	12	2	2	12	14	
	6	16	2	2	11	14	
27	1	2	5	2	18	7	
	2	4	3	2	18	6	
	3	5	3	2	17	6	
	4	6	2	1	16	5	
	5	13	2	1	13	4	
	6	18	1	1	13	4	
28	1	7	3	4	4	16	
	2	9	2	4	4	16	
	3	10	2	4	4	15	
	4	11	1	4	4	16	
	5	19	1	3	4	15	
	6	20	1	3	4	14	
29	1	2	4	3	6	13	
	2	3	3	3	5	13	
	3	4	3	3	4	13	
	4	5	2	3	3	13	
	5	6	1	3	3	13	
	6	10	1	3	1	13	
30	1	3	5	2	11	13	
	2	4	4	1	11	13	
	3	13	3	1	10	13	
	4	14	3	1	8	12	
	5	17	3	1	8	11	
	6	20	2	1	7	11	
31	1	3	3	4	13	10	
	2	6	3	3	13	9	
	3	7	3	3	13	8	
	4	12	3	3	13	6	
	5	17	3	2	13	6	
	6	19	3	2	13	4	
32	1	1	5	5	9	15	
	2	8	4	4	7	13	
	3	10	4	4	6	13	
	4	11	3	3	3	13	
	5	14	2	3	3	12	
	6	19	2	3	1	11	
33	1	1	4	3	5	17	
	2	2	3	2	5	17	
	3	3	3	2	4	17	
	4	13	3	2	4	16	
	5	16	1	2	3	17	
	6	18	1	2	3	16	
34	1	5	2	5	14	20	
	2	6	2	4	12	16	
	3	9	2	3	11	16	
	4	12	2	2	9	15	
	5	16	2	2	7	13	
	6	20	2	1	3	11	
35	1	3	1	4	9	8	
	2	4	1	3	9	6	
	3	9	1	2	8	6	
	4	11	1	2	7	4	
	5	12	1	1	6	4	
	6	19	1	1	6	2	
36	1	1	2	4	19	11	
	2	2	2	3	19	8	
	3	3	2	3	19	6	
	4	14	2	3	19	5	
	5	16	2	2	18	2	
	6	17	2	2	18	1	
37	1	6	5	4	16	14	
	2	7	5	3	15	11	
	3	9	5	3	14	11	
	4	11	5	3	11	9	
	5	15	5	1	8	9	
	6	17	5	1	7	8	
38	1	2	4	5	9	13	
	2	4	3	4	9	13	
	3	9	2	4	9	13	
	4	14	2	4	9	12	
	5	16	1	4	9	12	
	6	20	1	4	9	11	
39	1	9	4	4	18	4	
	2	10	3	3	17	3	
	3	12	2	3	17	3	
	4	15	2	2	16	3	
	5	17	1	1	15	2	
	6	20	1	1	15	1	
40	1	2	4	1	7	11	
	2	7	3	1	6	9	
	3	8	3	1	5	9	
	4	11	2	1	4	7	
	5	17	2	1	4	6	
	6	19	2	1	3	6	
41	1	2	3	4	19	18	
	2	4	3	4	19	17	
	3	7	2	3	19	17	
	4	9	2	2	19	16	
	5	11	1	1	19	16	
	6	19	1	1	19	15	
42	1	2	5	3	20	18	
	2	3	4	3	19	15	
	3	4	4	3	19	14	
	4	5	3	3	18	14	
	5	10	3	2	17	13	
	6	13	3	2	17	11	
43	1	1	3	3	11	11	
	2	3	3	2	11	9	
	3	4	3	2	8	7	
	4	12	2	2	7	5	
	5	16	1	1	5	4	
	6	18	1	1	1	3	
44	1	2	3	5	13	7	
	2	4	3	4	12	6	
	3	8	3	4	10	5	
	4	11	3	3	9	4	
	5	15	2	3	9	3	
	6	17	2	2	8	2	
45	1	10	4	4	10	15	
	2	11	4	4	9	14	
	3	12	4	4	6	13	
	4	14	3	4	5	11	
	5	16	3	4	3	10	
	6	19	3	4	2	10	
46	1	2	5	3	8	9	
	2	3	4	2	6	9	
	3	5	3	2	6	9	
	4	8	3	2	5	9	
	5	9	3	2	4	9	
	6	16	2	2	4	9	
47	1	4	2	5	9	17	
	2	6	2	3	7	13	
	3	10	2	3	6	10	
	4	13	2	3	6	8	
	5	14	2	1	5	6	
	6	15	2	1	3	2	
48	1	5	4	2	9	10	
	2	10	4	2	8	10	
	3	11	4	2	8	9	
	4	12	4	2	7	9	
	5	13	4	1	5	7	
	6	20	4	1	5	6	
49	1	1	5	5	11	17	
	2	9	4	5	11	17	
	3	12	3	5	9	16	
	4	17	2	5	7	14	
	5	19	2	5	7	12	
	6	20	1	5	5	11	
50	1	3	3	4	16	11	
	2	4	3	4	16	10	
	3	5	3	4	15	10	
	4	7	3	4	14	10	
	5	11	3	4	13	10	
	6	12	3	4	13	9	
51	1	6	3	5	12	16	
	2	9	3	5	11	16	
	3	13	3	5	9	16	
	4	14	2	5	7	16	
	5	15	2	5	6	16	
	6	18	2	5	4	16	
52	1	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2
	31	32	436	446

************************************************************************
