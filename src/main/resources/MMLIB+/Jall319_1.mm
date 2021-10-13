jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	4		2 4 5 6 
2	9	3		10 8 3 
3	9	6		22 19 17 14 13 9 
4	9	6		24 19 18 17 13 12 
5	9	4		16 14 11 10 
6	9	3		16 11 7 
7	9	5		24 22 21 17 14 
8	9	4		18 17 16 14 
9	9	6		26 24 20 18 16 15 
10	9	6		26 24 22 21 20 17 
11	9	4		26 18 17 15 
12	9	3		34 22 14 
13	9	4		26 20 16 15 
14	9	3		26 20 15 
15	9	5		35 31 30 27 25 
16	9	5		34 31 30 28 23 
17	9	4		34 30 27 23 
18	9	4		36 30 27 21 
19	9	2		34 20 
20	9	3		30 28 23 
21	9	4		35 34 29 28 
22	9	4		36 35 31 29 
23	9	4		36 35 32 29 
24	9	4		35 32 30 29 
25	9	3		36 29 28 
26	9	2		32 29 
27	9	1		28 
28	9	2		33 32 
29	9	3		39 37 33 
30	9	3		39 37 33 
31	9	2		40 32 
32	9	4		43 42 39 37 
33	9	6		47 43 42 41 40 38 
34	9	6		47 43 42 41 40 38 
35	9	2		39 37 
36	9	2		39 37 
37	9	3		47 41 38 
38	9	5		51 50 46 45 44 
39	9	5		51 50 46 45 44 
40	9	2		45 44 
41	9	3		51 50 48 
42	9	3		50 49 48 
43	9	2		48 45 
44	9	2		49 48 
45	9	1		49 
46	9	1		48 
47	9	1		48 
48	9	1		52 
49	9	1		52 
50	9	1		52 
51	9	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	4	21	24	18	23	28	23	29	23	
	2	7	20	22	18	23	28	23	29	23	
	3	9	19	22	17	20	28	22	29	21	
	4	10	19	20	15	18	28	20	29	21	
	5	15	17	18	15	17	28	20	29	18	
	6	16	15	16	15	16	28	20	28	18	
	7	20	14	16	13	15	28	18	28	16	
	8	24	13	14	13	11	28	18	28	15	
	9	26	12	12	12	10	28	17	28	14	
3	1	2	18	26	27	26	7	26	15	29	
	2	3	17	26	26	26	6	24	15	29	
	3	7	15	25	26	26	5	20	15	27	
	4	8	14	24	24	26	5	17	15	26	
	5	9	12	23	23	26	5	17	15	26	
	6	10	11	22	22	26	4	15	15	25	
	7	11	11	21	21	26	4	11	15	23	
	8	17	9	20	21	26	3	9	15	23	
	9	23	9	18	20	26	3	8	15	22	
4	1	6	15	18	17	22	20	20	24	23	
	2	7	14	18	17	21	20	20	23	22	
	3	13	14	14	17	20	19	20	22	22	
	4	14	14	14	17	19	19	19	20	21	
	5	15	12	12	17	18	18	19	19	21	
	6	20	12	9	17	17	17	18	19	21	
	7	21	11	5	17	15	16	18	17	20	
	8	22	10	3	17	14	15	17	16	20	
	9	28	10	2	17	14	15	17	15	20	
5	1	3	21	26	11	21	26	28	20	17	
	2	11	19	24	9	21	25	27	18	16	
	3	12	18	22	9	16	22	27	16	16	
	4	13	16	19	8	16	21	26	13	16	
	5	16	14	18	6	14	18	25	10	16	
	6	21	13	16	5	9	17	25	9	15	
	7	28	9	14	5	6	13	23	6	15	
	8	29	8	11	3	4	13	22	3	15	
	9	30	6	9	3	4	11	22	3	15	
6	1	1	21	11	25	24	15	28	9	19	
	2	3	19	9	22	23	13	25	8	18	
	3	4	18	8	22	23	13	21	8	18	
	4	5	15	8	21	23	12	19	8	17	
	5	14	14	6	17	22	9	15	7	16	
	6	17	13	4	17	22	7	13	7	16	
	7	25	11	3	14	21	6	8	6	16	
	8	27	10	3	14	21	4	8	6	15	
	9	30	8	1	12	21	4	2	6	15	
7	1	5	12	29	18	16	15	28	26	17	
	2	6	11	27	16	16	14	25	25	17	
	3	7	11	26	16	16	14	24	25	17	
	4	8	10	24	15	15	14	23	25	17	
	5	9	10	23	12	15	12	19	25	16	
	6	15	10	23	11	15	12	18	25	16	
	7	23	10	21	9	15	11	17	25	16	
	8	25	9	20	9	14	11	15	25	15	
	9	26	9	19	8	14	10	13	25	15	
8	1	7	11	4	18	7	7	27	19	19	
	2	8	11	3	17	6	7	24	17	18	
	3	14	11	3	16	5	7	20	16	16	
	4	18	11	3	14	5	6	18	13	13	
	5	20	10	3	12	4	5	15	13	9	
	6	21	10	2	12	4	5	12	11	7	
	7	22	10	2	10	3	5	10	11	7	
	8	23	10	2	8	3	4	7	8	5	
	9	27	10	2	7	2	4	6	8	1	
9	1	1	7	23	21	30	10	20	25	26	
	2	2	5	20	19	23	10	19	25	22	
	3	8	5	20	18	23	9	17	21	21	
	4	11	5	18	16	18	8	16	16	19	
	5	14	4	16	16	15	7	14	16	15	
	6	16	4	15	15	13	7	14	13	13	
	7	17	3	14	13	8	6	13	10	10	
	8	19	3	12	12	7	5	11	7	8	
	9	28	2	12	10	2	5	10	2	5	
10	1	1	15	28	24	29	17	29	19	29	
	2	3	14	27	24	28	16	29	16	28	
	3	13	11	25	24	28	15	29	15	26	
	4	15	9	25	24	27	13	29	15	23	
	5	16	9	21	24	27	12	28	12	21	
	6	23	7	21	23	26	11	28	11	21	
	7	24	6	18	23	26	10	28	9	18	
	8	27	5	17	23	24	9	28	9	17	
	9	28	3	15	23	24	9	28	7	16	
11	1	2	15	14	12	24	5	22	29	17	
	2	3	14	12	12	23	5	19	29	17	
	3	6	14	11	11	23	5	19	29	17	
	4	7	13	11	10	23	5	16	29	16	
	5	11	13	8	10	22	4	14	29	16	
	6	17	13	8	9	21	4	14	29	16	
	7	18	13	7	8	21	4	13	29	16	
	8	21	12	5	7	21	3	10	29	15	
	9	22	12	3	7	20	3	10	29	15	
12	1	2	27	27	25	20	23	22	22	30	
	2	10	25	23	23	17	22	22	21	27	
	3	11	22	22	20	16	22	20	17	24	
	4	16	20	22	20	15	22	19	15	22	
	5	17	19	19	17	15	22	19	14	22	
	6	18	18	17	15	14	22	18	10	18	
	7	19	15	16	12	13	22	17	8	17	
	8	24	14	13	12	12	22	17	6	14	
	9	30	13	12	9	10	22	16	5	13	
13	1	2	15	20	20	27	24	24	5	24	
	2	12	14	18	20	23	19	23	5	23	
	3	15	12	16	20	21	19	23	5	22	
	4	19	11	14	19	21	16	23	5	21	
	5	21	9	13	19	18	13	22	5	21	
	6	22	8	13	19	17	11	22	5	18	
	7	23	7	10	19	14	8	21	5	18	
	8	25	5	9	18	12	5	21	5	16	
	9	26	4	9	18	10	3	20	5	15	
14	1	1	10	28	13	23	24	7	26	27	
	2	5	8	23	12	22	22	6	23	27	
	3	6	8	21	11	22	21	6	21	27	
	4	7	6	19	10	20	18	5	20	27	
	5	8	5	15	10	19	16	5	19	27	
	6	21	4	12	9	18	14	5	17	27	
	7	23	3	10	9	17	13	5	15	27	
	8	26	2	8	9	16	11	4	12	27	
	9	29	2	3	8	16	8	4	12	27	
15	1	5	22	22	26	23	27	28	16	20	
	2	7	22	21	25	22	27	27	15	18	
	3	11	21	20	23	21	27	27	15	16	
	4	12	19	20	20	21	27	27	14	13	
	5	20	17	19	20	18	27	27	13	11	
	6	21	16	19	16	18	27	26	12	10	
	7	22	16	18	13	16	27	26	10	8	
	8	23	14	18	11	15	27	26	9	6	
	9	24	14	17	10	15	27	26	8	4	
16	1	1	22	19	24	19	27	17	21	20	
	2	5	21	18	22	19	24	17	19	19	
	3	11	21	18	20	18	24	16	19	17	
	4	13	19	18	17	18	21	15	18	17	
	5	18	18	17	15	18	17	15	18	15	
	6	20	16	17	13	17	15	14	17	15	
	7	21	16	17	9	16	15	14	17	13	
	8	26	14	16	9	16	11	14	15	13	
	9	28	13	16	6	16	11	13	15	12	
17	1	6	26	26	22	9	25	23	10	28	
	2	7	26	25	22	8	20	21	8	25	
	3	14	23	24	22	8	18	18	8	24	
	4	16	20	23	22	7	14	17	8	22	
	5	17	19	23	22	7	13	13	7	19	
	6	18	17	23	22	7	11	11	6	17	
	7	22	15	22	22	6	8	11	6	16	
	8	23	13	22	22	6	5	8	5	12	
	9	24	12	21	22	5	2	6	4	12	
18	1	2	29	14	15	15	19	24	15	18	
	2	6	29	13	15	15	16	22	14	17	
	3	7	29	13	13	15	15	21	14	16	
	4	8	29	13	13	15	12	19	14	14	
	5	13	29	11	12	15	11	18	14	14	
	6	14	29	11	10	15	7	16	14	13	
	7	17	29	10	9	15	6	15	14	12	
	8	27	29	10	7	15	5	15	14	10	
	9	30	29	9	6	15	3	13	14	10	
19	1	1	28	29	17	26	5	16	8	23	
	2	3	24	28	15	26	5	14	7	22	
	3	11	23	26	15	25	5	13	6	22	
	4	13	19	24	15	24	5	11	6	22	
	5	14	15	24	14	23	5	11	4	21	
	6	15	13	21	14	21	5	9	4	21	
	7	22	11	20	13	21	5	6	3	20	
	8	24	7	19	13	19	5	6	2	20	
	9	27	5	17	12	19	5	5	1	20	
20	1	2	16	28	25	8	23	22	16	13	
	2	6	16	27	25	8	19	22	14	13	
	3	11	14	26	25	8	18	20	14	13	
	4	16	14	26	25	8	16	20	13	13	
	5	19	12	25	24	7	16	19	11	13	
	6	20	11	24	24	7	13	18	11	13	
	7	25	10	22	23	7	12	16	10	13	
	8	29	10	21	23	7	10	15	8	13	
	9	30	8	20	23	7	8	15	8	13	
21	1	2	14	22	20	26	19	24	10	22	
	2	5	14	22	17	23	18	23	10	17	
	3	6	14	19	16	22	18	20	10	16	
	4	7	13	17	14	18	17	19	10	15	
	5	8	13	17	10	17	17	16	10	11	
	6	11	12	15	9	16	16	16	10	10	
	7	18	12	13	6	13	16	13	10	9	
	8	21	11	10	3	11	15	12	10	5	
	9	28	11	10	1	9	15	11	10	3	
22	1	7	19	9	25	17	30	29	23	24	
	2	8	18	8	24	15	29	24	20	24	
	3	11	16	8	22	14	29	23	19	23	
	4	18	14	7	16	11	29	21	18	22	
	5	21	11	7	16	10	28	20	17	21	
	6	23	9	6	12	10	28	16	16	19	
	7	24	7	6	8	8	28	16	15	18	
	8	28	4	5	5	4	27	14	14	16	
	9	30	3	5	4	4	27	11	13	15	
23	1	4	22	20	29	25	11	12	14	13	
	2	6	21	19	27	24	11	12	13	11	
	3	9	21	19	27	20	11	12	13	11	
	4	12	20	19	27	19	10	11	12	11	
	5	19	18	19	25	15	9	11	11	9	
	6	21	18	18	25	13	9	10	10	9	
	7	26	16	18	24	8	9	10	9	8	
	8	27	16	18	23	7	8	9	7	8	
	9	29	14	18	23	5	8	9	7	7	
24	1	2	28	5	27	19	17	17	24	20	
	2	3	25	5	27	18	14	15	22	19	
	3	5	22	5	27	17	13	15	21	19	
	4	8	20	5	26	15	11	12	20	19	
	5	9	18	5	26	15	10	12	19	19	
	6	10	16	5	26	13	10	10	18	19	
	7	22	13	5	25	13	8	9	18	19	
	8	26	11	5	25	12	6	7	16	19	
	9	28	9	5	25	11	5	6	16	19	
25	1	5	16	11	24	23	15	27	25	16	
	2	6	16	11	22	23	15	26	25	14	
	3	7	16	11	20	23	15	26	25	14	
	4	8	16	10	16	23	15	25	25	12	
	5	9	16	10	16	23	15	25	25	11	
	6	10	16	10	11	23	15	25	25	11	
	7	25	16	9	11	23	15	24	25	9	
	8	26	16	9	5	23	15	24	25	9	
	9	27	16	9	4	23	15	23	25	8	
26	1	3	27	21	13	27	23	27	27	9	
	2	10	26	21	12	25	22	27	25	9	
	3	13	25	19	11	24	22	26	24	9	
	4	21	23	18	10	24	21	23	19	9	
	5	22	20	15	9	23	20	22	16	9	
	6	23	18	13	9	21	19	20	12	9	
	7	26	17	12	9	20	18	18	10	9	
	8	27	15	10	8	20	16	17	6	9	
	9	28	13	9	7	19	15	16	6	9	
27	1	1	21	22	25	16	25	20	20	23	
	2	14	20	20	25	14	24	18	20	22	
	3	15	19	17	25	12	23	18	18	22	
	4	19	19	14	25	11	22	16	18	22	
	5	20	18	14	25	9	20	15	16	21	
	6	21	18	9	25	8	20	13	14	20	
	7	26	17	8	25	4	17	12	13	20	
	8	29	16	5	25	2	16	11	12	19	
	9	30	16	2	25	2	15	11	10	19	
28	1	2	3	23	13	25	18	22	28	18	
	2	3	3	23	13	23	17	19	24	17	
	3	8	3	21	13	23	17	19	21	15	
	4	12	3	17	13	22	16	14	18	14	
	5	20	2	14	12	21	15	14	15	12	
	6	21	2	13	12	21	15	10	14	12	
	7	22	1	11	12	21	15	9	12	10	
	8	23	1	8	11	20	14	7	10	9	
	9	27	1	6	11	19	14	4	6	9	
29	1	1	27	15	23	28	28	14	2	19	
	2	5	26	13	21	27	28	13	2	18	
	3	7	26	13	19	25	27	13	2	16	
	4	10	26	13	19	23	27	11	2	16	
	5	11	25	12	18	20	26	11	2	14	
	6	12	25	11	15	19	26	10	2	14	
	7	20	25	11	15	18	25	10	2	13	
	8	25	25	10	13	14	25	8	2	11	
	9	26	25	10	12	13	25	8	2	11	
30	1	1	23	20	23	24	13	27	28	20	
	2	2	22	19	22	22	10	24	25	17	
	3	3	21	18	21	19	9	22	25	17	
	4	5	17	18	21	19	8	19	23	14	
	5	6	15	16	20	16	8	16	22	14	
	6	7	12	16	18	16	6	14	19	11	
	7	13	10	16	16	14	5	11	17	9	
	8	14	9	14	16	12	4	10	16	8	
	9	26	7	14	14	11	4	6	15	8	
31	1	4	22	26	15	12	27	9	23	14	
	2	5	22	24	15	11	27	9	22	13	
	3	6	22	23	14	11	26	9	20	13	
	4	7	22	22	14	9	24	9	19	11	
	5	14	22	22	13	8	24	8	19	10	
	6	17	22	20	13	6	23	8	17	9	
	7	20	22	19	12	6	23	8	15	8	
	8	23	22	19	12	3	21	8	14	8	
	9	25	22	18	12	3	21	8	13	6	
32	1	4	29	15	27	26	5	4	16	21	
	2	10	26	14	25	25	4	3	13	20	
	3	12	24	14	25	21	3	3	12	18	
	4	13	22	13	22	20	3	2	11	14	
	5	15	21	11	21	18	3	2	9	14	
	6	20	16	10	19	13	2	2	9	12	
	7	23	16	9	19	13	2	2	6	10	
	8	28	14	9	17	10	1	1	5	7	
	9	29	10	8	16	8	1	1	4	6	
33	1	10	21	21	18	15	2	20	18	28	
	2	14	20	21	17	14	2	20	16	24	
	3	17	18	20	15	14	2	20	16	20	
	4	18	17	20	13	13	2	19	15	20	
	5	19	14	20	12	12	1	19	15	14	
	6	21	14	19	10	12	1	19	14	13	
	7	24	12	18	7	11	1	18	14	10	
	8	26	8	18	7	11	1	18	13	8	
	9	28	8	18	4	11	1	18	13	5	
34	1	5	16	12	23	28	22	1	10	28	
	2	8	15	11	22	24	22	1	9	28	
	3	12	14	11	20	21	20	1	8	27	
	4	17	12	11	18	20	18	1	7	25	
	5	18	11	10	15	17	16	1	6	24	
	6	19	11	10	14	15	16	1	6	22	
	7	20	9	10	11	10	15	1	4	22	
	8	23	8	9	9	10	12	1	4	20	
	9	27	8	9	8	5	12	1	3	20	
35	1	1	15	26	9	30	23	23	24	8	
	2	3	15	25	9	30	23	21	22	7	
	3	4	13	21	9	30	20	18	22	6	
	4	5	11	21	8	30	16	18	20	5	
	5	7	10	18	8	30	13	14	19	4	
	6	12	9	17	8	30	10	13	19	4	
	7	17	7	15	7	30	10	11	18	3	
	8	18	6	13	7	30	6	8	17	3	
	9	28	5	11	7	30	2	8	16	2	
36	1	3	13	22	28	14	22	5	16	14	
	2	4	13	19	26	13	19	4	14	14	
	3	6	12	15	24	12	17	4	14	14	
	4	8	10	15	21	11	17	3	12	14	
	5	9	9	13	18	11	13	3	11	14	
	6	20	9	10	18	10	12	3	11	14	
	7	26	8	8	14	10	10	3	9	14	
	8	27	7	6	12	10	7	2	8	14	
	9	30	5	3	10	9	6	2	7	14	
37	1	4	20	30	28	15	4	27	16	26	
	2	7	16	30	26	13	4	22	14	23	
	3	10	15	30	26	12	4	21	14	23	
	4	17	14	30	23	12	4	18	13	21	
	5	20	11	30	22	11	3	14	12	18	
	6	24	11	30	22	10	3	10	12	17	
	7	27	10	30	19	9	3	10	11	16	
	8	28	8	30	19	9	2	7	10	12	
	9	30	6	30	17	8	2	4	10	12	
38	1	1	16	22	27	20	26	17	27	17	
	2	3	14	21	27	20	26	16	26	16	
	3	5	14	21	27	19	22	15	26	15	
	4	6	12	21	27	19	20	14	26	14	
	5	10	12	21	27	18	19	12	25	14	
	6	11	11	21	27	17	18	11	25	13	
	7	19	11	21	27	17	14	10	25	12	
	8	20	9	21	27	16	12	10	25	10	
	9	30	9	21	27	15	10	8	25	10	
39	1	3	22	28	11	25	23	12	28	9	
	2	6	21	27	10	19	22	10	26	9	
	3	7	19	21	10	19	20	9	25	9	
	4	12	18	18	9	15	20	8	24	9	
	5	13	17	17	9	12	19	8	23	9	
	6	17	16	12	8	11	19	8	21	9	
	7	19	15	12	7	8	18	6	20	9	
	8	24	15	6	7	7	17	6	19	9	
	9	28	14	5	7	4	16	5	18	9	
40	1	5	14	8	21	21	23	28	29	25	
	2	6	14	7	19	17	22	27	29	24	
	3	10	13	6	18	15	22	27	29	19	
	4	11	12	6	17	14	22	27	28	16	
	5	14	12	5	13	12	22	27	28	16	
	6	16	11	5	11	10	22	26	28	12	
	7	17	10	5	9	8	22	26	27	8	
	8	19	9	4	8	5	22	26	27	7	
	9	29	9	4	5	2	22	26	27	3	
41	1	4	25	13	8	21	15	16	10	19	
	2	5	24	11	6	19	14	15	10	19	
	3	14	23	11	6	15	12	15	9	19	
	4	24	23	9	4	14	12	15	8	18	
	5	25	23	9	4	13	11	15	7	18	
	6	26	22	8	4	9	9	15	6	18	
	7	27	21	6	2	8	9	15	4	18	
	8	28	21	6	2	5	7	15	3	17	
	9	29	21	5	1	4	7	15	3	17	
42	1	1	27	13	25	23	14	21	28	25	
	2	5	25	12	22	23	13	18	26	24	
	3	14	22	12	21	23	10	16	24	22	
	4	15	21	12	19	23	9	16	21	21	
	5	16	19	11	16	23	7	12	21	21	
	6	17	19	11	15	23	7	12	20	19	
	7	18	16	10	13	23	4	9	18	19	
	8	19	15	10	11	23	2	8	16	17	
	9	22	14	10	8	23	1	6	14	17	
43	1	2	22	16	22	28	18	24	27	25	
	2	3	20	14	22	25	16	24	26	24	
	3	7	18	13	21	24	16	23	25	23	
	4	11	16	11	21	23	16	22	24	21	
	5	14	14	9	20	22	15	20	24	21	
	6	20	13	9	19	20	14	19	23	19	
	7	21	11	6	18	20	14	19	21	19	
	8	23	11	5	17	18	13	17	21	17	
	9	24	8	3	17	17	13	16	19	17	
44	1	2	20	19	19	26	27	21	26	17	
	2	4	19	17	19	26	24	18	21	16	
	3	5	17	16	17	25	23	15	20	15	
	4	6	15	13	17	23	21	14	17	14	
	5	10	11	11	15	22	21	11	17	14	
	6	11	9	10	14	22	18	10	15	14	
	7	12	7	7	13	20	18	8	11	13	
	8	20	5	7	10	19	16	6	11	13	
	9	30	4	4	10	19	15	2	8	12	
45	1	4	25	25	29	12	23	20	10	15	
	2	6	23	24	28	11	20	19	10	14	
	3	7	21	21	28	11	19	19	10	13	
	4	14	19	20	28	11	18	18	10	13	
	5	17	14	19	28	10	16	18	9	12	
	6	18	14	17	28	10	12	18	9	11	
	7	22	11	15	28	9	11	17	8	9	
	8	23	10	11	28	9	8	17	8	9	
	9	25	7	11	28	9	8	17	8	8	
46	1	2	18	27	23	22	6	20	12	22	
	2	3	16	25	20	19	4	17	11	20	
	3	9	15	22	18	17	4	17	10	19	
	4	13	14	21	16	16	4	15	10	15	
	5	16	12	19	14	15	3	13	10	14	
	6	23	7	18	13	13	3	10	9	13	
	7	25	5	18	13	13	2	10	9	10	
	8	26	5	15	11	11	1	8	8	8	
	9	29	3	14	8	10	1	6	8	7	
47	1	1	14	25	12	23	22	13	16	20	
	2	2	13	23	12	19	22	11	16	19	
	3	3	11	23	10	18	22	11	15	19	
	4	4	11	21	9	18	22	9	14	19	
	5	12	9	19	7	15	21	7	14	18	
	6	20	8	18	6	14	21	6	14	18	
	7	21	8	18	6	13	21	5	13	18	
	8	24	6	17	4	9	20	5	12	18	
	9	27	6	16	3	8	20	3	12	18	
48	1	10	22	19	14	26	18	25	10	11	
	2	13	20	19	14	24	17	24	9	11	
	3	14	19	19	12	23	15	21	8	11	
	4	16	17	19	11	20	14	18	7	10	
	5	17	15	18	11	17	11	15	7	10	
	6	18	14	18	9	13	11	12	6	10	
	7	26	12	18	9	11	8	10	5	10	
	8	27	8	18	7	7	8	8	4	9	
	9	30	8	18	7	4	7	4	4	9	
49	1	12	18	28	21	22	8	3	17	14	
	2	13	18	26	20	21	7	3	14	14	
	3	17	17	26	19	21	6	3	12	14	
	4	18	16	25	18	21	6	3	12	14	
	5	19	15	25	18	20	5	3	10	14	
	6	20	14	24	17	20	5	3	7	14	
	7	21	12	24	16	19	3	3	5	14	
	8	22	11	22	15	19	3	3	3	14	
	9	24	11	22	13	19	2	3	3	14	
50	1	2	28	18	25	13	26	19	13	9	
	2	3	25	16	21	12	25	18	11	9	
	3	10	21	16	20	12	23	18	10	9	
	4	12	21	14	18	11	23	18	9	9	
	5	20	18	11	14	9	21	18	8	9	
	6	21	15	10	13	8	20	18	5	9	
	7	22	14	6	12	8	19	18	3	9	
	8	24	11	5	9	6	17	18	3	9	
	9	27	11	4	7	5	15	18	1	9	
51	1	5	16	22	21	23	11	29	25	11	
	2	7	16	20	20	22	10	28	23	10	
	3	8	16	17	19	21	8	27	23	8	
	4	9	16	16	18	21	7	24	22	7	
	5	12	16	14	17	19	7	23	22	7	
	6	13	16	13	17	19	7	23	22	7	
	7	16	16	10	16	17	6	21	21	5	
	8	20	16	10	15	16	4	20	20	5	
	9	27	16	7	13	16	4	18	20	4	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	84	79	84	83	610	661	656	689

************************************************************************
