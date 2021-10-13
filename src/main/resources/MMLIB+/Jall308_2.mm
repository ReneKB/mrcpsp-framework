jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	9		2 3 4 5 6 7 10 11 13 
2	9	8		31 24 23 18 17 15 14 9 
3	9	6		31 24 19 14 9 8 
4	9	9		31 24 23 21 20 19 18 16 12 
5	9	3		20 16 8 
6	9	7		34 32 31 20 18 16 15 
7	9	4		20 18 15 12 
8	9	5		34 28 26 18 12 
9	9	8		35 34 32 30 28 25 22 16 
10	9	4		33 28 18 12 
11	9	5		31 28 26 24 17 
12	9	7		35 32 30 29 27 25 22 
13	9	6		35 30 29 28 25 22 
14	9	8		42 39 38 36 35 29 27 26 
15	9	6		37 35 29 28 26 25 
16	9	6		39 38 36 29 27 26 
17	9	10		51 48 42 40 39 37 36 34 32 29 
18	9	8		48 42 40 39 37 36 29 25 
19	9	8		48 42 39 37 36 35 29 25 
20	9	7		50 48 39 36 33 30 27 
21	9	5		51 42 38 29 26 
22	9	9		51 48 47 44 42 40 39 37 36 
23	9	5		48 47 46 37 33 
24	9	5		48 46 41 40 35 
25	9	6		51 47 45 44 41 38 
26	9	3		50 48 33 
27	9	5		51 47 44 40 37 
28	9	5		49 44 41 40 39 
29	9	6		50 47 46 45 44 43 
30	9	4		47 44 40 38 
31	9	3		40 38 37 
32	9	5		49 46 45 44 43 
33	9	4		45 44 41 40 
34	9	4		49 45 44 41 
35	9	4		50 45 44 43 
36	9	3		49 46 43 
37	9	2		45 43 
38	9	2		46 43 
39	9	2		46 43 
40	9	1		43 
41	9	1		43 
42	9	1		43 
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
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	1	25	21	16	29	28	27	27	6	
	2	5	25	21	16	25	27	25	21	6	
	3	6	24	18	16	25	25	24	20	6	
	4	7	23	15	16	23	20	21	18	5	
	5	10	23	13	16	21	18	21	14	4	
	6	21	22	10	15	21	16	20	12	4	
	7	22	22	9	15	19	13	18	11	4	
	8	23	20	6	15	18	13	17	5	3	
	9	30	20	4	15	15	11	15	3	3	
3	1	4	29	28	11	9	25	14	13	30	
	2	10	29	24	11	8	25	13	12	29	
	3	11	29	22	9	8	25	13	11	29	
	4	13	29	21	9	8	25	12	11	29	
	5	16	28	19	6	8	25	12	11	29	
	6	18	28	17	5	8	25	12	10	29	
	7	19	27	15	5	8	25	11	10	29	
	8	21	27	13	3	8	25	11	9	29	
	9	24	27	12	3	8	25	11	9	29	
4	1	1	23	25	9	22	14	27	15	29	
	2	9	21	23	8	21	13	26	14	25	
	3	12	19	22	8	20	12	24	14	23	
	4	17	18	22	7	19	10	20	14	19	
	5	19	16	20	6	17	10	18	14	18	
	6	22	15	19	5	17	8	15	14	14	
	7	28	14	19	3	15	8	13	14	12	
	8	29	10	17	3	15	6	12	14	11	
	9	30	9	17	1	14	6	10	14	7	
5	1	9	21	29	13	26	26	10	20	20	
	2	10	19	27	13	25	25	9	19	20	
	3	17	16	26	11	23	24	9	16	18	
	4	19	15	25	10	21	23	9	13	17	
	5	20	11	23	10	20	20	8	11	13	
	6	22	9	21	10	19	19	8	10	12	
	7	24	8	20	9	16	17	7	6	10	
	8	25	5	19	8	15	15	7	4	8	
	9	26	2	17	7	13	14	7	2	8	
6	1	2	12	22	19	29	9	29	11	14	
	2	3	11	20	19	28	9	28	10	13	
	3	4	11	18	19	25	9	27	10	12	
	4	7	9	16	18	23	9	25	9	11	
	5	14	7	14	18	23	9	25	8	10	
	6	22	6	13	18	21	8	25	7	8	
	7	23	4	11	17	19	8	24	6	6	
	8	24	2	10	17	16	8	22	6	4	
	9	25	2	7	17	15	8	22	5	4	
7	1	1	23	17	28	26	28	23	24	11	
	2	5	21	15	26	24	25	21	23	10	
	3	6	20	14	23	23	25	19	21	9	
	4	8	18	12	22	23	24	18	18	8	
	5	16	16	12	21	21	22	14	17	7	
	6	17	15	11	19	21	22	14	16	6	
	7	20	14	8	18	20	21	13	12	5	
	8	24	12	8	15	18	19	11	11	4	
	9	26	12	6	14	18	19	9	8	2	
8	1	2	14	16	19	19	27	15	20	21	
	2	5	13	13	17	17	26	13	19	20	
	3	7	13	12	17	17	23	12	19	20	
	4	8	13	11	14	15	21	12	18	20	
	5	9	13	9	11	13	21	10	18	19	
	6	12	13	9	10	12	19	10	18	18	
	7	15	13	6	9	10	16	8	17	17	
	8	18	13	5	7	9	14	7	17	16	
	9	23	13	5	4	8	14	7	17	16	
9	1	1	12	24	17	13	27	8	28	11	
	2	2	11	23	16	12	26	7	27	11	
	3	9	10	23	14	11	25	6	23	9	
	4	11	9	23	14	10	24	6	22	9	
	5	18	8	22	13	9	23	6	18	8	
	6	19	8	21	11	8	21	5	17	7	
	7	20	6	21	11	7	20	5	16	5	
	8	21	6	21	10	7	20	4	11	4	
	9	25	5	20	8	5	19	4	10	4	
10	1	2	20	25	27	21	12	22	13	24	
	2	5	18	24	24	20	10	21	13	23	
	3	6	17	24	24	20	9	21	13	22	
	4	7	13	24	23	18	8	19	13	22	
	5	13	13	22	21	17	7	18	12	21	
	6	14	10	22	21	16	6	16	12	20	
	7	17	8	22	19	16	5	16	11	19	
	8	19	6	20	19	15	4	14	11	18	
	9	24	3	20	18	13	2	13	11	18	
11	1	3	15	17	29	13	22	22	7	10	
	2	4	12	14	26	12	20	20	7	9	
	3	5	12	12	23	10	18	19	7	8	
	4	6	11	12	19	10	18	16	7	6	
	5	13	9	9	17	9	16	14	7	5	
	6	16	9	9	13	8	12	13	7	5	
	7	17	8	7	11	7	12	12	7	4	
	8	18	6	6	10	7	8	8	7	2	
	9	26	6	3	6	6	6	7	7	1	
12	1	2	28	11	22	19	23	26	21	13	
	2	3	25	11	20	17	22	23	20	13	
	3	4	23	9	18	17	19	23	20	13	
	4	7	19	7	16	15	17	22	19	13	
	5	15	15	6	15	15	14	20	19	12	
	6	21	14	6	13	13	11	18	19	12	
	7	23	11	4	11	12	9	16	19	12	
	8	28	8	2	10	12	4	13	18	11	
	9	29	8	1	8	11	1	12	18	11	
13	1	4	21	24	11	3	23	19	26	28	
	2	13	18	23	11	3	23	18	24	24	
	3	14	17	19	10	3	23	16	24	20	
	4	15	16	17	10	3	23	15	24	18	
	5	17	13	15	9	2	23	13	23	14	
	6	25	13	13	9	2	22	13	22	11	
	7	26	12	11	8	1	22	11	22	11	
	8	27	10	6	8	1	22	10	22	7	
	9	28	8	4	8	1	22	8	21	5	
14	1	6	25	20	19	25	23	13	10	14	
	2	10	25	19	17	21	21	13	10	13	
	3	16	23	18	15	19	18	13	10	11	
	4	17	19	17	12	16	16	12	10	11	
	5	18	18	16	10	13	15	12	10	9	
	6	20	17	15	7	10	13	11	10	7	
	7	21	15	14	6	9	10	11	10	6	
	8	24	13	12	5	7	9	10	10	4	
	9	29	12	12	3	4	8	10	10	1	
15	1	1	11	18	22	11	21	23	9	25	
	2	7	10	16	18	11	20	23	9	23	
	3	9	9	14	17	10	18	22	8	23	
	4	10	9	14	16	10	17	21	7	21	
	5	15	8	11	14	9	16	20	6	19	
	6	17	7	11	12	9	16	19	5	18	
	7	22	5	8	9	9	15	19	4	17	
	8	23	5	8	6	8	13	18	3	15	
	9	29	3	6	4	8	12	17	2	13	
16	1	9	4	10	21	22	13	8	19	24	
	2	11	4	9	19	22	13	7	17	23	
	3	13	4	8	18	22	13	6	16	22	
	4	15	4	7	16	22	13	5	16	19	
	5	21	4	7	15	22	13	5	15	18	
	6	22	4	6	14	22	13	4	14	17	
	7	24	4	5	12	22	13	4	14	15	
	8	27	4	4	11	22	13	3	12	15	
	9	28	4	3	8	22	13	3	12	14	
17	1	1	26	7	29	23	27	12	23	21	
	2	5	26	6	29	21	22	12	22	20	
	3	6	25	6	29	20	19	12	22	20	
	4	7	25	6	29	19	15	12	21	19	
	5	14	25	5	29	17	14	12	21	18	
	6	20	24	5	29	17	10	12	20	18	
	7	23	23	4	29	15	8	12	19	18	
	8	27	23	4	29	15	6	12	19	17	
	9	28	23	4	29	13	2	12	19	17	
18	1	6	6	18	20	7	25	17	18	22	
	2	7	6	16	16	6	23	17	17	20	
	3	8	6	15	14	6	22	16	16	18	
	4	18	6	14	12	6	20	15	15	18	
	5	19	6	13	10	5	17	15	14	16	
	6	20	6	12	7	5	17	15	12	15	
	7	21	6	12	6	4	15	14	10	14	
	8	23	6	11	3	4	12	14	9	14	
	9	29	6	10	2	4	9	13	9	13	
19	1	1	26	18	27	11	19	11	14	10	
	2	2	24	18	26	9	18	10	12	8	
	3	3	23	18	26	9	18	10	11	8	
	4	4	22	18	25	9	17	10	9	7	
	5	5	20	18	25	8	17	10	9	6	
	6	10	19	18	24	7	17	10	7	4	
	7	12	18	18	24	7	16	10	6	4	
	8	13	17	18	22	6	16	10	2	3	
	9	26	16	18	22	6	16	10	2	2	
20	1	9	27	16	22	24	20	27	16	19	
	2	11	26	16	19	23	20	26	13	17	
	3	12	25	15	17	22	16	25	13	16	
	4	16	24	14	16	21	15	23	11	13	
	5	17	24	12	14	20	14	23	10	11	
	6	18	23	11	11	19	11	21	10	11	
	7	21	23	10	10	17	8	21	8	8	
	8	29	22	8	5	16	5	20	8	5	
	9	30	21	7	3	15	3	19	6	4	
21	1	6	28	28	25	7	9	28	26	18	
	2	7	28	28	24	5	9	25	24	17	
	3	10	25	28	24	5	8	23	21	15	
	4	16	25	28	24	4	8	22	20	15	
	5	17	22	28	23	4	8	19	16	14	
	6	18	21	28	23	4	7	17	13	13	
	7	21	20	28	23	3	6	15	12	13	
	8	22	18	28	22	3	6	14	8	11	
	9	24	18	28	22	2	6	13	7	11	
22	1	10	23	27	6	12	24	23	20	21	
	2	14	23	24	6	10	22	21	20	19	
	3	19	23	24	6	10	18	21	20	15	
	4	21	22	22	6	8	16	20	20	13	
	5	22	21	19	5	8	16	19	20	13	
	6	25	21	17	5	6	13	19	19	10	
	7	27	20	14	4	6	11	18	19	8	
	8	28	20	12	4	5	10	17	19	4	
	9	30	20	9	4	3	7	16	19	3	
23	1	7	21	22	15	15	17	21	22	23	
	2	11	20	18	15	14	17	21	18	20	
	3	13	20	18	12	14	15	21	18	19	
	4	15	18	13	11	14	15	20	16	16	
	5	18	16	12	11	13	13	19	11	16	
	6	22	16	8	8	12	13	19	9	13	
	7	23	14	7	7	12	11	19	6	12	
	8	29	13	6	6	10	10	18	3	11	
	9	30	13	3	5	10	10	18	1	10	
24	1	4	3	24	26	23	28	26	26	27	
	2	6	2	23	25	20	27	24	26	27	
	3	8	2	23	25	16	23	22	26	26	
	4	9	2	22	25	16	22	20	25	25	
	5	14	2	21	25	14	20	20	25	24	
	6	15	2	19	25	10	18	19	25	23	
	7	16	2	18	25	6	17	17	24	21	
	8	19	2	18	25	6	14	14	24	20	
	9	29	2	16	25	4	13	13	24	20	
25	1	9	17	5	24	9	6	19	13	7	
	2	11	16	5	19	9	6	17	13	6	
	3	12	15	5	19	8	5	15	12	6	
	4	14	15	5	17	7	5	13	10	6	
	5	19	14	5	13	7	3	10	8	5	
	6	21	14	5	12	6	3	8	6	4	
	7	27	13	5	10	5	3	7	6	4	
	8	29	13	5	7	5	2	3	4	4	
	9	30	13	5	3	4	1	3	3	3	
26	1	2	10	29	24	16	5	20	18	30	
	2	3	10	28	21	15	5	20	16	29	
	3	6	10	26	21	13	4	19	14	29	
	4	7	9	25	17	13	4	19	13	29	
	5	9	9	25	14	11	4	18	12	28	
	6	10	8	23	11	11	3	18	10	28	
	7	13	8	22	10	9	3	17	9	27	
	8	22	7	21	5	8	2	17	7	27	
	9	26	7	20	4	8	2	16	6	27	
27	1	2	22	19	23	27	27	13	16	8	
	2	8	21	19	21	24	27	13	16	8	
	3	9	20	18	21	24	27	13	15	7	
	4	10	19	18	18	20	27	13	13	6	
	5	11	19	18	17	18	27	13	13	5	
	6	12	19	17	13	16	27	13	13	5	
	7	13	18	17	12	13	27	13	11	5	
	8	23	18	16	8	11	27	13	11	3	
	9	27	17	16	6	9	27	13	10	3	
28	1	1	14	24	14	12	18	26	19	28	
	2	3	14	21	13	12	17	25	16	28	
	3	8	14	19	13	12	17	24	16	27	
	4	16	14	19	11	11	17	22	13	26	
	5	17	14	17	11	11	17	17	13	26	
	6	18	14	16	11	11	17	15	11	26	
	7	19	14	12	9	10	17	13	9	25	
	8	21	14	10	9	10	17	12	6	24	
	9	22	14	9	8	10	17	9	6	24	
29	1	2	11	27	6	19	10	16	22	27	
	2	9	10	27	5	19	9	14	21	26	
	3	11	10	27	5	19	9	13	21	26	
	4	12	10	26	5	19	8	11	20	23	
	5	19	9	26	5	19	8	10	19	23	
	6	21	8	26	5	19	7	8	17	22	
	7	23	8	25	5	19	6	5	16	21	
	8	27	8	25	5	19	6	5	15	18	
	9	29	7	25	5	19	6	3	15	17	
30	1	9	24	9	9	30	28	25	18	17	
	2	14	22	8	9	27	26	25	17	16	
	3	19	19	8	9	24	25	23	15	14	
	4	24	16	8	9	22	24	19	11	14	
	5	25	13	7	8	22	24	19	10	13	
	6	26	11	7	8	19	22	16	8	12	
	7	27	6	6	8	17	21	15	8	11	
	8	29	4	5	8	16	21	13	4	10	
	9	30	3	5	8	13	20	11	4	9	
31	1	7	13	16	24	29	23	21	19	13	
	2	12	12	16	21	27	23	20	17	13	
	3	13	12	14	21	25	20	18	14	12	
	4	14	12	14	19	23	19	14	14	10	
	5	15	11	11	19	21	15	12	12	10	
	6	18	11	10	17	20	14	10	10	8	
	7	20	10	10	16	18	12	8	8	7	
	8	23	10	8	15	16	10	8	7	5	
	9	26	10	7	14	15	7	4	5	5	
32	1	1	14	11	30	29	5	23	8	20	
	2	6	13	11	29	27	5	22	7	18	
	3	8	13	11	27	25	5	21	7	15	
	4	9	13	11	26	22	5	19	6	15	
	5	10	13	11	26	21	5	18	6	13	
	6	14	13	11	25	21	5	17	5	10	
	7	19	13	11	24	18	5	16	5	8	
	8	23	13	11	23	16	5	15	4	6	
	9	24	13	11	23	15	5	14	4	2	
33	1	4	25	27	16	19	28	12	9	25	
	2	5	21	26	15	18	26	12	9	23	
	3	9	19	25	15	16	24	12	8	22	
	4	12	18	23	14	12	23	11	7	20	
	5	16	14	20	13	12	20	10	6	19	
	6	17	12	17	12	10	18	10	6	18	
	7	18	10	17	11	8	15	10	5	18	
	8	20	9	13	10	5	13	9	5	16	
	9	29	6	12	8	3	13	9	4	15	
34	1	6	13	21	16	28	29	23	8	11	
	2	8	12	21	15	27	24	23	7	9	
	3	14	10	20	13	27	21	23	7	9	
	4	16	9	20	12	26	19	23	7	8	
	5	23	8	20	11	25	18	23	6	7	
	6	24	8	19	9	25	15	23	6	6	
	7	27	7	19	8	25	10	23	6	4	
	8	28	6	18	5	24	9	23	6	3	
	9	30	5	18	4	24	6	23	6	3	
35	1	3	24	23	25	6	23	15	15	23	
	2	6	21	22	25	6	23	12	15	23	
	3	7	19	21	24	6	21	11	14	22	
	4	9	19	21	23	6	18	10	14	22	
	5	14	15	20	20	6	15	10	13	21	
	6	21	12	17	20	6	14	7	13	20	
	7	25	11	16	17	6	12	6	12	20	
	8	29	9	16	17	6	11	6	12	19	
	9	30	6	15	15	6	8	4	12	19	
36	1	3	23	26	15	24	9	30	28	8	
	2	6	21	24	15	23	8	25	25	7	
	3	11	19	23	14	23	8	21	25	7	
	4	12	18	21	14	21	8	20	22	7	
	5	20	17	20	14	20	8	15	21	6	
	6	23	15	19	13	19	8	14	20	6	
	7	27	12	17	12	18	8	11	18	6	
	8	28	11	16	12	18	8	7	17	6	
	9	29	8	14	12	16	8	6	17	6	
37	1	3	15	26	27	8	16	1	24	25	
	2	6	12	23	26	7	16	1	22	21	
	3	16	11	22	20	6	14	1	22	19	
	4	17	8	20	17	5	13	1	22	17	
	5	20	7	17	16	5	12	1	21	16	
	6	22	7	17	15	5	12	1	20	15	
	7	23	4	15	9	4	10	1	19	12	
	8	25	2	13	9	3	9	1	19	11	
	9	27	2	10	4	3	9	1	18	9	
38	1	1	19	13	23	13	28	23	24	12	
	2	2	18	13	21	11	28	22	23	12	
	3	3	18	12	21	11	26	21	21	12	
	4	4	17	10	21	11	25	19	18	12	
	5	6	17	10	20	10	25	16	17	12	
	6	7	16	9	20	10	24	16	15	11	
	7	11	16	8	19	9	24	13	13	11	
	8	18	15	8	19	9	23	13	9	11	
	9	25	14	7	18	8	22	12	8	11	
39	1	2	15	26	23	21	28	23	24	18	
	2	6	14	23	19	20	24	23	24	17	
	3	8	13	22	18	20	22	22	24	13	
	4	13	13	18	16	19	20	21	23	12	
	5	17	12	18	13	17	14	19	22	11	
	6	21	12	15	10	16	12	18	22	9	
	7	22	11	14	7	16	10	17	22	6	
	8	25	11	11	7	14	7	17	21	5	
	9	26	11	8	5	14	1	15	21	1	
40	1	1	20	29	29	5	6	20	17	19	
	2	2	20	27	27	4	6	18	17	18	
	3	3	18	25	26	4	6	17	16	18	
	4	6	14	25	26	3	6	14	15	18	
	5	15	12	22	24	3	5	13	15	18	
	6	18	9	22	23	2	5	12	14	18	
	7	19	8	19	22	1	4	9	13	18	
	8	25	4	19	21	1	4	9	13	18	
	9	28	3	18	20	1	4	6	12	18	
41	1	2	21	17	5	11	29	10	30	25	
	2	3	20	16	4	9	24	9	28	24	
	3	4	19	15	4	7	24	9	28	23	
	4	7	19	14	3	7	19	9	27	23	
	5	10	16	14	3	5	18	9	26	23	
	6	11	16	12	2	5	17	8	25	22	
	7	14	15	11	1	4	15	8	24	21	
	8	15	12	11	1	3	12	8	23	21	
	9	27	12	10	1	1	9	8	23	21	
42	1	3	15	21	24	26	28	13	20	30	
	2	10	14	18	24	23	27	11	20	25	
	3	16	12	16	23	22	26	9	20	24	
	4	17	12	16	22	22	26	8	20	20	
	5	20	11	12	22	20	25	8	19	17	
	6	21	9	10	21	18	25	6	19	14	
	7	22	8	9	21	17	24	6	19	14	
	8	28	7	6	21	17	23	5	19	12	
	9	29	7	5	20	16	23	3	19	9	
43	1	1	9	21	24	26	11	18	22	27	
	2	4	8	18	24	24	10	17	19	25	
	3	5	8	18	22	21	9	17	17	25	
	4	8	7	15	21	21	7	16	16	25	
	5	20	7	13	20	18	6	16	14	24	
	6	21	7	13	19	16	6	16	14	24	
	7	22	7	12	17	15	5	15	11	23	
	8	26	6	10	16	12	3	15	11	22	
	9	27	6	8	15	11	3	15	9	22	
44	1	3	18	26	27	13	19	9	6	26	
	2	4	17	24	25	13	17	8	5	21	
	3	6	17	22	24	13	16	7	4	18	
	4	9	16	20	20	12	13	7	4	17	
	5	10	15	17	17	12	10	6	3	14	
	6	19	15	16	16	12	8	6	3	13	
	7	26	14	15	14	12	6	6	3	9	
	8	27	13	13	10	11	5	5	2	4	
	9	30	13	11	9	11	2	5	2	2	
45	1	6	14	23	25	20	7	15	20	24	
	2	16	12	21	23	19	7	15	19	21	
	3	17	12	18	21	19	7	15	18	21	
	4	18	11	17	19	19	7	15	18	18	
	5	19	9	13	17	19	7	14	15	17	
	6	20	9	11	16	19	7	14	14	17	
	7	21	7	8	13	19	7	14	13	15	
	8	22	7	8	12	19	7	13	12	12	
	9	30	6	5	9	19	7	13	10	11	
46	1	3	23	12	19	9	11	18	28	27	
	2	4	22	12	19	7	10	17	26	27	
	3	8	21	11	16	6	9	16	23	25	
	4	9	20	9	13	6	9	16	22	23	
	5	11	19	7	11	5	8	15	19	20	
	6	14	18	6	9	4	7	15	19	19	
	7	15	16	6	5	2	6	15	15	19	
	8	18	15	4	4	2	6	14	14	16	
	9	21	15	2	1	1	5	14	13	15	
47	1	1	12	25	25	23	24	5	22	19	
	2	2	12	23	25	22	20	4	21	18	
	3	4	10	20	19	20	20	4	21	16	
	4	6	9	19	17	19	18	4	20	16	
	5	22	8	17	15	19	16	3	20	13	
	6	24	6	15	12	16	14	3	19	12	
	7	25	4	14	7	15	12	2	19	10	
	8	26	4	12	7	13	11	1	18	9	
	9	30	3	8	4	12	9	1	18	9	
48	1	1	10	15	13	14	28	9	27	11	
	2	8	9	15	12	14	28	8	26	11	
	3	11	9	13	12	14	27	7	25	10	
	4	16	8	10	10	14	27	6	25	9	
	5	22	8	10	10	13	26	6	23	7	
	6	23	7	8	10	13	25	6	23	6	
	7	24	6	7	9	12	24	4	21	5	
	8	29	6	3	7	12	24	3	20	5	
	9	30	6	2	7	12	23	3	19	4	
49	1	6	16	23	6	26	22	16	12	16	
	2	10	15	20	5	25	22	15	11	14	
	3	14	15	20	5	25	21	14	11	11	
	4	15	15	19	5	24	21	12	9	9	
	5	16	15	15	5	24	19	11	8	8	
	6	17	14	15	4	23	19	10	7	6	
	7	19	14	14	4	23	19	9	7	5	
	8	22	14	11	4	22	18	8	6	3	
	9	26	14	9	4	22	17	8	5	2	
50	1	2	28	26	27	27	25	26	25	27	
	2	3	28	25	23	27	25	23	21	25	
	3	7	27	21	20	27	23	20	19	22	
	4	12	27	20	19	27	22	19	19	21	
	5	13	26	17	15	27	21	16	15	20	
	6	14	26	16	14	27	19	14	13	18	
	7	16	25	12	9	27	18	13	12	16	
	8	21	25	9	5	27	17	10	11	16	
	9	23	24	7	3	27	17	9	8	14	
51	1	4	15	11	15	21	27	27	25	27	
	2	9	13	11	12	21	27	24	23	26	
	3	17	11	11	11	19	27	23	22	23	
	4	21	9	11	10	18	27	22	21	19	
	5	25	8	11	10	15	27	21	19	15	
	6	26	6	11	8	14	27	20	18	12	
	7	27	6	11	7	12	27	19	16	10	
	8	28	3	11	6	11	27	18	14	6	
	9	29	3	11	6	10	27	18	12	3	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	69	73	71	67	777	721	736	745

************************************************************************
