jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	10		2 3 4 5 6 9 10 13 14 20 
2	3	6		26 25 18 16 11 8 
3	3	5		41 28 26 11 7 
4	3	7		41 26 25 21 19 18 15 
5	3	5		25 21 19 17 12 
6	3	4		26 25 23 15 
7	3	3		21 19 15 
8	3	6		41 35 28 24 22 21 
9	3	9		36 33 32 31 30 29 28 27 25 
10	3	4		28 25 22 21 
11	3	3		30 23 15 
12	3	2		26 15 
13	3	4		35 31 22 19 
14	3	6		51 35 31 30 28 22 
15	3	6		51 37 35 33 31 22 
16	3	7		51 37 36 35 31 30 29 
17	3	7		51 37 36 35 33 30 27 
18	3	6		37 36 34 33 29 27 
19	3	8		51 50 47 37 34 33 32 30 
20	3	6		50 36 35 32 30 29 
21	3	5		37 36 34 33 27 
22	3	6		45 38 36 34 32 29 
23	3	6		50 45 39 36 35 29 
24	3	8		51 48 47 44 39 38 37 36 
25	3	7		51 46 44 39 37 35 34 
26	3	5		50 44 40 33 30 
27	3	8		50 49 48 47 45 44 39 38 
28	3	5		49 48 46 38 37 
29	3	5		49 46 44 42 40 
30	3	5		48 46 45 42 39 
31	3	3		50 44 34 
32	3	5		49 46 44 43 42 
33	3	3		45 39 38 
34	3	3		48 43 42 
35	3	2		47 38 
36	3	2		49 46 
37	3	2		45 42 
38	3	1		42 
39	3	1		43 
40	3	1		47 
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
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	3	5	1	4	2	5	21	25	29	
	2	4	3	1	4	1	3	20	15	25	
	3	24	3	1	3	1	2	14	9	22	
3	1	2	4	4	2	3	4	22	27	27	
	2	4	3	4	1	2	2	11	17	26	
	3	16	2	4	1	2	2	3	17	23	
4	1	22	1	3	5	4	21	17	19	29	
	2	25	1	3	4	4	15	13	15	25	
	3	26	1	3	3	4	15	12	8	25	
5	1	9	4	4	2	4	30	26	18	6	
	2	10	3	3	1	4	28	23	18	6	
	3	20	2	3	1	4	28	17	17	6	
6	1	9	4	2	5	5	11	21	20	20	
	2	16	3	1	5	3	9	14	9	12	
	3	24	3	1	5	2	9	4	4	5	
7	1	15	4	3	4	5	24	24	14	3	
	2	25	3	3	4	4	21	18	12	2	
	3	29	3	1	4	3	20	8	7	2	
8	1	4	5	4	2	5	25	15	12	19	
	2	9	5	3	2	3	25	12	8	18	
	3	18	5	1	2	3	22	7	7	15	
9	1	2	4	1	3	5	24	25	19	21	
	2	17	3	1	2	4	23	19	18	20	
	3	27	3	1	1	2	22	15	17	19	
10	1	2	3	4	3	4	20	20	11	21	
	2	16	2	4	2	3	15	15	10	20	
	3	23	2	4	2	3	11	9	5	18	
11	1	2	4	4	2	2	16	8	19	21	
	2	19	3	4	2	2	15	7	17	20	
	3	25	3	4	2	2	9	6	8	18	
12	1	13	1	1	3	5	29	7	30	25	
	2	28	1	1	3	4	25	5	23	18	
	3	30	1	1	1	4	22	3	21	7	
13	1	17	4	4	2	1	17	13	26	14	
	2	21	3	3	2	1	14	7	24	6	
	3	23	3	1	2	1	11	2	19	6	
14	1	11	3	2	4	5	11	13	19	25	
	2	21	3	1	4	3	8	9	15	20	
	3	23	3	1	4	2	5	2	14	17	
15	1	6	5	4	5	5	14	11	16	28	
	2	21	3	3	4	4	14	6	10	23	
	3	27	3	2	4	4	14	2	6	17	
16	1	9	4	4	5	3	19	20	28	16	
	2	19	3	2	3	1	12	18	24	16	
	3	24	2	2	2	1	4	18	19	5	
17	1	9	3	3	4	4	29	16	12	29	
	2	13	1	2	3	3	20	13	12	27	
	3	18	1	2	3	3	3	13	12	25	
18	1	12	2	4	5	5	25	26	23	14	
	2	16	2	4	4	3	21	21	15	6	
	3	28	2	4	4	2	17	15	14	6	
19	1	1	5	4	3	5	13	23	15	17	
	2	11	4	2	2	4	8	15	15	14	
	3	23	3	1	2	4	5	7	12	10	
20	1	2	4	5	4	5	18	10	14	7	
	2	7	3	3	2	4	12	10	12	5	
	3	22	2	3	2	4	7	9	5	5	
21	1	6	1	5	3	3	6	16	20	18	
	2	8	1	4	2	3	6	7	20	12	
	3	19	1	4	1	3	4	4	17	6	
22	1	1	5	3	5	3	20	27	28	7	
	2	2	5	3	4	2	14	21	28	6	
	3	30	5	3	4	2	11	18	28	3	
23	1	1	5	5	5	2	28	27	5	26	
	2	16	4	4	2	1	15	23	3	11	
	3	26	3	2	2	1	6	20	2	3	
24	1	4	1	5	3	2	8	11	26	28	
	2	10	1	3	3	2	7	10	20	14	
	3	29	1	2	3	2	7	9	9	10	
25	1	4	3	3	4	3	18	14	24	11	
	2	6	3	2	3	3	8	13	15	7	
	3	12	3	1	3	3	7	12	8	2	
26	1	4	1	5	4	1	1	22	12	21	
	2	6	1	4	4	1	1	17	6	20	
	3	20	1	4	4	1	1	7	4	20	
27	1	11	2	3	3	2	19	15	22	17	
	2	23	2	2	3	1	15	13	17	14	
	3	27	2	2	3	1	12	10	16	5	
28	1	5	5	3	4	4	27	8	8	9	
	2	13	3	3	2	3	26	7	6	9	
	3	16	3	3	2	1	24	7	3	9	
29	1	8	3	4	1	3	22	19	16	11	
	2	25	2	4	1	3	20	17	8	7	
	3	26	2	4	1	1	8	15	1	7	
30	1	3	4	4	4	1	21	22	22	23	
	2	6	4	4	3	1	15	18	15	22	
	3	20	2	4	2	1	6	13	12	22	
31	1	1	3	3	5	3	23	4	10	17	
	2	3	3	3	3	3	19	4	6	15	
	3	16	3	3	3	2	17	4	3	14	
32	1	1	4	2	3	4	24	17	26	21	
	2	17	3	1	2	2	21	7	23	20	
	3	20	3	1	2	2	17	2	16	17	
33	1	15	2	3	5	1	8	11	16	18	
	2	16	2	3	4	1	6	10	14	17	
	3	29	2	2	4	1	5	8	13	13	
34	1	7	3	4	5	4	25	24	26	13	
	2	13	3	4	2	3	22	23	23	12	
	3	18	2	4	2	3	22	22	15	4	
35	1	3	4	4	5	3	10	23	6	26	
	2	4	4	4	5	2	7	19	5	19	
	3	11	4	4	5	2	5	14	4	2	
36	1	4	4	2	3	4	14	16	9	18	
	2	22	4	1	1	4	8	15	7	15	
	3	26	2	1	1	3	6	15	5	15	
37	1	2	1	4	2	1	1	29	16	23	
	2	16	1	4	1	1	1	14	13	21	
	3	17	1	4	1	1	1	8	12	20	
38	1	8	3	3	3	5	26	13	24	17	
	2	14	2	2	2	4	18	13	22	15	
	3	25	2	2	2	3	17	11	22	10	
39	1	1	4	1	4	4	7	20	20	25	
	2	21	4	1	4	2	6	15	15	21	
	3	26	3	1	4	2	3	4	12	11	
40	1	1	3	3	3	3	16	8	19	16	
	2	4	3	2	2	3	15	6	14	12	
	3	30	3	2	1	2	15	5	7	11	
41	1	14	5	3	5	2	15	24	17	20	
	2	20	4	2	5	2	11	22	14	18	
	3	21	3	1	5	2	11	18	13	14	
42	1	6	5	4	5	1	8	11	20	24	
	2	7	4	3	3	1	7	6	17	20	
	3	28	3	2	3	1	5	5	13	18	
43	1	11	5	5	5	5	28	27	23	6	
	2	12	4	4	5	3	28	24	20	6	
	3	29	4	3	5	1	28	23	16	3	
44	1	13	4	5	4	3	19	18	25	20	
	2	25	2	4	3	3	15	17	22	13	
	3	30	2	4	3	3	11	17	20	9	
45	1	5	5	1	2	2	15	26	14	10	
	2	22	3	1	2	1	13	20	12	9	
	3	23	3	1	2	1	12	18	12	3	
46	1	2	4	4	5	5	22	27	21	10	
	2	28	4	2	4	3	15	26	17	8	
	3	29	4	1	3	3	12	23	12	7	
47	1	1	3	3	3	3	24	23	25	27	
	2	2	2	3	3	2	13	16	20	20	
	3	17	2	3	2	1	4	5	10	18	
48	1	5	4	2	3	5	29	25	2	5	
	2	13	4	2	3	4	28	21	2	4	
	3	20	3	2	3	4	27	20	2	4	
49	1	6	3	3	4	2	9	19	24	10	
	2	7	2	2	2	1	9	19	10	10	
	3	24	2	2	1	1	7	18	5	10	
50	1	14	5	1	4	3	18	23	22	26	
	2	25	3	1	2	2	16	21	19	26	
	3	26	2	1	1	2	13	20	18	23	
51	1	1	5	3	3	4	19	19	23	18	
	2	8	2	3	3	2	19	15	17	14	
	3	20	1	2	3	2	19	7	11	13	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	186	181	180	189	649	642	656	660

************************************************************************
