jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 2 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	8		2 3 4 6 10 11 14 16 
2	9	4		18 15 9 5 
3	9	3		13 8 7 
4	9	5		28 19 15 13 9 
5	9	7		38 30 28 26 22 21 12 
6	9	4		21 20 17 15 
7	9	9		51 35 31 30 27 24 23 22 21 
8	9	7		31 28 27 25 22 21 20 
9	9	6		51 33 30 27 23 17 
10	9	4		26 21 18 17 
11	9	3		21 20 15 
12	9	4		31 27 25 20 
13	9	7		51 48 38 33 27 26 25 
14	9	4		34 25 21 20 
15	9	7		51 50 48 37 33 25 23 
16	9	7		51 50 48 46 37 25 23 
17	9	7		50 48 46 34 31 25 24 
18	9	11		51 49 48 47 38 37 35 33 32 31 29 
19	9	7		50 49 48 38 35 33 24 
20	9	6		51 50 49 48 33 24 
21	9	4		48 37 33 29 
22	9	8		50 48 44 43 42 36 34 33 
23	9	5		49 38 34 32 29 
24	9	4		47 37 32 29 
25	9	8		49 47 44 42 41 40 36 35 
26	9	3		46 37 29 
27	9	5		50 47 37 34 32 
28	9	4		47 43 37 33 
29	9	5		43 42 41 40 36 
30	9	4		43 41 40 39 
31	9	3		42 40 39 
32	9	2		40 39 
33	9	2		46 45 
34	9	2		41 39 
35	9	2		45 39 
36	9	1		39 
37	9	1		44 
38	9	1		39 
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
jobnr.	mode	dur	R1	R2	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	
2	1	1	3	3	11	15	14	16	
	2	4	3	2	10	13	14	15	
	3	12	3	2	9	12	11	15	
	4	13	3	2	8	11	10	12	
	5	16	3	1	7	10	9	12	
	6	19	3	1	7	9	8	10	
	7	21	3	1	7	9	5	9	
	8	22	3	1	5	8	3	8	
	9	28	3	1	5	7	2	6	
3	1	2	2	3	15	23	19	23	
	2	7	2	2	15	22	18	20	
	3	8	2	2	14	22	18	16	
	4	9	2	2	13	21	17	16	
	5	10	2	1	11	20	17	12	
	6	14	1	1	10	20	16	10	
	7	15	1	1	9	20	16	7	
	8	21	1	1	9	19	15	6	
	9	22	1	1	7	18	14	3	
4	1	3	4	5	29	9	27	9	
	2	4	3	4	29	8	27	8	
	3	7	3	4	29	8	27	7	
	4	8	3	4	29	8	27	6	
	5	9	2	3	29	8	27	8	
	6	14	2	3	28	8	27	8	
	7	18	1	3	28	8	27	8	
	8	19	1	3	28	8	27	7	
	9	26	1	3	28	8	27	6	
5	1	1	2	4	10	25	24	2	
	2	2	2	3	10	24	22	2	
	3	4	2	3	9	22	20	2	
	4	9	2	3	8	21	19	2	
	5	10	1	2	6	19	17	1	
	6	11	1	2	6	15	14	1	
	7	13	1	1	4	15	13	1	
	8	26	1	1	3	13	12	1	
	9	29	1	1	2	9	11	1	
6	1	2	3	1	29	18	4	26	
	2	5	3	1	27	15	4	25	
	3	7	3	1	25	13	4	25	
	4	11	3	1	22	10	4	24	
	5	17	3	1	21	9	4	24	
	6	19	3	1	19	9	4	24	
	7	22	3	1	18	7	4	23	
	8	24	3	1	15	4	4	23	
	9	30	3	1	15	2	4	22	
7	1	8	4	2	18	25	21	11	
	2	11	4	2	17	23	21	11	
	3	12	4	2	14	22	19	10	
	4	18	3	2	12	22	19	10	
	5	19	2	1	10	20	18	10	
	6	24	2	1	9	19	17	9	
	7	25	2	1	7	18	17	9	
	8	26	1	1	7	18	15	8	
	9	29	1	1	5	16	15	8	
8	1	3	3	1	24	10	14	26	
	2	4	3	1	24	9	12	25	
	3	6	3	1	20	8	11	25	
	4	18	3	1	16	7	11	25	
	5	22	3	1	13	6	9	24	
	6	23	3	1	10	5	9	24	
	7	26	3	1	8	3	8	24	
	8	27	3	1	6	3	7	24	
	9	30	3	1	1	1	5	24	
9	1	9	3	2	22	25	16	17	
	2	11	3	2	19	22	16	17	
	3	12	3	2	18	21	16	17	
	4	13	3	2	17	18	15	17	
	5	14	2	2	16	14	15	17	
	6	24	2	1	14	12	15	16	
	7	25	2	1	13	12	14	16	
	8	26	1	1	12	9	14	16	
	9	30	1	1	11	8	14	16	
10	1	7	3	5	18	30	19	6	
	2	8	3	4	18	28	18	6	
	3	9	3	4	18	28	17	6	
	4	10	3	4	18	27	17	6	
	5	11	3	3	17	27	16	6	
	6	12	3	3	17	27	14	5	
	7	21	3	3	17	26	13	5	
	8	24	3	3	16	25	12	5	
	9	29	3	3	16	25	11	5	
11	1	1	3	2	3	23	27	8	
	2	3	3	2	2	23	25	8	
	3	5	3	2	2	22	22	8	
	4	8	3	2	2	21	21	8	
	5	10	3	2	2	20	20	7	
	6	13	2	2	1	18	17	7	
	7	15	2	2	1	17	16	7	
	8	22	2	2	1	16	13	7	
	9	26	2	2	1	16	13	6	
12	1	2	4	4	24	3	13	20	
	2	12	4	4	22	2	13	20	
	3	14	4	4	19	2	13	18	
	4	19	4	4	19	2	12	18	
	5	21	4	4	15	2	12	16	
	6	22	4	3	13	2	12	16	
	7	23	4	3	9	2	12	14	
	8	25	4	3	6	2	11	13	
	9	30	4	3	6	2	11	12	
13	1	2	2	5	23	16	10	19	
	2	3	2	4	22	15	10	19	
	3	4	2	4	21	14	10	18	
	4	7	2	4	20	13	10	17	
	5	22	2	4	20	13	10	15	
	6	24	2	4	19	12	9	15	
	7	26	2	4	19	12	9	14	
	8	27	2	4	19	10	9	13	
	9	30	2	4	18	10	9	12	
14	1	2	4	3	21	28	13	20	
	2	3	4	3	19	26	10	18	
	3	13	4	3	18	26	10	18	
	4	16	3	3	18	24	9	17	
	5	19	3	3	17	23	7	16	
	6	25	3	3	16	23	7	15	
	7	27	2	3	15	21	6	15	
	8	28	2	3	13	20	4	14	
	9	30	2	3	13	20	3	13	
15	1	3	1	3	3	26	22	25	
	2	4	1	2	2	23	21	21	
	3	8	1	2	2	20	19	20	
	4	11	1	2	2	17	15	19	
	5	17	1	2	2	14	14	17	
	6	18	1	1	2	11	12	13	
	7	23	1	1	2	7	12	13	
	8	25	1	1	2	4	9	9	
	9	30	1	1	2	4	7	8	
16	1	4	2	1	27	24	2	24	
	2	5	2	1	24	24	1	23	
	3	6	2	1	22	19	1	23	
	4	8	2	1	20	18	1	22	
	5	9	2	1	17	17	1	21	
	6	11	2	1	15	12	1	21	
	7	18	2	1	13	9	1	21	
	8	25	2	1	7	8	1	20	
	9	27	2	1	6	5	1	20	
17	1	1	4	5	10	17	29	26	
	2	7	4	4	10	15	29	25	
	3	10	4	4	10	13	29	22	
	4	11	4	4	9	12	29	21	
	5	14	4	4	9	9	29	19	
	6	16	3	4	9	9	28	16	
	7	19	3	4	9	7	28	11	
	8	21	3	4	8	5	28	9	
	9	24	3	4	8	3	28	9	
18	1	2	5	2	20	18	19	13	
	2	5	4	1	19	18	18	12	
	3	8	4	1	16	18	17	10	
	4	10	4	1	14	18	16	9	
	5	17	4	1	12	17	15	8	
	6	21	4	1	10	17	14	8	
	7	24	4	1	7	17	14	7	
	8	27	4	1	4	17	12	5	
	9	29	4	1	2	17	12	5	
19	1	13	2	4	26	16	13	14	
	2	17	2	4	23	15	13	14	
	3	18	2	4	19	14	13	12	
	4	22	2	4	18	13	13	11	
	5	23	2	4	15	11	13	9	
	6	24	2	4	11	9	13	8	
	7	26	2	4	9	8	13	6	
	8	27	2	4	6	6	13	4	
	9	30	2	4	4	4	13	3	
20	1	4	2	5	21	15	25	15	
	2	10	2	5	19	14	24	13	
	3	11	2	5	19	14	22	13	
	4	12	2	5	18	13	22	12	
	5	18	2	5	17	12	21	11	
	6	19	2	5	17	12	18	11	
	7	24	2	5	16	12	17	9	
	8	25	2	5	15	10	15	8	
	9	27	2	5	14	10	15	8	
21	1	5	5	5	11	26	26	25	
	2	9	4	5	11	24	23	23	
	3	16	4	5	11	24	23	22	
	4	21	4	5	11	23	21	20	
	5	24	3	5	10	22	20	16	
	6	27	3	5	10	22	19	13	
	7	28	3	5	10	22	18	12	
	8	29	3	5	10	20	16	9	
	9	30	3	5	10	20	16	7	
22	1	6	5	4	28	27	17	12	
	2	12	4	3	28	26	15	11	
	3	15	4	3	28	26	15	10	
	4	20	4	3	28	26	15	9	
	5	21	3	2	28	25	14	10	
	6	22	3	2	28	25	13	10	
	7	24	3	2	28	25	13	9	
	8	28	3	2	28	24	12	9	
	9	29	3	2	28	24	11	9	
23	1	2	2	4	24	10	26	19	
	2	8	2	4	21	10	25	19	
	3	12	2	4	21	9	25	19	
	4	19	2	4	18	7	25	18	
	5	20	2	4	17	7	25	18	
	6	21	1	4	15	5	25	17	
	7	23	1	4	11	5	25	17	
	8	28	1	4	10	3	25	16	
	9	29	1	4	8	2	25	16	
24	1	1	4	1	29	29	8	7	
	2	5	3	1	29	26	7	7	
	3	7	3	1	29	21	6	6	
	4	8	2	1	28	20	6	5	
	5	9	2	1	28	14	4	5	
	6	11	2	1	28	11	4	4	
	7	16	1	1	28	9	2	4	
	8	27	1	1	27	8	1	3	
	9	29	1	1	27	2	1	2	
25	1	1	4	3	23	22	20	30	
	2	6	4	2	23	21	18	27	
	3	7	4	2	23	20	17	27	
	4	8	4	2	23	20	14	26	
	5	9	3	1	23	19	12	24	
	6	14	3	1	23	18	12	22	
	7	18	3	1	23	17	10	21	
	8	26	3	1	23	17	8	19	
	9	28	3	1	23	16	6	18	
26	1	6	2	3	14	7	18	26	
	2	8	1	3	11	6	16	23	
	3	9	1	3	11	5	14	22	
	4	10	1	2	10	5	10	19	
	5	14	1	2	9	4	9	18	
	6	18	1	2	6	4	8	15	
	7	19	1	1	5	3	5	14	
	8	20	1	1	4	2	2	9	
	9	24	1	1	4	2	2	8	
27	1	2	3	4	25	25	6	27	
	2	3	3	3	20	22	5	27	
	3	4	3	3	20	20	4	24	
	4	16	3	3	16	18	4	23	
	5	20	3	2	16	17	3	18	
	6	22	3	2	13	13	3	16	
	7	23	3	2	11	11	3	15	
	8	24	3	2	7	9	2	13	
	9	25	3	2	6	6	2	11	
28	1	2	4	3	26	30	25	29	
	2	4	4	3	24	30	25	29	
	3	6	4	3	21	30	23	29	
	4	8	4	3	19	30	22	29	
	5	10	4	3	18	30	21	29	
	6	16	4	3	17	30	19	29	
	7	26	4	3	15	30	17	29	
	8	27	4	3	14	30	16	29	
	9	29	4	3	12	30	16	29	
29	1	6	5	4	17	25	19	26	
	2	7	5	4	17	24	19	26	
	3	16	5	4	14	24	19	25	
	4	17	5	4	13	23	19	24	
	5	18	5	4	12	23	19	24	
	6	25	5	4	11	22	19	24	
	7	26	5	4	8	21	19	23	
	8	27	5	4	8	20	19	23	
	9	28	5	4	6	20	19	22	
30	1	1	4	5	14	23	28	26	
	2	2	4	4	12	23	27	24	
	3	5	3	3	12	23	26	24	
	4	6	3	3	10	23	25	23	
	5	8	2	3	9	22	24	22	
	6	9	2	2	9	22	22	22	
	7	17	2	2	7	22	22	22	
	8	18	1	1	6	21	20	21	
	9	19	1	1	6	21	19	20	
31	1	1	5	1	19	3	11	27	
	2	4	5	1	17	3	10	25	
	3	5	5	1	16	3	9	25	
	4	11	5	1	16	3	7	24	
	5	15	5	1	14	3	7	23	
	6	18	5	1	13	3	6	21	
	7	25	5	1	11	3	4	21	
	8	26	5	1	10	3	4	20	
	9	27	5	1	10	3	2	18	
32	1	1	2	3	26	29	30	19	
	2	2	2	3	23	28	29	19	
	3	4	2	3	20	26	29	18	
	4	5	2	3	20	25	29	17	
	5	13	2	3	16	25	29	16	
	6	24	2	3	14	23	29	15	
	7	25	2	3	13	22	29	14	
	8	26	2	3	10	22	29	13	
	9	27	2	3	9	21	29	11	
33	1	1	3	3	24	17	10	21	
	2	2	2	3	22	17	9	21	
	3	3	2	3	20	14	9	17	
	4	4	2	3	17	11	8	15	
	5	5	2	3	16	10	8	14	
	6	17	2	3	14	9	7	13	
	7	19	2	3	11	7	7	10	
	8	27	2	3	10	5	7	7	
	9	30	2	3	9	3	6	5	
34	1	8	4	5	14	4	24	23	
	2	14	4	5	13	4	22	21	
	3	15	4	5	10	4	21	20	
	4	16	4	5	9	4	17	18	
	5	17	3	5	7	4	16	16	
	6	18	3	5	7	4	15	15	
	7	20	2	5	4	4	13	12	
	8	26	2	5	4	4	10	10	
	9	27	2	5	2	4	9	9	
35	1	4	3	3	23	26	26	26	
	2	6	2	2	22	26	25	25	
	3	7	2	2	21	25	22	24	
	4	9	2	2	17	24	22	20	
	5	10	2	2	17	22	20	19	
	6	11	1	2	14	21	17	19	
	7	25	1	2	11	21	16	16	
	8	28	1	2	11	19	14	15	
	9	30	1	2	7	19	12	13	
36	1	2	5	3	23	25	9	28	
	2	3	4	3	23	24	9	25	
	3	5	4	3	23	23	9	25	
	4	6	3	3	23	23	9	22	
	5	8	3	3	23	21	9	20	
	6	22	3	3	23	21	9	19	
	7	27	3	3	23	20	9	19	
	8	29	2	3	23	19	9	15	
	9	30	2	3	23	19	9	14	
37	1	3	5	5	29	28	14	21	
	2	7	4	5	27	24	14	20	
	3	13	4	5	25	23	13	19	
	4	17	4	5	24	20	11	19	
	5	18	4	5	23	20	9	18	
	6	19	3	5	23	16	9	17	
	7	22	3	5	21	15	7	17	
	8	23	3	5	20	14	6	16	
	9	24	3	5	20	12	4	15	
38	1	2	4	1	26	19	28	11	
	2	4	4	1	25	19	26	11	
	3	5	4	1	24	19	24	11	
	4	7	3	1	22	19	20	10	
	5	15	2	1	20	19	18	10	
	6	22	2	1	19	19	16	10	
	7	26	2	1	16	19	14	10	
	8	27	1	1	14	19	11	9	
	9	30	1	1	13	19	11	9	
39	1	1	5	3	25	17	23	23	
	2	4	4	3	24	15	20	23	
	3	6	3	3	24	14	18	22	
	4	10	3	3	23	14	18	22	
	5	13	3	3	23	12	15	21	
	6	15	2	2	23	11	13	20	
	7	21	2	2	23	11	12	20	
	8	26	1	2	22	10	10	19	
	9	27	1	2	22	9	10	19	
40	1	1	2	4	25	19	20	12	
	2	5	2	4	20	18	20	11	
	3	9	2	3	18	18	20	11	
	4	16	2	3	14	18	19	11	
	5	17	2	2	14	17	18	10	
	6	18	1	2	12	17	18	10	
	7	23	1	2	7	16	17	10	
	8	26	1	1	5	16	17	10	
	9	30	1	1	2	16	17	10	
41	1	2	3	4	29	19	25	25	
	2	11	3	3	26	19	22	23	
	3	12	3	3	22	18	21	21	
	4	13	3	3	22	16	18	21	
	5	22	3	2	19	16	16	19	
	6	23	2	2	16	16	15	16	
	7	24	2	1	12	15	10	15	
	8	25	2	1	12	13	8	14	
	9	26	2	1	9	13	6	12	
42	1	1	3	1	23	18	26	27	
	2	5	3	1	22	16	24	27	
	3	6	3	1	21	13	24	26	
	4	8	3	1	19	11	23	25	
	5	9	2	1	19	10	21	24	
	6	10	2	1	16	9	20	23	
	7	13	1	1	15	8	18	22	
	8	20	1	1	14	7	16	21	
	9	23	1	1	13	4	14	20	
43	1	2	2	5	26	20	29	5	
	2	8	1	5	24	17	26	5	
	3	10	1	5	24	14	24	5	
	4	11	1	5	23	13	23	5	
	5	17	1	5	22	10	21	4	
	6	18	1	5	21	8	19	4	
	7	26	1	5	21	8	19	3	
	8	27	1	5	20	5	17	3	
	9	28	1	5	19	3	14	3	
44	1	9	2	4	26	23	21	12	
	2	13	2	4	25	22	20	11	
	3	15	2	4	25	22	19	11	
	4	16	2	3	24	22	17	11	
	5	18	2	3	24	21	14	11	
	6	19	2	3	23	21	13	11	
	7	20	2	3	23	20	13	11	
	8	24	2	2	22	20	10	11	
	9	28	2	2	22	20	8	11	
45	1	3	3	4	26	24	18	18	
	2	10	2	3	25	21	18	16	
	3	11	2	3	21	19	14	16	
	4	12	2	3	17	16	13	15	
	5	16	1	3	15	14	11	13	
	6	17	1	2	12	12	11	13	
	7	18	1	2	8	9	7	12	
	8	23	1	2	5	6	5	10	
	9	24	1	2	3	6	4	9	
46	1	2	3	5	26	29	24	18	
	2	3	3	5	26	25	21	17	
	3	14	3	5	20	23	20	16	
	4	18	3	5	17	22	18	15	
	5	20	3	5	15	20	16	15	
	6	21	3	5	14	17	15	14	
	7	22	3	5	9	15	13	14	
	8	27	3	5	5	13	12	13	
	9	28	3	5	5	13	12	12	
47	1	2	2	2	19	23	15	20	
	2	3	2	2	19	22	14	20	
	3	4	2	2	19	22	13	20	
	4	8	2	2	19	22	12	20	
	5	9	2	1	19	22	12	19	
	6	12	1	1	19	21	11	19	
	7	14	1	1	19	21	11	18	
	8	20	1	1	19	21	10	18	
	9	30	1	1	19	21	10	17	
48	1	12	1	4	21	25	22	20	
	2	13	1	3	18	24	22	18	
	3	14	1	3	18	22	22	17	
	4	17	1	2	16	21	22	17	
	5	23	1	2	14	21	22	16	
	6	26	1	2	9	20	22	15	
	7	27	1	1	9	19	22	14	
	8	28	1	1	6	19	22	14	
	9	29	1	1	5	18	22	13	
49	1	2	3	1	25	22	6	17	
	2	3	3	1	23	21	4	15	
	3	4	3	1	22	21	4	15	
	4	5	3	1	21	21	3	14	
	5	6	2	1	21	20	3	11	
	6	14	2	1	20	19	2	10	
	7	15	2	1	20	19	2	9	
	8	18	2	1	19	18	1	8	
	9	29	2	1	18	17	1	8	
50	1	6	2	4	27	25	4	15	
	2	8	2	4	26	21	3	15	
	3	12	2	4	23	18	3	15	
	4	13	2	4	22	18	3	15	
	5	18	2	4	21	15	3	15	
	6	19	2	4	17	11	2	15	
	7	20	2	4	16	6	2	15	
	8	22	2	4	13	3	2	15	
	9	26	2	4	12	3	2	15	
51	1	5	1	3	21	25	23	8	
	2	6	1	3	21	25	20	7	
	3	10	1	3	20	25	16	7	
	4	12	1	3	19	25	14	7	
	5	13	1	3	18	25	12	6	
	6	18	1	3	17	24	10	5	
	7	22	1	3	15	24	8	5	
	8	24	1	3	15	24	5	3	
	9	29	1	3	14	24	2	3	
52	1	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	N 1	N 2	N 3	N 4
	19	21	938	921	833	852

************************************************************************
