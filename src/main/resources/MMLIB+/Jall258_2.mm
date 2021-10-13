jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	9		2 3 4 5 6 7 8 9 16 
2	9	7		26 23 19 17 14 12 11 
3	9	5		20 14 13 12 10 
4	9	6		33 26 19 18 15 13 
5	9	7		33 32 28 27 22 21 18 
6	9	6		33 25 24 20 15 13 
7	9	5		36 32 27 21 14 
8	9	4		32 25 21 14 
9	9	7		40 36 32 27 26 23 21 
10	9	7		35 32 30 29 28 25 22 
11	9	6		37 34 28 27 21 20 
12	9	7		40 36 35 34 32 27 21 
13	9	8		40 37 36 34 30 29 27 23 
14	9	6		37 35 30 28 24 22 
15	9	8		51 50 40 36 34 32 30 29 
16	9	6		37 35 34 30 27 24 
17	9	5		50 33 28 27 22 
18	9	3		35 25 24 
19	9	6		50 35 34 31 30 28 
20	9	8		50 48 47 46 40 36 35 31 
21	9	5		50 44 43 30 29 
22	9	11		51 49 48 47 46 45 42 40 39 38 34 
23	9	8		51 50 48 47 46 43 35 31 
24	9	6		51 50 47 44 43 29 
25	9	8		50 48 47 46 45 41 40 36 
26	9	7		51 50 49 47 45 42 34 
27	9	4		51 44 43 31 
28	9	7		51 46 45 44 43 42 38 
29	9	3		48 46 31 
30	9	5		49 47 46 42 41 
31	9	4		45 42 39 38 
32	9	3		43 38 37 
33	9	3		48 45 39 
34	9	2		44 43 
35	9	2		44 42 
36	9	2		49 44 
37	9	2		42 41 
38	9	1		41 
39	9	1		41 
40	9	1		43 
41	9	1		52 
42	9	1		52 
43	9	1		52 
44	9	1		52 
45	9	1		52 
46	9	1		52 
47	9	1		52 
48	9	1		52 
49	9	1		52 
50	9	1		52 
51	9	1		52 
52	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	1	6	22	26	28	24	8	
	2	6	6	20	26	26	22	8	
	3	8	5	18	25	26	18	8	
	4	14	5	14	22	25	17	8	
	5	15	4	12	21	23	16	8	
	6	25	3	12	21	22	11	8	
	7	26	3	8	20	20	11	8	
	8	27	3	6	17	19	6	8	
	9	29	2	5	16	17	5	8	
3	1	3	24	25	23	10	20	28	
	2	7	23	24	20	10	18	25	
	3	8	22	23	19	9	17	24	
	4	10	21	23	15	8	17	20	
	5	11	19	21	15	7	16	19	
	6	17	18	21	13	7	14	17	
	7	20	17	20	9	5	13	13	
	8	26	16	19	7	5	12	13	
	9	27	16	19	7	4	11	11	
4	1	6	20	5	11	4	27	10	
	2	7	20	4	9	3	25	10	
	3	11	20	4	9	3	25	9	
	4	12	20	4	9	2	25	10	
	5	15	19	3	8	2	23	10	
	6	18	19	3	7	2	23	10	
	7	26	19	2	7	1	22	10	
	8	27	19	1	7	1	22	10	
	9	28	19	1	6	1	21	10	
5	1	1	10	24	21	10	27	12	
	2	2	10	23	19	10	27	11	
	3	3	9	23	18	9	27	11	
	4	6	8	23	16	9	27	11	
	5	9	7	22	13	7	27	11	
	6	10	6	22	11	7	27	11	
	7	15	5	22	10	6	27	11	
	8	16	3	22	7	6	27	11	
	9	22	2	22	6	5	27	11	
6	1	1	15	8	23	17	18	27	
	2	6	15	7	22	16	18	24	
	3	7	15	7	20	15	16	22	
	4	8	15	7	20	15	12	21	
	5	9	14	6	19	15	9	16	
	6	15	14	6	18	14	9	14	
	7	18	13	6	18	13	7	14	
	8	23	13	5	17	13	3	10	
	9	25	13	5	16	13	3	7	
7	1	1	18	24	18	29	26	30	
	2	5	18	22	15	29	25	29	
	3	6	14	18	13	27	23	29	
	4	8	14	18	12	26	22	28	
	5	12	11	16	9	26	22	27	
	6	17	10	12	8	25	21	27	
	7	19	7	11	7	24	19	26	
	8	21	6	8	5	22	19	26	
	9	24	4	4	3	21	18	26	
8	1	1	20	23	18	19	11	22	
	2	3	20	23	15	16	9	21	
	3	4	18	23	15	15	9	21	
	4	6	17	22	12	15	7	21	
	5	13	15	22	12	13	7	21	
	6	14	14	22	9	13	5	21	
	7	22	14	21	9	11	5	21	
	8	25	12	21	7	10	3	21	
	9	30	11	21	6	10	3	21	
9	1	4	24	7	17	26	18	22	
	2	7	23	7	13	26	16	20	
	3	12	21	7	12	24	14	17	
	4	13	21	7	12	24	13	15	
	5	18	19	7	9	23	11	14	
	6	19	18	7	8	23	10	12	
	7	20	18	7	5	21	8	10	
	8	27	16	7	3	21	6	10	
	9	28	15	7	2	20	6	7	
10	1	1	24	10	10	20	28	29	
	2	4	23	9	10	19	27	29	
	3	8	21	9	9	18	26	27	
	4	14	20	8	9	17	23	26	
	5	21	18	8	7	17	23	25	
	6	23	15	8	7	16	21	25	
	7	24	14	7	7	16	19	23	
	8	28	11	7	5	14	19	22	
	9	29	9	7	5	14	18	22	
11	1	1	15	20	29	24	21	24	
	2	5	14	20	29	21	21	23	
	3	8	14	20	28	21	17	21	
	4	11	14	19	26	19	14	19	
	5	17	14	19	26	19	12	16	
	6	18	14	18	25	16	10	15	
	7	22	14	17	24	16	7	13	
	8	25	14	17	23	14	7	10	
	9	28	14	17	22	14	5	10	
12	1	4	2	18	19	14	7	18	
	2	9	2	18	17	13	7	18	
	3	10	2	18	17	11	7	18	
	4	14	2	18	14	9	7	18	
	5	15	1	17	14	9	7	17	
	6	19	1	17	11	7	7	17	
	7	22	1	17	9	5	7	16	
	8	24	1	17	8	3	7	16	
	9	29	1	17	8	2	7	16	
13	1	7	8	4	16	30	29	29	
	2	8	8	4	14	25	29	27	
	3	14	8	4	12	20	29	26	
	4	19	8	4	11	20	29	25	
	5	24	8	4	8	17	28	25	
	6	26	8	4	7	11	28	23	
	7	27	8	4	5	9	28	21	
	8	28	8	4	4	4	28	20	
	9	29	8	4	2	4	28	19	
14	1	10	22	23	22	15	21	14	
	2	14	22	22	20	13	20	14	
	3	15	21	21	18	13	18	14	
	4	20	20	19	17	13	17	14	
	5	21	19	19	12	11	16	13	
	6	27	19	18	11	11	15	13	
	7	28	18	18	9	11	15	13	
	8	29	17	16	6	9	13	12	
	9	30	17	16	4	9	13	12	
15	1	1	15	2	15	16	23	11	
	2	5	14	2	12	15	20	10	
	3	7	14	2	11	14	18	9	
	4	11	14	2	9	14	17	9	
	5	12	13	2	8	13	14	8	
	6	13	12	2	5	13	10	7	
	7	18	12	2	4	12	9	7	
	8	21	12	2	3	12	7	7	
	9	30	11	2	1	11	3	6	
16	1	3	2	14	7	17	22	19	
	2	9	2	13	6	17	22	19	
	3	11	2	13	6	16	21	19	
	4	18	2	11	5	13	19	19	
	5	23	1	10	5	12	17	19	
	6	24	1	9	4	11	16	18	
	7	27	1	9	4	10	14	18	
	8	28	1	7	3	9	14	18	
	9	30	1	7	3	8	13	18	
17	1	1	21	23	28	9	20	27	
	2	3	21	22	25	8	19	25	
	3	11	21	21	25	8	17	24	
	4	20	21	20	23	6	16	24	
	5	24	21	19	21	6	15	21	
	6	25	20	18	21	5	14	19	
	7	26	20	18	18	5	13	17	
	8	27	20	17	16	3	12	16	
	9	28	20	16	15	3	11	14	
18	1	1	15	19	29	11	13	25	
	2	7	15	19	28	10	12	22	
	3	11	12	19	26	10	12	21	
	4	12	10	19	25	9	11	19	
	5	14	9	19	24	8	11	17	
	6	17	8	19	24	7	10	17	
	7	19	4	19	22	7	9	16	
	8	21	3	19	21	5	9	14	
	9	27	2	19	20	5	9	12	
19	1	1	23	16	26	14	28	11	
	2	7	22	16	24	13	24	10	
	3	9	20	16	23	13	24	10	
	4	11	18	16	22	12	23	10	
	5	14	15	16	22	12	21	9	
	6	15	12	16	21	11	19	9	
	7	20	12	16	20	11	18	8	
	8	28	8	16	18	10	14	8	
	9	29	6	16	18	10	14	8	
20	1	2	21	16	15	27	23	28	
	2	8	20	14	15	26	21	26	
	3	9	20	13	11	26	21	24	
	4	12	20	11	9	24	20	23	
	5	13	19	10	8	24	18	22	
	6	14	19	10	7	23	17	20	
	7	16	19	9	4	21	16	19	
	8	23	18	7	3	20	15	19	
	9	24	18	6	1	20	14	18	
21	1	5	21	26	9	12	22	11	
	2	8	19	24	7	11	21	10	
	3	11	17	21	7	9	19	8	
	4	13	16	18	6	9	17	8	
	5	14	14	18	5	8	15	6	
	6	15	13	16	4	6	13	5	
	7	24	11	14	3	6	11	4	
	8	25	10	12	3	4	8	3	
	9	26	9	9	2	4	6	3	
22	1	5	25	22	23	30	21	25	
	2	11	24	20	19	29	20	22	
	3	15	22	20	18	29	19	22	
	4	16	19	16	17	29	18	20	
	5	18	18	15	13	28	17	16	
	6	21	17	11	11	28	14	15	
	7	24	14	9	10	28	13	12	
	8	25	13	9	7	28	12	10	
	9	26	10	6	6	28	12	8	
23	1	2	10	18	13	9	14	19	
	2	3	9	16	12	9	14	17	
	3	9	9	15	12	8	12	17	
	4	11	9	13	11	6	12	13	
	5	24	8	11	10	6	10	12	
	6	25	8	10	9	4	10	11	
	7	26	8	7	8	3	9	10	
	8	28	8	6	7	3	7	7	
	9	30	8	4	5	1	6	5	
24	1	2	9	20	28	9	25	25	
	2	3	9	19	25	9	24	22	
	3	4	8	17	25	8	22	19	
	4	5	7	13	24	6	21	16	
	5	8	6	11	22	6	19	14	
	6	9	6	9	20	4	17	13	
	7	12	4	7	20	4	14	10	
	8	13	4	5	18	2	14	4	
	9	30	3	4	17	1	12	2	
25	1	6	10	17	21	10	10	25	
	2	7	9	16	20	9	10	23	
	3	8	8	15	17	9	9	20	
	4	10	7	14	17	9	8	20	
	5	13	7	13	14	8	7	17	
	6	14	5	13	14	8	6	16	
	7	15	3	13	11	7	5	15	
	8	17	3	11	11	6	5	14	
	9	26	1	11	9	6	4	12	
26	1	2	15	16	30	11	11	3	
	2	3	14	15	29	10	9	2	
	3	9	12	12	29	10	9	2	
	4	11	12	11	28	8	8	2	
	5	15	11	9	27	7	8	1	
	6	24	10	7	27	5	7	1	
	7	25	8	4	27	4	7	1	
	8	27	7	4	26	3	7	1	
	9	30	7	1	26	2	6	1	
27	1	1	9	21	26	23	12	17	
	2	3	9	21	24	23	12	16	
	3	5	9	17	19	22	9	14	
	4	9	9	15	19	19	9	14	
	5	14	9	13	15	17	7	13	
	6	16	8	13	10	17	6	12	
	7	19	8	11	7	15	3	12	
	8	24	8	7	6	13	3	10	
	9	28	8	5	3	13	2	10	
28	1	4	23	10	29	12	20	24	
	2	6	21	8	22	10	20	23	
	3	14	19	7	20	10	16	21	
	4	19	14	6	19	9	16	19	
	5	20	14	5	13	7	13	18	
	6	23	10	4	11	6	10	17	
	7	24	8	4	10	6	8	15	
	8	29	5	2	4	4	4	14	
	9	30	3	2	1	4	2	11	
29	1	2	10	21	22	5	27	27	
	2	3	9	21	20	4	24	27	
	3	11	9	19	20	4	19	25	
	4	12	8	19	19	3	17	21	
	5	20	8	18	17	3	16	21	
	6	22	8	17	16	3	11	20	
	7	25	7	16	16	3	9	16	
	8	26	7	14	15	2	6	14	
	9	29	7	13	14	2	4	13	
30	1	5	25	24	25	13	20	14	
	2	6	25	22	25	12	19	13	
	3	13	24	19	23	12	19	13	
	4	17	24	18	22	12	19	12	
	5	18	23	17	22	11	18	11	
	6	21	22	13	21	11	18	8	
	7	25	22	12	21	10	18	8	
	8	29	20	11	19	10	18	6	
	9	30	20	8	19	10	18	6	
31	1	1	25	12	19	25	12	30	
	2	5	21	12	18	21	12	28	
	3	8	19	12	15	19	12	27	
	4	12	16	12	14	19	12	25	
	5	13	14	12	11	16	12	23	
	6	15	11	12	9	14	12	23	
	7	16	9	12	8	12	12	21	
	8	20	6	12	4	11	12	19	
	9	21	6	12	3	8	12	18	
32	1	7	20	10	26	28	20	22	
	2	8	19	8	25	25	18	21	
	3	9	18	8	25	22	18	21	
	4	11	18	6	24	21	18	19	
	5	12	17	6	23	19	17	19	
	6	15	17	5	23	17	16	18	
	7	16	16	4	22	16	16	17	
	8	20	16	4	21	14	16	15	
	9	30	15	3	20	12	15	15	
33	1	1	22	18	18	18	24	20	
	2	5	20	18	16	16	24	19	
	3	10	20	17	15	15	24	18	
	4	14	18	16	15	14	24	18	
	5	15	18	16	14	10	24	17	
	6	23	16	15	13	9	24	16	
	7	24	15	15	11	7	24	15	
	8	25	14	14	10	5	24	13	
	9	29	14	13	9	2	24	12	
34	1	3	18	22	26	21	23	22	
	2	5	15	19	25	19	18	19	
	3	11	15	18	25	15	17	17	
	4	17	13	14	25	14	16	14	
	5	18	11	12	25	13	12	13	
	6	19	10	11	24	10	11	9	
	7	22	9	9	24	8	9	6	
	8	24	7	6	24	6	8	3	
	9	26	6	5	24	3	6	3	
35	1	1	25	19	24	9	23	29	
	2	8	24	17	23	9	22	28	
	3	14	24	17	23	8	20	27	
	4	15	24	12	22	6	18	25	
	5	17	24	10	21	5	17	24	
	6	19	24	10	20	4	16	23	
	7	22	24	5	18	3	13	22	
	8	23	24	4	17	2	11	22	
	9	30	24	3	17	2	11	20	
36	1	5	15	2	20	24	5	15	
	2	6	13	2	19	21	5	15	
	3	7	13	2	19	17	5	13	
	4	8	11	2	19	17	5	12	
	5	11	11	2	19	14	5	12	
	6	15	9	1	19	11	5	11	
	7	21	7	1	19	9	5	10	
	8	22	7	1	19	6	5	10	
	9	26	6	1	19	2	5	9	
37	1	5	19	14	26	26	27	9	
	2	6	18	11	23	25	23	9	
	3	7	17	10	21	25	20	9	
	4	13	17	8	20	25	19	9	
	5	14	16	8	19	25	15	9	
	6	15	15	5	18	24	15	9	
	7	20	13	4	17	24	10	9	
	8	21	13	4	14	24	7	9	
	9	28	12	2	14	24	5	9	
38	1	5	25	21	24	16	12	12	
	2	8	23	20	23	16	11	11	
	3	15	21	20	20	16	10	9	
	4	16	19	19	18	16	10	9	
	5	19	18	19	16	15	9	8	
	6	20	17	18	15	15	8	7	
	7	23	14	18	11	14	8	6	
	8	25	13	17	11	14	7	6	
	9	26	12	17	7	14	6	5	
39	1	4	8	6	6	8	15	19	
	2	5	8	5	5	8	14	19	
	3	6	8	4	5	7	14	19	
	4	9	8	4	4	6	13	19	
	5	11	8	3	4	6	12	18	
	6	19	7	3	3	5	12	18	
	7	23	7	3	3	4	11	17	
	8	25	7	2	3	3	10	17	
	9	28	7	2	2	3	10	17	
40	1	3	25	17	15	11	30	20	
	2	6	22	14	14	9	23	19	
	3	7	20	11	12	8	20	17	
	4	8	19	9	11	7	17	14	
	5	11	18	9	9	7	14	13	
	6	21	17	6	7	5	12	11	
	7	24	15	5	6	5	9	10	
	8	28	13	3	2	3	6	9	
	9	29	11	1	1	3	2	7	
41	1	6	23	21	17	25	27	21	
	2	8	21	19	17	25	24	20	
	3	11	18	18	16	24	20	18	
	4	12	17	15	15	24	18	16	
	5	15	15	13	13	23	17	15	
	6	16	14	13	13	22	12	14	
	7	18	12	11	11	22	10	12	
	8	23	12	9	11	21	4	11	
	9	30	10	7	10	20	2	9	
42	1	4	19	10	11	30	25	23	
	2	6	16	9	10	28	23	21	
	3	9	16	8	9	26	22	20	
	4	11	15	7	8	23	21	17	
	5	13	14	6	7	21	18	13	
	6	17	13	6	6	21	17	13	
	7	24	12	5	6	19	15	9	
	8	25	10	4	5	16	14	7	
	9	26	10	3	4	16	13	4	
43	1	3	21	11	20	12	27	22	
	2	4	18	10	20	11	24	17	
	3	6	15	10	15	11	21	15	
	4	10	14	10	13	10	18	12	
	5	11	11	8	10	9	16	11	
	6	16	11	8	8	9	14	8	
	7	19	7	7	5	8	10	5	
	8	22	7	7	5	8	7	4	
	9	26	4	6	1	8	3	2	
44	1	1	25	6	22	8	18	18	
	2	3	20	6	22	8	18	17	
	3	6	18	5	22	8	18	17	
	4	10	17	5	21	8	18	17	
	5	16	14	4	21	8	18	16	
	6	17	13	4	21	8	18	15	
	7	27	8	3	21	8	18	15	
	8	28	6	3	20	8	18	14	
	9	29	5	3	20	8	18	14	
45	1	3	15	14	25	27	18	28	
	2	9	14	13	23	27	17	27	
	3	11	14	12	21	25	17	26	
	4	12	14	12	21	22	16	25	
	5	14	14	10	18	22	16	24	
	6	17	14	9	17	19	15	23	
	7	28	14	8	16	18	15	23	
	8	29	14	6	14	16	14	22	
	9	30	14	6	14	14	14	21	
46	1	3	14	18	13	23	8	20	
	2	4	14	16	13	22	7	18	
	3	7	13	16	11	22	7	17	
	4	11	13	14	10	21	6	17	
	5	16	11	13	9	20	6	16	
	6	17	11	12	7	19	6	15	
	7	23	10	11	7	18	5	14	
	8	26	9	10	5	17	5	12	
	9	30	9	9	5	16	5	11	
47	1	9	19	18	20	11	21	8	
	2	10	18	16	20	9	21	7	
	3	11	18	15	20	9	21	7	
	4	13	18	13	20	8	20	8	
	5	14	18	13	20	8	20	7	
	6	15	18	12	20	8	20	6	
	7	20	18	10	20	7	19	6	
	8	23	18	7	20	6	19	6	
	9	26	18	7	20	6	19	5	
48	1	4	24	14	17	24	26	28	
	2	6	20	13	15	23	24	28	
	3	10	19	12	12	21	23	28	
	4	13	17	11	11	20	23	28	
	5	17	15	9	10	20	21	28	
	6	19	12	8	8	19	19	28	
	7	25	9	8	7	19	17	28	
	8	26	9	7	6	18	15	28	
	9	27	6	6	3	17	14	28	
49	1	1	15	19	30	21	23	11	
	2	3	13	16	29	20	23	10	
	3	6	13	13	28	19	20	10	
	4	8	13	12	28	18	19	8	
	5	9	12	10	27	16	16	8	
	6	18	12	7	26	16	14	7	
	7	19	11	6	26	15	13	5	
	8	23	10	4	25	12	12	5	
	9	26	10	2	25	11	9	3	
50	1	4	16	11	28	22	27	27	
	2	5	14	10	28	22	25	22	
	3	7	14	10	27	22	23	22	
	4	8	13	10	26	22	22	18	
	5	12	12	9	26	22	22	17	
	6	21	11	9	26	22	19	14	
	7	24	11	8	25	22	18	11	
	8	25	10	7	24	22	18	9	
	9	29	9	7	24	22	16	7	
51	1	1	13	26	19	3	30	28	
	2	2	12	23	17	3	27	27	
	3	8	12	23	17	3	26	26	
	4	11	12	21	16	3	26	25	
	5	16	11	20	16	3	23	23	
	6	20	11	20	16	3	22	22	
	7	24	11	19	15	3	20	20	
	8	25	11	17	15	3	19	20	
	9	26	11	17	14	3	19	19	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	118	113	898	768	904	903

************************************************************************
