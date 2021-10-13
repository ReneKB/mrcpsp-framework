jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 2 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	15		2 3 4 5 6 7 8 9 10 13 14 17 18 20 25 
2	9	11		51 50 48 47 46 28 23 22 15 12 11 
3	9	11		50 49 47 46 33 31 28 23 22 15 12 
4	9	10		48 47 46 42 32 31 30 23 15 11 
5	9	9		48 45 44 42 40 32 27 22 16 
6	9	7		48 42 33 24 19 15 11 
7	9	11		46 45 43 42 38 37 33 32 31 22 21 
8	9	13		49 48 47 46 45 44 42 41 40 39 37 32 22 
9	9	8		50 48 43 39 31 28 24 21 
10	9	10		49 46 42 40 38 36 32 31 28 26 
11	9	7		49 45 43 39 38 37 21 
12	9	9		44 42 41 39 38 37 36 34 29 
13	9	8		42 40 39 38 37 36 35 28 
14	9	7		48 47 40 36 35 34 24 
15	9	5		45 44 43 37 21 
16	9	8		47 46 43 39 38 37 35 31 
17	9	8		42 41 39 38 37 36 34 29 
18	9	6		47 41 37 36 35 30 
19	9	5		39 38 37 36 34 
20	9	5		45 43 39 38 34 
21	9	4		40 36 34 29 
22	9	3		36 30 29 
23	9	4		38 36 35 34 
24	9	3		44 38 37 
25	9	3		40 37 34 
26	9	2		35 34 
27	9	2		39 36 
28	9	1		30 
29	9	1		35 
30	9	1		34 
31	9	1		41 
32	9	1		34 
33	9	1		39 
34	9	1		52 
35	9	1		52 
36	9	1		52 
37	9	1		52 
38	9	1		52 
39	9	1		52 
40	9	1		52 
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
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	1	3	1	1	4	3	28	
	2	8	3	1	1	4	3	25	
	3	9	3	1	1	4	3	24	
	4	10	3	1	1	4	3	23	
	5	13	3	1	1	4	3	21	
	6	18	3	1	1	3	2	21	
	7	19	3	1	1	3	2	20	
	8	20	3	1	1	3	2	19	
	9	21	3	1	1	3	2	18	
3	1	5	2	3	1	2	16	23	
	2	11	1	2	1	1	15	22	
	3	14	1	2	1	1	15	21	
	4	21	1	2	1	1	14	21	
	5	22	1	2	1	1	14	20	
	6	25	1	2	1	1	14	18	
	7	26	1	2	1	1	14	17	
	8	28	1	2	1	1	13	17	
	9	29	1	2	1	1	13	16	
4	1	1	2	3	3	4	21	18	
	2	3	2	2	3	4	21	16	
	3	4	2	2	3	4	17	16	
	4	5	2	2	3	4	15	16	
	5	8	2	1	3	3	15	15	
	6	11	2	1	3	3	12	14	
	7	12	2	1	3	3	9	14	
	8	17	2	1	3	2	6	13	
	9	24	2	1	3	2	5	12	
5	1	1	2	1	4	4	25	9	
	2	6	2	1	4	4	24	8	
	3	9	2	1	3	4	22	8	
	4	11	2	1	3	4	20	7	
	5	15	1	1	3	4	19	7	
	6	16	1	1	2	4	16	6	
	7	19	1	1	1	4	13	6	
	8	20	1	1	1	4	13	5	
	9	22	1	1	1	4	11	5	
6	1	4	3	4	5	4	14	4	
	2	5	3	3	4	4	14	4	
	3	8	3	3	4	4	13	4	
	4	12	3	3	4	4	13	3	
	5	16	3	2	3	3	12	4	
	6	17	2	2	3	3	12	4	
	7	20	2	2	2	3	12	4	
	8	23	2	2	2	3	11	5	
	9	24	2	2	2	3	11	4	
7	1	1	3	4	2	4	24	11	
	2	12	3	4	1	4	19	9	
	3	13	3	4	1	4	16	9	
	4	14	3	3	1	4	14	8	
	5	15	3	3	1	4	12	7	
	6	17	3	3	1	3	11	4	
	7	23	3	3	1	3	9	4	
	8	24	3	2	1	3	5	3	
	9	26	3	2	1	3	2	2	
8	1	2	1	3	5	2	28	25	
	2	7	1	3	4	2	28	23	
	3	9	1	3	3	2	28	19	
	4	11	1	3	3	2	28	18	
	5	12	1	3	2	2	28	15	
	6	15	1	2	2	2	28	14	
	7	16	1	2	2	2	28	11	
	8	23	1	2	1	2	28	9	
	9	29	1	2	1	2	28	8	
9	1	4	5	2	3	1	15	9	
	2	7	4	2	2	1	13	8	
	3	10	4	2	2	1	11	8	
	4	11	4	2	2	1	11	7	
	5	12	4	1	2	1	9	8	
	6	15	4	1	2	1	8	7	
	7	18	4	1	2	1	6	7	
	8	23	4	1	2	1	5	7	
	9	27	4	1	2	1	4	7	
10	1	10	4	1	3	4	23	26	
	2	11	4	1	3	3	23	25	
	3	16	4	1	3	3	22	23	
	4	19	3	1	3	3	21	22	
	5	22	3	1	3	3	21	21	
	6	24	2	1	3	2	21	21	
	7	28	1	1	3	2	20	19	
	8	29	1	1	3	2	19	19	
	9	30	1	1	3	2	19	18	
11	1	10	4	4	4	4	27	28	
	2	17	4	4	3	4	24	27	
	3	18	4	4	3	4	21	27	
	4	19	3	4	3	4	20	26	
	5	20	3	3	2	3	17	25	
	6	21	3	3	2	3	15	25	
	7	26	3	2	2	3	10	24	
	8	29	2	2	2	3	8	24	
	9	30	2	2	2	3	6	24	
12	1	1	3	2	5	4	23	27	
	2	3	3	1	4	4	19	25	
	3	6	3	1	4	4	18	22	
	4	7	3	1	4	4	15	22	
	5	8	3	1	3	3	15	18	
	6	9	3	1	3	3	14	16	
	7	22	3	1	2	3	12	15	
	8	24	3	1	2	3	8	14	
	9	30	3	1	2	3	7	12	
13	1	1	4	5	3	2	28	14	
	2	8	4	4	2	2	28	13	
	3	11	4	4	2	2	26	12	
	4	12	4	4	2	2	26	10	
	5	14	4	3	1	2	25	10	
	6	17	3	3	1	1	23	8	
	7	23	3	3	1	1	22	8	
	8	26	3	3	1	1	20	6	
	9	30	3	3	1	1	20	5	
14	1	2	4	3	5	5	8	18	
	2	4	3	2	4	4	7	18	
	3	5	3	2	4	4	6	17	
	4	8	2	2	3	4	5	17	
	5	9	2	2	3	3	4	16	
	6	11	2	2	3	3	4	15	
	7	12	2	2	2	3	2	15	
	8	13	1	2	2	3	1	15	
	9	28	1	2	2	3	1	14	
15	1	2	2	4	3	3	19	22	
	2	3	1	4	3	3	19	20	
	3	6	1	4	3	3	19	19	
	4	7	1	4	3	3	19	17	
	5	9	1	3	3	2	19	16	
	6	16	1	3	3	2	18	13	
	7	17	1	3	3	2	18	11	
	8	22	1	2	3	2	18	10	
	9	27	1	2	3	2	18	7	
16	1	4	5	2	4	4	21	24	
	2	8	5	2	3	4	21	23	
	3	9	5	2	3	4	20	17	
	4	15	5	2	3	3	19	17	
	5	16	5	1	2	3	16	13	
	6	21	5	1	2	3	15	9	
	7	22	5	1	2	2	15	8	
	8	23	5	1	2	2	14	5	
	9	27	5	1	2	2	12	3	
17	1	3	3	5	1	5	25	16	
	2	9	3	4	1	4	24	15	
	3	12	3	4	1	4	24	13	
	4	13	3	4	1	4	23	12	
	5	20	3	4	1	4	23	10	
	6	21	3	3	1	4	23	10	
	7	22	3	3	1	4	22	9	
	8	26	3	3	1	4	22	7	
	9	27	3	3	1	4	22	6	
18	1	1	2	1	4	3	21	18	
	2	4	2	1	4	3	20	17	
	3	17	2	1	4	3	17	15	
	4	21	2	1	4	3	17	14	
	5	22	2	1	4	2	15	14	
	6	25	2	1	4	2	12	12	
	7	27	2	1	4	2	11	11	
	8	28	2	1	4	2	10	10	
	9	29	2	1	4	2	8	10	
19	1	1	2	2	3	2	26	3	
	2	2	2	2	3	2	23	3	
	3	7	2	2	3	2	22	3	
	4	8	2	2	3	2	20	3	
	5	15	2	2	2	2	20	2	
	6	20	2	2	2	2	19	2	
	7	21	2	2	1	2	18	2	
	8	22	2	2	1	2	16	1	
	9	27	2	2	1	2	14	1	
20	1	6	2	4	2	3	2	21	
	2	7	1	4	2	3	1	18	
	3	9	1	4	2	3	1	17	
	4	11	1	3	2	3	1	16	
	5	20	1	3	2	3	1	11	
	6	21	1	3	1	3	1	10	
	7	26	1	3	1	3	1	9	
	8	29	1	2	1	3	1	6	
	9	30	1	2	1	3	1	3	
21	1	2	3	2	5	4	23	6	
	2	3	3	2	4	4	21	6	
	3	5	3	2	3	4	21	6	
	4	13	3	2	3	4	19	6	
	5	16	3	1	3	4	17	5	
	6	17	3	1	2	4	16	5	
	7	19	3	1	2	4	16	4	
	8	22	3	1	1	4	13	5	
	9	30	3	1	1	4	13	4	
22	1	9	3	3	5	3	20	30	
	2	10	2	3	4	3	18	29	
	3	13	2	3	4	3	17	28	
	4	14	2	3	4	3	16	28	
	5	15	2	3	3	2	16	27	
	6	16	2	3	3	2	14	27	
	7	19	2	3	3	1	13	27	
	8	20	2	3	3	1	12	26	
	9	23	2	3	3	1	11	26	
23	1	2	3	4	4	5	14	22	
	2	4	2	4	3	4	13	20	
	3	9	2	4	3	4	12	17	
	4	10	2	4	3	4	12	15	
	5	11	2	4	2	3	10	15	
	6	12	2	4	2	3	10	14	
	7	16	2	4	2	2	9	11	
	8	23	2	4	1	2	9	10	
	9	26	2	4	1	2	8	7	
24	1	1	3	4	4	2	8	24	
	2	2	3	3	4	1	8	24	
	3	19	3	3	4	1	8	23	
	4	20	2	3	4	1	8	23	
	5	22	2	2	3	1	7	22	
	6	23	2	2	3	1	7	21	
	7	24	1	1	3	1	6	22	
	8	25	1	1	2	1	6	21	
	9	30	1	1	2	1	6	20	
25	1	6	3	2	5	1	12	30	
	2	17	3	2	5	1	11	28	
	3	18	3	2	5	1	10	27	
	4	20	3	2	5	1	9	26	
	5	21	3	2	5	1	8	26	
	6	23	3	1	5	1	8	25	
	7	26	3	1	5	1	6	25	
	8	27	3	1	5	1	6	24	
	9	30	3	1	5	1	5	23	
26	1	9	4	4	4	1	29	20	
	2	11	4	3	4	1	28	18	
	3	12	4	3	4	1	27	14	
	4	13	3	3	4	1	25	13	
	5	14	3	3	4	1	25	12	
	6	15	3	2	4	1	23	10	
	7	18	2	2	4	1	22	6	
	8	25	2	2	4	1	21	6	
	9	28	2	2	4	1	20	3	
27	1	3	4	2	1	4	11	4	
	2	9	3	2	1	3	10	3	
	3	11	3	2	1	3	10	2	
	4	16	2	2	1	3	9	2	
	5	19	2	1	1	3	9	2	
	6	25	2	1	1	2	9	2	
	7	28	2	1	1	2	9	1	
	8	28	1	1	1	2	8	2	
	9	30	1	1	1	2	8	1	
28	1	13	5	5	1	4	23	22	
	2	16	4	4	1	3	23	21	
	3	19	4	4	1	3	22	20	
	4	20	4	4	1	2	21	18	
	5	23	4	4	1	2	21	17	
	6	26	4	4	1	2	20	16	
	7	27	4	4	1	2	20	14	
	8	28	4	4	1	1	19	14	
	9	30	4	4	1	1	19	13	
29	1	4	3	3	1	4	15	19	
	2	8	3	3	1	3	13	18	
	3	14	3	3	1	3	13	17	
	4	14	3	3	1	2	11	19	
	5	15	3	3	1	2	11	18	
	6	17	2	3	1	2	9	18	
	7	18	2	3	1	2	8	18	
	8	27	2	3	1	1	8	18	
	9	29	2	3	1	1	7	18	
30	1	1	4	2	3	3	6	20	
	2	5	4	2	3	3	5	19	
	3	15	4	2	3	3	5	17	
	4	18	4	2	3	3	5	15	
	5	19	3	1	3	3	5	13	
	6	21	3	1	3	3	4	11	
	7	23	3	1	3	3	4	10	
	8	24	2	1	3	3	4	8	
	9	27	2	1	3	3	4	7	
31	1	3	3	3	3	5	13	26	
	2	4	2	3	2	4	12	23	
	3	5	2	3	2	4	11	20	
	4	9	2	3	2	4	11	16	
	5	11	2	3	2	3	10	13	
	6	23	2	3	1	3	10	10	
	7	26	2	3	1	2	9	9	
	8	27	2	3	1	2	8	7	
	9	28	2	3	1	2	8	3	
32	1	2	4	2	2	5	26	24	
	2	3	3	1	2	4	25	23	
	3	4	3	1	2	4	24	23	
	4	6	3	1	2	3	23	23	
	5	11	2	1	2	3	20	23	
	6	17	2	1	2	2	19	23	
	7	23	2	1	2	1	19	23	
	8	25	2	1	2	1	16	23	
	9	30	2	1	2	1	15	23	
33	1	4	3	1	2	3	16	14	
	2	7	3	1	2	2	13	13	
	3	8	3	1	2	2	13	12	
	4	9	3	1	2	2	10	10	
	5	10	3	1	2	1	8	10	
	6	11	3	1	2	1	8	8	
	7	13	3	1	2	1	6	8	
	8	23	3	1	2	1	5	6	
	9	25	3	1	2	1	3	6	
34	1	1	5	4	1	2	21	25	
	2	3	4	4	1	2	20	25	
	3	10	4	4	1	2	20	21	
	4	15	4	3	1	2	19	21	
	5	17	3	2	1	2	18	18	
	6	21	3	2	1	2	18	16	
	7	26	3	1	1	2	18	14	
	8	27	2	1	1	2	17	10	
	9	28	2	1	1	2	17	9	
35	1	8	4	2	3	3	22	27	
	2	19	3	1	3	3	21	23	
	3	22	3	1	3	3	19	21	
	4	23	3	1	3	3	17	18	
	5	24	3	1	3	3	17	17	
	6	27	2	1	3	3	14	14	
	7	28	2	1	3	3	14	13	
	8	29	2	1	3	3	11	10	
	9	30	2	1	3	3	10	9	
36	1	2	1	1	4	2	19	9	
	2	7	1	1	3	2	18	9	
	3	9	1	1	3	2	16	9	
	4	14	1	1	2	2	13	9	
	5	15	1	1	2	2	12	9	
	6	15	1	1	2	2	9	10	
	7	16	1	1	2	2	9	9	
	8	21	1	1	1	2	7	9	
	9	26	1	1	1	2	5	9	
37	1	3	4	4	3	3	24	28	
	2	4	4	3	3	3	23	27	
	3	6	4	3	3	3	20	27	
	4	12	3	3	3	2	15	27	
	5	20	3	3	2	2	14	27	
	6	21	2	3	2	2	13	27	
	7	22	2	3	2	1	10	27	
	8	25	1	3	2	1	4	27	
	9	26	1	3	2	1	3	27	
38	1	9	4	3	4	5	18	23	
	2	10	3	2	4	4	15	23	
	3	11	3	2	4	4	15	22	
	4	16	3	2	4	4	12	22	
	5	21	2	2	4	3	11	21	
	6	22	2	2	4	3	9	20	
	7	23	2	2	4	3	6	20	
	8	24	1	2	4	3	5	18	
	9	30	1	2	4	3	3	18	
39	1	1	4	5	4	5	24	26	
	2	7	3	4	3	4	24	24	
	3	10	3	4	3	4	24	23	
	4	11	2	4	3	3	23	22	
	5	12	2	3	2	2	23	21	
	6	15	2	3	2	2	22	20	
	7	22	2	2	2	2	22	19	
	8	23	1	2	1	1	21	18	
	9	24	1	2	1	1	21	16	
40	1	8	3	2	3	5	21	15	
	2	12	3	2	2	4	20	14	
	3	18	3	2	2	4	19	14	
	4	19	3	2	2	4	18	13	
	5	20	3	2	2	4	18	11	
	6	21	3	2	2	4	18	10	
	7	26	3	2	2	4	16	10	
	8	29	3	2	2	4	16	8	
	9	30	3	2	2	4	15	8	
41	1	17	5	3	3	4	24	15	
	2	18	4	3	2	3	22	14	
	3	19	4	3	2	3	21	14	
	4	20	4	3	2	3	18	13	
	5	21	3	3	1	3	15	12	
	6	22	3	3	1	3	14	12	
	7	27	2	3	1	3	9	11	
	8	28	2	3	1	3	8	11	
	9	29	2	3	1	3	4	11	
42	1	6	4	4	5	4	15	26	
	2	10	4	4	4	4	15	24	
	3	11	4	4	3	4	14	23	
	4	13	4	4	3	4	13	22	
	5	14	4	4	3	3	11	22	
	6	15	4	4	2	3	9	20	
	7	18	4	4	1	3	8	19	
	8	26	4	4	1	3	8	18	
	9	27	4	4	1	3	7	18	
43	1	10	5	4	3	3	20	15	
	2	12	4	4	3	3	20	15	
	3	17	4	4	3	3	20	14	
	4	20	4	4	2	3	20	15	
	5	22	4	4	2	3	20	14	
	6	23	4	4	2	3	20	13	
	7	27	4	4	2	3	20	12	
	8	29	4	4	1	3	20	14	
	9	30	4	4	1	3	20	13	
44	1	5	4	5	5	2	23	10	
	2	14	4	5	4	2	20	8	
	3	21	4	5	4	2	20	7	
	4	22	4	5	4	2	18	7	
	5	23	4	5	4	1	16	6	
	6	27	4	5	3	1	15	5	
	7	28	4	5	3	1	15	3	
	8	29	4	5	3	1	14	2	
	9	30	4	5	3	1	12	2	
45	1	5	2	5	4	4	18	30	
	2	8	2	4	3	3	18	26	
	3	10	2	4	3	3	17	22	
	4	13	2	3	3	3	17	21	
	5	17	1	3	2	2	17	17	
	6	19	1	3	2	2	16	15	
	7	25	1	2	2	2	16	13	
	8	29	1	2	1	2	15	12	
	9	30	1	2	1	2	15	9	
46	1	1	5	5	3	2	16	14	
	2	2	4	4	2	2	16	13	
	3	3	4	4	2	2	15	12	
	4	8	3	4	2	2	13	11	
	5	11	2	3	2	2	12	10	
	6	18	2	3	2	1	10	10	
	7	19	2	3	2	1	9	9	
	8	24	1	3	2	1	7	7	
	9	27	1	3	2	1	6	7	
47	1	6	1	2	3	5	23	13	
	2	10	1	2	3	5	22	10	
	3	11	1	2	3	5	22	9	
	4	12	1	2	2	5	22	8	
	5	14	1	2	2	5	21	7	
	6	15	1	2	2	5	21	5	
	7	25	1	2	2	5	21	4	
	8	28	1	2	1	5	20	3	
	9	29	1	2	1	5	20	1	
48	1	4	3	3	4	4	16	29	
	2	5	3	3	4	3	12	29	
	3	10	3	3	4	3	11	29	
	4	15	3	3	4	3	11	28	
	5	19	3	3	4	3	9	29	
	6	20	3	2	4	3	6	29	
	7	21	3	2	4	3	5	29	
	8	23	3	2	4	3	4	29	
	9	28	3	2	4	3	3	29	
49	1	2	1	5	4	2	12	22	
	2	7	1	4	4	2	11	22	
	3	8	1	4	4	2	11	21	
	4	10	1	4	4	2	10	21	
	5	12	1	4	4	2	10	20	
	6	15	1	4	4	2	9	21	
	7	18	1	4	4	2	8	21	
	8	27	1	4	4	2	8	20	
	9	30	1	4	4	2	8	19	
50	1	3	4	4	4	3	6	22	
	2	4	4	3	3	3	5	21	
	3	7	4	3	3	3	5	20	
	4	13	3	3	2	3	5	20	
	5	14	2	2	2	3	4	19	
	6	17	2	2	2	3	4	18	
	7	18	2	2	1	3	4	17	
	8	20	1	1	1	3	3	17	
	9	21	1	1	1	3	3	16	
51	1	1	5	5	3	5	23	26	
	2	7	4	4	3	4	23	24	
	3	9	4	4	3	4	22	22	
	4	13	4	3	3	4	21	20	
	5	14	3	3	3	4	20	19	
	6	20	3	3	3	4	19	18	
	7	25	2	3	3	4	18	17	
	8	26	2	2	3	4	16	15	
	9	29	2	2	3	4	15	14	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2
	14	14	15	15	827	877

************************************************************************
