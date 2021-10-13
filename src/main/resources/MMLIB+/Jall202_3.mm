jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	9		2 3 4 5 7 8 12 14 15 
2	6	5		26 19 16 10 6 
3	6	6		35 19 18 17 11 10 
4	6	6		28 27 24 23 22 9 
5	6	10		35 34 30 28 27 26 25 24 21 18 
6	6	7		35 30 28 23 18 17 13 
7	6	8		35 31 28 27 23 22 18 16 
8	6	9		35 31 30 28 27 26 25 23 20 
9	6	9		51 40 35 34 31 30 26 25 20 
10	6	7		40 34 31 30 28 25 20 
11	6	7		34 33 30 26 25 23 22 
12	6	6		34 33 29 27 25 23 
13	6	10		51 42 40 38 34 33 32 31 29 25 
14	6	7		51 35 33 30 29 26 25 
15	6	7		51 37 36 31 30 29 27 
16	6	8		51 42 41 36 34 32 30 29 
17	6	6		51 37 36 31 29 27 
18	6	8		51 41 38 37 36 33 32 29 
19	6	5		42 40 39 31 27 
20	6	6		41 38 36 33 32 29 
21	6	7		47 41 40 38 37 36 32 
22	6	5		41 38 37 32 29 
23	6	6		51 46 42 40 38 32 
24	6	5		47 38 33 32 31 
25	6	8		50 49 48 47 41 39 37 36 
26	6	4		46 42 38 32 
27	6	4		47 46 38 32 
28	6	7		51 50 49 46 44 43 42 
29	6	5		48 47 46 44 39 
30	6	5		50 47 46 45 38 
31	6	5		48 46 45 44 41 
32	6	5		50 49 48 45 44 
33	6	4		49 48 44 43 
34	6	4		47 45 44 43 
35	6	4		50 49 48 44 
36	6	3		46 44 43 
37	6	3		46 45 43 
38	6	2		44 43 
39	6	2		45 43 
40	6	2		44 43 
41	6	1		43 
42	6	1		47 
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
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	10	2	5	1	4	29	7	26	9	
	2	12	1	3	1	3	20	6	25	9	
	3	13	1	3	1	3	16	6	21	8	
	4	14	1	2	1	3	13	6	16	8	
	5	15	1	2	1	3	9	6	13	8	
	6	21	1	1	1	3	6	6	11	7	
3	1	8	2	3	4	2	26	13	22	29	
	2	10	2	3	3	2	19	11	21	29	
	3	13	2	3	3	2	15	9	21	29	
	4	19	2	2	3	2	14	9	21	29	
	5	23	1	2	3	2	8	6	21	29	
	6	29	1	2	3	2	4	5	21	29	
4	1	6	4	5	5	3	27	19	26	25	
	2	14	4	4	4	2	26	16	24	22	
	3	16	4	4	4	2	24	14	19	15	
	4	17	3	3	4	2	22	11	18	13	
	5	18	3	3	4	2	21	10	14	9	
	6	19	3	3	4	2	19	8	12	6	
5	1	3	3	4	5	3	28	29	20	23	
	2	16	3	3	4	3	28	24	18	22	
	3	18	3	3	4	3	28	23	16	20	
	4	24	3	2	3	3	28	19	14	18	
	5	25	3	2	3	2	28	18	11	15	
	6	29	3	1	2	2	28	15	10	15	
6	1	13	3	1	2	3	8	11	17	26	
	2	17	3	1	2	3	7	9	16	23	
	3	20	3	1	2	3	7	9	16	18	
	4	21	3	1	2	3	6	8	16	16	
	5	22	3	1	2	2	6	7	15	12	
	6	27	3	1	2	2	6	6	14	10	
7	1	1	4	3	5	4	13	23	30	18	
	2	5	4	2	4	4	12	20	24	17	
	3	6	3	2	3	3	12	20	21	15	
	4	16	3	2	3	3	12	15	17	14	
	5	20	2	1	1	3	11	11	13	11	
	6	22	2	1	1	2	11	10	10	11	
8	1	4	1	5	3	4	6	13	25	28	
	2	6	1	5	3	4	6	13	25	24	
	3	20	1	5	3	4	5	13	22	23	
	4	27	1	5	3	4	5	13	18	20	
	5	29	1	5	2	4	3	13	14	19	
	6	30	1	5	2	4	3	13	8	16	
9	1	3	5	4	4	4	8	17	28	15	
	2	4	5	4	4	4	6	15	24	12	
	3	9	5	4	4	4	6	11	19	10	
	4	21	5	4	4	4	5	11	15	9	
	5	26	5	4	4	3	3	8	12	5	
	6	29	5	4	4	3	1	6	10	2	
10	1	1	1	2	1	2	26	23	28	15	
	2	16	1	1	1	1	26	20	27	14	
	3	17	1	1	1	1	26	19	24	12	
	4	19	1	1	1	1	26	16	23	9	
	5	24	1	1	1	1	26	12	22	7	
	6	28	1	1	1	1	26	10	19	6	
11	1	1	5	3	2	4	20	10	22	17	
	2	4	4	2	2	3	19	9	19	17	
	3	5	3	2	2	3	19	8	15	17	
	4	18	2	2	2	2	19	6	13	17	
	5	22	2	2	2	2	19	6	12	17	
	6	24	1	2	2	2	19	5	10	17	
12	1	3	2	4	4	5	6	15	21	22	
	2	4	1	3	4	3	5	13	17	19	
	3	10	1	3	4	3	4	9	12	16	
	4	11	1	3	4	2	4	8	12	15	
	5	13	1	1	4	2	3	6	9	13	
	6	22	1	1	4	1	1	4	4	11	
13	1	4	5	1	4	4	2	27	19	21	
	2	6	4	1	3	3	2	27	13	19	
	3	12	3	1	3	3	2	26	10	18	
	4	20	3	1	3	2	2	24	8	18	
	5	21	3	1	3	2	2	22	4	16	
	6	22	2	1	3	1	2	21	3	16	
14	1	3	5	3	4	4	28	28	5	15	
	2	6	4	2	4	4	26	22	5	15	
	3	8	3	2	4	3	25	19	5	15	
	4	12	3	1	4	2	24	15	5	15	
	5	24	1	1	4	1	23	14	4	15	
	6	27	1	1	4	1	21	9	4	15	
15	1	10	5	4	2	2	22	19	24	15	
	2	15	4	4	2	2	22	15	21	14	
	3	27	4	4	2	2	20	14	20	9	
	4	28	4	4	2	2	17	10	19	7	
	5	29	4	4	2	2	14	9	17	5	
	6	30	4	4	2	2	11	7	15	2	
16	1	3	4	3	4	1	20	7	29	22	
	2	10	3	2	3	1	17	5	24	18	
	3	12	3	2	3	1	16	5	20	16	
	4	15	3	1	3	1	11	4	17	14	
	5	24	1	1	2	1	9	3	13	7	
	6	27	1	1	2	1	7	3	9	4	
17	1	3	4	5	3	3	22	22	14	23	
	2	4	3	4	2	2	21	21	12	23	
	3	16	3	4	2	2	21	20	10	23	
	4	17	2	3	1	2	21	19	9	22	
	5	26	1	3	1	2	20	19	4	21	
	6	30	1	2	1	2	19	17	3	21	
18	1	3	4	2	5	5	26	23	22	5	
	2	9	4	1	4	4	20	23	22	4	
	3	10	4	1	4	4	17	23	22	4	
	4	11	4	1	4	4	10	23	22	4	
	5	22	3	1	4	4	10	22	22	4	
	6	29	3	1	4	4	2	22	22	4	
19	1	8	5	4	4	4	26	10	19	8	
	2	11	4	4	3	3	26	8	16	8	
	3	13	4	4	3	3	25	7	12	8	
	4	16	3	4	3	3	25	6	11	8	
	5	29	2	4	3	3	24	3	7	8	
	6	30	2	4	3	3	24	1	3	8	
20	1	6	3	2	3	5	25	23	24	27	
	2	11	3	1	3	4	24	22	21	21	
	3	13	3	1	3	4	24	18	19	19	
	4	18	3	1	3	3	23	17	15	14	
	5	22	3	1	3	3	21	15	14	10	
	6	29	3	1	3	2	21	13	13	3	
21	1	2	4	4	5	4	22	20	25	20	
	2	13	4	4	4	4	21	15	23	17	
	3	20	4	4	3	4	19	15	23	13	
	4	21	4	3	2	4	19	11	20	11	
	5	22	4	3	1	4	18	11	19	10	
	6	23	4	3	1	4	17	7	19	8	
22	1	9	4	4	3	2	26	8	25	22	
	2	16	4	4	2	2	26	5	22	22	
	3	19	4	4	2	2	26	5	20	22	
	4	20	3	4	2	2	26	3	17	22	
	5	22	3	4	1	1	25	3	14	22	
	6	23	3	4	1	1	25	2	13	22	
23	1	6	3	5	5	3	21	10	20	6	
	2	14	3	4	3	2	18	7	14	6	
	3	15	3	4	3	2	16	7	14	4	
	4	17	3	4	2	2	13	5	12	3	
	5	21	2	4	2	2	11	2	6	2	
	6	30	2	4	1	2	7	2	4	1	
24	1	9	2	3	5	3	29	15	19	28	
	2	18	1	2	4	3	28	14	18	28	
	3	19	1	2	3	3	28	12	14	27	
	4	27	1	2	3	2	28	10	13	26	
	5	28	1	2	2	2	26	7	12	25	
	6	29	1	2	2	1	26	3	9	24	
25	1	7	5	3	4	4	20	10	23	26	
	2	22	4	3	4	3	16	9	21	22	
	3	24	4	3	4	3	14	7	19	21	
	4	25	4	2	4	2	12	4	19	17	
	5	27	4	2	4	2	4	4	16	11	
	6	30	4	2	4	1	4	1	15	10	
26	1	2	4	4	5	3	5	7	15	16	
	2	3	4	4	4	2	5	6	14	15	
	3	11	4	4	3	2	5	6	13	12	
	4	16	3	4	3	2	5	6	13	11	
	5	20	3	4	3	2	5	5	11	8	
	6	28	3	4	2	2	5	4	11	6	
27	1	3	4	2	2	2	12	25	11	18	
	2	11	3	2	2	2	9	25	9	18	
	3	18	3	2	2	2	9	20	8	17	
	4	19	3	2	2	2	7	18	7	15	
	5	26	1	2	2	2	5	15	7	14	
	6	27	1	2	2	2	3	14	5	14	
28	1	4	5	5	3	3	25	10	20	14	
	2	8	4	3	2	2	21	9	17	12	
	3	22	4	3	2	2	18	9	15	9	
	4	23	4	3	2	1	14	8	12	7	
	5	28	3	2	1	1	10	8	10	6	
	6	30	3	1	1	1	8	8	7	4	
29	1	5	4	4	4	5	24	28	24	14	
	2	6	4	4	4	4	23	28	23	13	
	3	11	4	4	3	4	21	27	19	13	
	4	12	4	4	3	4	20	27	15	13	
	5	17	4	4	2	3	20	26	12	12	
	6	30	4	4	2	3	19	25	11	12	
30	1	6	5	3	5	5	15	23	24	4	
	2	7	5	2	4	4	15	18	17	3	
	3	8	5	2	3	4	14	13	15	3	
	4	21	5	1	3	4	12	9	9	3	
	5	23	5	1	2	4	11	9	6	3	
	6	28	5	1	2	4	11	5	3	3	
31	1	1	4	4	4	5	23	17	17	17	
	2	2	4	3	4	4	22	16	16	14	
	3	18	4	3	4	4	21	16	15	11	
	4	24	4	3	4	3	19	16	12	10	
	5	26	4	2	4	3	17	16	12	8	
	6	28	4	2	4	3	16	16	9	3	
32	1	1	5	5	5	4	25	20	30	25	
	2	2	4	5	4	4	23	19	26	24	
	3	3	4	5	4	4	22	17	19	22	
	4	8	3	5	3	3	19	16	14	22	
	5	20	3	5	2	3	18	16	11	20	
	6	25	2	5	2	3	17	15	10	19	
33	1	4	3	1	4	4	28	16	12	8	
	2	9	3	1	3	3	24	13	11	7	
	3	12	3	1	3	3	21	12	11	7	
	4	14	3	1	2	3	19	10	9	7	
	5	17	3	1	2	3	16	8	8	7	
	6	21	3	1	1	3	12	7	7	7	
34	1	3	4	1	1	4	14	27	23	24	
	2	10	3	1	1	3	12	25	22	20	
	3	15	3	1	1	3	9	24	20	17	
	4	20	2	1	1	3	7	23	19	15	
	5	21	2	1	1	3	7	22	19	12	
	6	22	2	1	1	3	5	22	18	10	
35	1	14	3	4	1	1	22	22	26	25	
	2	19	3	4	1	1	21	22	25	21	
	3	23	3	3	1	1	18	21	25	20	
	4	24	3	3	1	1	16	20	25	15	
	5	25	3	3	1	1	15	17	25	12	
	6	27	3	2	1	1	13	17	25	6	
36	1	5	3	3	2	2	26	16	21	18	
	2	8	3	2	2	2	26	15	21	16	
	3	14	3	2	2	2	25	15	21	15	
	4	15	2	2	2	2	25	15	21	13	
	5	23	2	2	2	2	25	15	21	12	
	6	25	2	2	2	2	24	15	21	10	
37	1	1	4	3	1	3	30	15	22	7	
	2	8	4	3	1	3	28	14	20	7	
	3	12	4	3	1	3	27	14	16	6	
	4	13	4	2	1	2	26	13	15	4	
	5	26	3	2	1	2	25	13	14	2	
	6	28	3	2	1	2	23	13	11	1	
38	1	7	4	4	1	4	12	13	21	23	
	2	8	3	4	1	4	10	13	20	22	
	3	15	3	4	1	4	9	11	19	22	
	4	16	2	3	1	4	7	9	19	21	
	5	17	2	3	1	4	6	5	17	21	
	6	26	2	3	1	4	5	5	17	20	
39	1	3	5	2	2	4	17	24	28	18	
	2	10	3	2	1	4	16	23	28	18	
	3	19	3	2	1	4	16	18	28	18	
	4	21	3	2	1	4	15	16	28	18	
	5	22	1	2	1	4	15	12	28	18	
	6	27	1	2	1	4	14	10	28	18	
40	1	11	4	3	3	1	17	20	11	22	
	2	13	4	3	3	1	15	18	10	22	
	3	24	4	3	2	1	14	15	10	18	
	4	28	4	3	2	1	13	12	8	17	
	5	29	3	3	1	1	12	10	8	14	
	6	30	3	3	1	1	12	7	6	11	
41	1	7	3	4	4	4	23	27	22	7	
	2	10	3	3	4	4	22	21	21	6	
	3	11	3	3	3	4	17	19	18	6	
	4	17	3	3	2	4	15	19	15	6	
	5	24	3	3	2	4	9	15	13	6	
	6	28	3	3	1	4	7	11	11	6	
42	1	11	2	2	4	3	24	14	17	29	
	2	12	2	2	4	3	22	13	14	26	
	3	24	2	2	4	3	16	11	14	25	
	4	25	2	2	3	3	14	11	12	25	
	5	26	2	2	3	3	11	8	8	24	
	6	27	2	2	2	3	9	6	5	23	
43	1	4	1	4	2	3	24	17	18	28	
	2	6	1	4	1	3	20	16	18	26	
	3	7	1	3	1	3	17	16	14	25	
	4	15	1	2	1	2	13	16	10	24	
	5	18	1	1	1	2	11	16	10	23	
	6	22	1	1	1	2	6	16	7	21	
44	1	1	3	4	2	5	30	30	23	17	
	2	9	3	4	2	4	29	23	19	16	
	3	11	3	4	2	4	27	18	15	15	
	4	14	3	4	2	3	27	15	13	13	
	5	15	3	4	2	3	26	11	9	13	
	6	16	3	4	2	3	24	4	4	12	
45	1	4	2	3	2	3	18	11	23	10	
	2	5	2	3	2	2	17	10	21	10	
	3	13	2	3	2	2	16	7	19	8	
	4	14	2	3	2	2	13	7	18	6	
	5	16	2	3	2	2	11	5	14	4	
	6	27	2	3	2	2	8	3	13	4	
46	1	7	3	3	4	4	13	10	7	25	
	2	8	3	3	3	3	11	9	6	24	
	3	9	3	3	2	3	10	8	5	23	
	4	19	3	2	2	3	9	7	3	20	
	5	24	3	2	1	3	8	5	3	19	
	6	30	3	1	1	3	7	4	1	18	
47	1	1	5	3	5	4	10	5	25	22	
	2	4	4	3	4	3	8	5	24	21	
	3	15	4	3	4	3	7	5	23	20	
	4	26	4	2	4	2	5	5	21	20	
	5	27	3	2	4	1	4	5	19	19	
	6	30	3	2	4	1	2	5	16	18	
48	1	1	2	5	2	5	22	20	26	27	
	2	16	2	4	2	3	22	19	25	25	
	3	17	2	4	2	3	21	19	20	25	
	4	22	1	4	2	2	21	18	20	24	
	5	24	1	4	2	1	19	16	15	23	
	6	29	1	4	2	1	19	16	15	22	
49	1	2	2	2	3	1	29	19	25	19	
	2	3	2	2	2	1	26	16	21	17	
	3	11	2	2	2	1	21	14	18	15	
	4	12	2	2	2	1	19	12	13	10	
	5	24	1	2	2	1	18	7	7	10	
	6	27	1	2	2	1	16	5	1	5	
50	1	1	1	1	3	3	11	27	24	11	
	2	2	1	1	3	3	11	23	22	10	
	3	6	1	1	3	3	10	21	18	10	
	4	7	1	1	3	2	10	18	15	9	
	5	10	1	1	3	2	9	16	12	9	
	6	24	1	1	3	2	9	15	8	8	
51	1	9	4	1	4	4	25	8	27	13	
	2	11	4	1	4	4	23	7	26	12	
	3	20	4	1	4	3	23	7	25	10	
	4	21	4	1	4	3	21	6	25	10	
	5	27	4	1	4	2	19	6	24	8	
	6	28	4	1	4	2	17	5	23	8	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	22	20	20	20	718	570	684	650

************************************************************************
