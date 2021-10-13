jobs  (incl. supersource/sink ):	52
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	7		2 3 4 5 6 7 10 
2	9	4		13 12 11 8 
3	9	5		26 15 13 12 8 
4	9	3		12 9 8 
5	9	3		13 11 8 
6	9	3		13 11 8 
7	9	6		26 19 17 16 14 13 
8	9	5		19 18 17 16 14 
9	9	4		26 19 17 13 
10	9	4		19 18 17 14 
11	9	4		26 22 19 15 
12	9	1		14 
13	9	4		25 22 21 18 
14	9	3		22 21 20 
15	9	3		31 21 20 
16	9	4		31 28 25 21 
17	9	3		31 28 21 
18	9	5		31 30 28 27 23 
19	9	5		31 30 28 27 24 
20	9	4		33 32 28 25 
21	9	3		30 27 23 
22	9	6		39 35 34 33 31 28 
23	9	1		24 
24	9	7		39 36 35 34 33 32 29 
25	9	5		39 35 34 30 27 
26	9	6		39 36 35 34 33 32 
27	9	2		36 29 
28	9	1		29 
29	9	6		44 43 41 40 38 37 
30	9	5		43 41 40 38 37 
31	9	3		43 41 36 
32	9	5		51 50 43 41 38 
33	9	4		44 43 41 38 
34	9	3		43 38 37 
35	9	5		49 48 44 42 40 
36	9	2		38 37 
37	9	5		50 48 47 46 42 
38	9	5		49 48 47 46 45 
39	9	3		47 43 42 
40	9	4		51 47 46 45 
41	9	1		42 
42	9	1		45 
43	9	1		46 
44	9	1		45 
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
2	1	3	27	10	17	23	26	23	22	14	
	2	7	24	9	16	21	26	22	22	14	
	3	12	23	8	15	19	24	21	22	12	
	4	23	19	6	15	18	24	20	22	11	
	5	24	17	6	13	15	22	19	21	10	
	6	25	16	5	12	12	22	18	21	10	
	7	26	14	4	11	10	20	16	21	9	
	8	27	12	3	9	10	20	16	20	8	
	9	28	9	3	8	8	19	15	20	7	
3	1	4	14	8	25	17	17	30	5	23	
	2	9	13	6	25	17	15	26	5	20	
	3	10	11	6	24	13	13	23	5	19	
	4	12	10	6	23	11	11	22	5	17	
	5	19	8	5	23	11	10	21	5	17	
	6	20	7	5	23	9	9	17	5	15	
	7	21	7	4	22	6	7	16	5	13	
	8	26	5	4	22	3	6	13	5	12	
	9	30	4	3	21	3	3	10	5	12	
4	1	3	9	21	2	29	23	19	22	23	
	2	8	8	21	1	29	23	17	22	22	
	3	10	8	20	1	28	23	15	20	20	
	4	11	7	20	1	26	23	12	19	19	
	5	17	7	19	1	25	23	12	16	18	
	6	18	7	18	1	24	23	7	15	17	
	7	19	6	18	1	24	23	6	14	16	
	8	24	6	17	1	23	23	5	10	14	
	9	25	5	17	1	21	23	1	9	13	
5	1	2	21	29	17	28	26	26	23	25	
	2	5	21	29	15	25	25	23	20	24	
	3	6	21	29	14	25	24	22	19	23	
	4	12	20	29	13	23	24	20	17	23	
	5	13	20	29	13	21	24	18	15	21	
	6	15	19	29	12	21	23	16	11	21	
	7	24	19	29	11	18	23	16	11	21	
	8	28	18	29	10	18	22	13	7	20	
	9	29	18	29	10	17	22	12	7	19	
6	1	2	26	12	21	7	28	20	19	20	
	2	17	25	10	21	7	25	20	18	16	
	3	18	25	10	20	6	25	20	18	16	
	4	19	24	9	19	6	22	20	18	13	
	5	20	24	8	19	5	20	20	17	11	
	6	21	24	7	18	5	20	20	16	10	
	7	26	23	5	17	4	18	20	16	9	
	8	27	22	4	17	4	16	20	14	8	
	9	30	22	3	16	3	15	20	14	6	
7	1	8	12	28	24	19	27	19	23	25	
	2	9	10	26	24	18	23	18	22	24	
	3	19	9	24	24	15	19	17	20	24	
	4	20	8	21	24	13	19	16	17	23	
	5	21	8	18	24	11	15	14	15	22	
	6	23	7	18	24	11	13	14	12	20	
	7	26	7	16	24	8	10	12	11	20	
	8	28	6	14	24	5	5	11	8	18	
	9	29	5	10	24	5	3	11	7	18	
8	1	1	13	17	24	28	18	29	24	19	
	2	4	13	14	24	25	18	29	22	19	
	3	9	12	14	22	23	16	29	18	17	
	4	10	11	12	22	21	15	29	14	13	
	5	11	10	10	20	19	14	29	11	11	
	6	12	10	8	19	16	13	29	9	9	
	7	13	10	8	19	15	11	29	7	9	
	8	14	9	6	17	10	10	29	5	5	
	9	20	8	4	16	9	10	29	3	4	
9	1	5	22	10	1	21	18	26	27	14	
	2	8	19	9	1	18	16	24	23	12	
	3	14	18	9	1	16	14	22	21	12	
	4	20	17	8	1	12	13	18	19	11	
	5	21	14	8	1	11	12	17	16	10	
	6	22	13	7	1	10	10	16	12	8	
	7	23	12	6	1	8	7	14	12	7	
	8	24	10	6	1	5	7	12	7	7	
	9	29	9	6	1	2	5	10	5	5	
10	1	7	24	23	19	28	12	20	27	20	
	2	11	23	23	17	27	11	16	25	19	
	3	18	22	21	17	27	11	14	25	19	
	4	19	20	21	16	25	11	12	23	18	
	5	20	19	19	16	25	11	10	22	18	
	6	21	18	17	16	24	10	9	19	18	
	7	23	17	16	15	23	10	7	18	17	
	8	27	16	14	14	23	10	3	17	17	
	9	28	15	14	14	22	10	2	14	17	
11	1	1	29	18	11	27	19	21	13	27	
	2	3	26	18	10	26	18	21	13	27	
	3	6	24	18	8	26	18	20	13	25	
	4	9	22	17	7	26	18	20	13	24	
	5	23	20	16	6	25	18	20	13	22	
	6	24	19	16	5	25	17	19	13	19	
	7	28	17	16	4	25	17	19	13	19	
	8	29	14	15	3	24	17	18	13	18	
	9	30	12	15	3	24	17	18	13	15	
12	1	3	23	20	6	19	23	28	7	13	
	2	6	20	17	6	18	21	26	7	13	
	3	15	19	17	5	17	20	23	7	13	
	4	17	19	14	4	17	18	23	7	13	
	5	18	18	13	3	15	16	20	7	13	
	6	19	17	11	3	14	12	19	7	13	
	7	20	16	9	2	13	10	16	7	13	
	8	26	14	7	1	10	10	14	7	13	
	9	30	13	5	1	9	8	13	7	13	
13	1	1	19	22	15	24	9	6	23	22	
	2	7	17	22	12	23	9	6	21	21	
	3	10	15	18	10	23	8	5	20	18	
	4	12	13	17	10	22	8	5	19	17	
	5	14	12	13	7	21	7	4	17	16	
	6	16	10	11	6	20	6	3	13	14	
	7	19	10	9	5	19	6	3	11	10	
	8	20	8	7	3	18	6	3	11	10	
	9	22	6	5	2	18	5	2	9	7	
14	1	4	25	21	28	8	13	16	25	23	
	2	9	23	20	25	8	12	15	22	19	
	3	11	19	18	24	6	9	15	20	19	
	4	14	19	16	21	6	8	13	19	15	
	5	17	16	15	19	4	8	13	17	15	
	6	19	16	12	16	4	5	12	16	12	
	7	25	12	12	12	2	4	11	14	8	
	8	27	11	8	10	2	2	10	13	6	
	9	28	9	8	8	1	2	10	13	5	
15	1	4	25	23	27	24	29	25	27	28	
	2	5	21	21	26	21	24	25	26	26	
	3	9	18	21	26	21	23	24	26	25	
	4	10	15	21	26	18	19	24	25	25	
	5	11	15	20	25	17	13	23	24	23	
	6	15	10	20	25	16	10	22	24	22	
	7	16	8	19	25	15	7	22	24	21	
	8	23	6	18	25	13	4	21	23	21	
	9	24	1	18	25	13	4	20	23	20	
16	1	1	23	25	21	21	17	27	19	25	
	2	12	23	22	18	20	17	26	18	21	
	3	13	22	22	17	18	17	25	18	17	
	4	14	20	19	15	17	17	24	17	16	
	5	20	19	18	12	17	17	23	17	11	
	6	21	19	18	12	16	16	22	17	11	
	7	23	18	16	10	15	16	21	16	9	
	8	27	17	15	7	14	16	20	16	3	
	9	30	15	13	6	13	16	19	16	3	
17	1	4	28	23	18	14	11	8	26	18	
	2	7	24	22	18	13	11	7	25	14	
	3	8	23	17	17	13	11	6	24	14	
	4	9	21	17	16	13	11	6	22	13	
	5	10	19	12	15	12	10	5	20	10	
	6	13	18	11	14	12	10	5	18	8	
	7	15	17	9	13	12	10	5	15	7	
	8	16	15	6	12	12	10	4	14	6	
	9	17	13	5	11	12	10	4	11	4	
18	1	1	15	16	7	20	24	15	17	25	
	2	9	15	16	5	19	23	13	17	21	
	3	13	13	16	5	18	23	12	17	18	
	4	14	13	15	4	18	23	12	17	18	
	5	15	10	14	4	16	22	9	17	15	
	6	16	10	14	3	16	22	9	17	12	
	7	22	9	13	3	15	22	8	17	10	
	8	25	7	13	3	15	22	7	17	6	
	9	27	6	13	2	14	22	5	17	6	
19	1	1	29	23	22	22	26	15	10	20	
	2	4	27	23	18	22	22	13	10	19	
	3	13	27	21	18	21	20	11	10	16	
	4	18	24	20	16	18	19	11	10	15	
	5	19	23	20	13	16	14	9	10	13	
	6	23	23	18	12	15	12	8	10	13	
	7	26	21	18	9	14	11	7	10	11	
	8	28	19	17	8	12	9	6	10	9	
	9	30	19	16	6	11	5	4	10	8	
20	1	2	26	12	17	27	17	19	11	11	
	2	5	25	12	15	21	16	19	11	10	
	3	6	23	11	14	21	14	15	9	9	
	4	12	20	10	13	15	12	14	9	8	
	5	13	17	10	10	13	10	12	8	8	
	6	17	16	10	10	12	10	11	8	7	
	7	23	12	9	6	9	8	8	7	6	
	8	24	11	8	5	5	6	5	6	5	
	9	30	7	8	3	2	5	4	5	5	
21	1	1	29	24	25	22	29	24	9	22	
	2	2	26	23	24	20	28	21	9	21	
	3	6	20	22	24	18	27	16	9	21	
	4	10	18	21	24	18	27	16	8	21	
	5	12	14	21	24	17	26	11	7	19	
	6	18	11	21	24	14	24	9	7	19	
	7	19	8	20	24	13	24	8	7	19	
	8	26	8	18	24	12	22	4	6	18	
	9	28	3	18	24	11	22	2	6	17	
22	1	1	15	28	28	16	20	19	16	9	
	2	5	15	26	23	15	16	18	15	9	
	3	7	15	23	22	15	15	18	15	9	
	4	8	15	21	20	14	15	18	13	8	
	5	16	14	20	18	13	11	18	12	8	
	6	17	14	19	14	13	10	18	11	8	
	7	18	14	17	10	12	9	18	10	8	
	8	19	13	14	8	12	7	18	9	7	
	9	20	13	13	8	12	5	18	7	7	
23	1	2	16	18	18	19	28	19	22	21	
	2	3	15	16	17	17	26	17	20	19	
	3	6	15	14	15	16	24	16	20	17	
	4	11	15	12	14	16	23	14	18	15	
	5	12	14	11	11	13	20	14	17	15	
	6	17	14	10	9	13	17	12	16	12	
	7	23	14	8	8	12	15	10	16	11	
	8	25	14	6	5	9	12	9	15	10	
	9	29	14	5	4	9	12	9	14	7	
24	1	2	6	23	19	11	21	28	22	18	
	2	5	6	23	18	10	18	28	20	17	
	3	8	6	21	17	9	18	26	16	16	
	4	10	6	20	15	9	17	26	14	14	
	5	12	6	20	15	8	14	25	14	11	
	6	16	6	19	14	7	12	23	12	7	
	7	17	6	17	12	7	12	23	10	6	
	8	23	6	17	11	7	9	21	7	3	
	9	28	6	16	11	6	8	21	6	3	
25	1	3	28	21	29	7	23	20	25	24	
	2	4	27	20	27	7	22	19	25	22	
	3	5	24	19	25	7	22	18	24	21	
	4	7	22	19	23	7	21	17	23	18	
	5	13	20	17	22	7	21	15	23	16	
	6	14	19	17	20	7	21	14	23	16	
	7	17	17	16	19	7	20	13	22	14	
	8	21	14	16	17	7	20	13	21	12	
	9	28	14	15	14	7	20	12	21	12	
26	1	5	26	8	25	7	27	23	4	22	
	2	9	25	7	24	6	26	19	3	21	
	3	13	24	7	22	6	25	17	3	21	
	4	14	24	6	18	5	24	14	3	21	
	5	16	23	6	17	5	24	12	2	21	
	6	21	22	6	16	4	23	11	2	21	
	7	26	22	6	13	4	22	7	2	21	
	8	28	21	5	10	4	21	6	2	21	
	9	29	21	5	8	3	20	3	2	21	
27	1	5	24	24	24	20	30	18	26	4	
	2	12	23	24	24	20	29	16	26	4	
	3	14	23	24	24	16	29	14	26	3	
	4	15	22	24	24	15	29	14	26	3	
	5	16	22	24	24	14	28	12	26	3	
	6	17	22	24	24	9	28	12	25	2	
	7	28	22	24	24	8	27	11	25	1	
	8	29	21	24	24	7	27	9	25	1	
	9	30	21	24	24	3	27	8	25	1	
28	1	2	13	17	26	27	26	27	20	11	
	2	3	12	15	25	26	26	22	16	10	
	3	4	12	12	22	24	26	21	16	10	
	4	5	11	10	22	22	26	17	14	10	
	5	11	11	8	20	19	25	14	11	10	
	6	16	11	7	16	19	25	12	9	10	
	7	17	10	7	16	17	25	7	7	10	
	8	27	10	5	14	13	25	6	7	10	
	9	28	9	2	10	12	25	3	4	10	
29	1	5	29	19	4	23	26	6	6	23	
	2	6	28	18	4	23	24	4	6	23	
	3	8	27	16	4	22	22	4	6	23	
	4	9	25	15	4	20	22	4	6	23	
	5	15	24	14	4	19	20	3	6	23	
	6	17	24	13	4	18	19	3	6	22	
	7	23	23	12	4	17	16	2	6	22	
	8	25	22	11	4	17	16	2	6	22	
	9	28	21	11	4	15	14	1	6	22	
30	1	2	20	18	29	18	20	1	9	11	
	2	5	18	16	29	17	18	1	8	10	
	3	8	17	14	27	13	18	1	8	10	
	4	9	14	13	26	13	17	1	8	10	
	5	11	13	10	26	11	13	1	8	8	
	6	13	10	8	25	9	13	1	7	8	
	7	16	8	8	24	8	11	1	7	8	
	8	20	6	6	23	4	9	1	7	7	
	9	26	5	3	23	4	7	1	7	6	
31	1	1	15	9	22	16	19	28	20	11	
	2	2	14	9	19	16	17	23	20	10	
	3	6	14	8	18	14	17	22	20	9	
	4	10	13	7	15	13	14	20	20	8	
	5	16	11	6	14	12	12	18	20	7	
	6	17	11	6	11	11	10	15	19	6	
	7	22	9	5	10	11	8	13	19	6	
	8	26	9	5	9	10	6	12	19	4	
	9	27	7	4	6	9	4	10	19	3	
32	1	1	22	23	29	19	11	17	18	28	
	2	2	19	19	29	17	9	17	15	23	
	3	5	18	19	28	16	9	15	15	20	
	4	8	18	16	28	14	7	15	12	18	
	5	14	15	15	27	12	7	14	11	17	
	6	20	15	12	27	12	7	14	8	12	
	7	23	13	11	27	11	6	13	7	10	
	8	26	12	9	26	9	5	12	5	8	
	9	27	11	7	26	8	4	11	1	4	
33	1	1	24	25	15	23	9	9	28	13	
	2	2	23	22	13	19	7	7	25	12	
	3	3	19	21	13	17	7	7	23	12	
	4	4	15	19	12	14	6	6	20	12	
	5	13	14	17	10	14	5	6	18	11	
	6	14	9	13	10	10	5	5	14	11	
	7	23	8	10	8	10	3	5	13	10	
	8	25	6	8	8	6	3	5	10	10	
	9	27	2	7	7	6	2	4	8	9	
34	1	2	18	20	18	14	23	30	11	23	
	2	5	16	18	17	13	22	29	11	21	
	3	7	15	17	16	13	21	28	11	19	
	4	8	15	15	15	12	19	28	10	17	
	5	9	13	15	14	12	18	27	10	15	
	6	13	13	13	13	11	17	27	10	12	
	7	21	11	11	10	11	16	26	9	12	
	8	23	10	11	9	10	16	26	9	10	
	9	28	10	10	8	10	15	26	9	7	
35	1	5	26	17	22	17	28	15	23	13	
	2	10	26	17	21	14	27	15	22	13	
	3	11	26	17	17	12	26	15	21	13	
	4	13	26	17	14	10	26	14	19	13	
	5	14	25	17	13	10	24	14	19	13	
	6	15	25	17	11	7	24	14	17	13	
	7	18	24	17	9	5	24	13	17	13	
	8	22	24	17	4	4	22	13	15	13	
	9	23	24	17	3	3	22	13	15	13	
36	1	1	15	25	18	19	21	29	11	9	
	2	9	14	24	17	17	20	26	11	8	
	3	10	13	20	17	15	18	24	11	8	
	4	12	13	19	16	13	17	24	11	7	
	5	17	11	15	16	11	16	20	10	6	
	6	18	10	12	15	9	15	20	10	6	
	7	26	8	9	15	6	14	19	10	5	
	8	27	8	8	14	6	14	15	10	5	
	9	30	6	4	14	3	12	14	10	5	
37	1	2	21	26	28	19	18	16	28	20	
	2	4	19	23	26	17	16	16	26	17	
	3	13	18	22	25	14	14	15	22	16	
	4	14	16	20	24	13	12	14	22	13	
	5	20	16	20	24	12	11	12	19	10	
	6	22	15	18	24	11	10	11	17	9	
	7	24	13	16	22	7	9	8	16	7	
	8	29	12	16	21	5	5	7	13	4	
	9	30	10	13	21	4	4	7	11	4	
38	1	2	10	15	25	27	23	16	11	20	
	2	9	9	13	20	24	23	13	10	19	
	3	10	9	13	19	23	22	13	10	19	
	4	11	9	13	18	21	22	12	9	18	
	5	12	9	12	16	21	21	10	9	16	
	6	18	9	11	14	19	21	8	9	16	
	7	25	9	11	11	16	21	8	8	14	
	8	27	9	10	9	16	20	6	8	14	
	9	29	9	10	6	14	20	5	8	12	
39	1	4	26	27	25	14	16	24	26	22	
	2	11	25	22	24	13	15	22	23	22	
	3	14	24	18	22	13	14	19	21	20	
	4	18	22	17	20	13	13	16	19	18	
	5	19	21	15	17	12	12	14	18	17	
	6	22	21	10	14	12	11	12	17	16	
	7	24	20	10	13	12	10	11	13	13	
	8	25	19	6	10	12	9	8	12	13	
	9	30	17	3	9	12	9	7	10	12	
40	1	6	21	20	18	26	6	12	13	18	
	2	7	20	20	17	25	6	12	10	16	
	3	11	19	18	17	21	6	10	9	14	
	4	14	18	17	16	18	5	10	8	13	
	5	15	17	15	16	16	5	9	8	11	
	6	16	16	14	16	12	4	7	5	8	
	7	24	15	13	15	10	4	6	4	6	
	8	25	14	11	15	7	3	6	4	6	
	9	26	14	10	15	4	3	4	2	4	
41	1	4	28	26	18	7	15	16	25	25	
	2	5	28	26	16	7	12	14	23	24	
	3	6	26	23	15	7	12	13	21	24	
	4	8	26	20	14	6	11	12	20	22	
	5	9	25	17	11	5	9	10	17	21	
	6	11	25	14	10	5	7	8	14	20	
	7	16	24	9	9	5	6	6	10	20	
	8	23	22	7	8	4	5	3	9	19	
	9	24	22	3	6	4	4	2	8	18	
42	1	1	13	19	21	28	28	13	16	28	
	2	4	13	16	19	27	28	13	16	27	
	3	6	13	15	18	27	27	12	15	25	
	4	7	12	11	17	27	26	12	14	23	
	5	12	12	10	14	27	25	12	14	21	
	6	18	12	7	13	27	23	11	14	20	
	7	25	11	7	11	27	23	11	13	16	
	8	28	11	3	9	27	22	10	12	15	
	9	30	11	3	9	27	21	10	12	13	
43	1	3	26	27	29	13	14	15	3	25	
	2	6	25	26	26	11	13	15	3	25	
	3	7	25	26	26	11	12	15	3	24	
	4	10	24	26	25	10	11	15	3	22	
	5	15	23	26	24	8	10	15	3	21	
	6	18	23	26	21	7	9	15	3	20	
	7	25	22	26	20	7	6	15	3	20	
	8	28	22	26	19	6	6	15	3	18	
	9	29	22	26	18	5	5	15	3	18	
44	1	4	25	24	26	29	14	7	22	17	
	2	7	24	24	24	27	13	6	19	16	
	3	8	20	23	21	27	12	6	19	15	
	4	10	18	20	20	25	11	6	16	12	
	5	12	17	18	16	23	11	6	15	12	
	6	18	17	17	16	22	11	6	12	10	
	7	23	13	15	13	22	10	6	10	8	
	8	26	11	14	9	21	9	6	9	6	
	9	27	11	13	7	19	9	6	7	5	
45	1	5	27	9	14	15	13	13	13	24	
	2	6	25	8	13	14	12	13	12	24	
	3	7	25	8	11	14	12	13	11	22	
	4	15	24	8	10	14	11	13	10	20	
	5	19	20	8	8	14	11	13	8	19	
	6	23	19	7	6	14	11	13	6	16	
	7	24	19	7	6	14	10	13	4	16	
	8	25	15	7	5	14	10	13	3	14	
	9	28	15	7	2	14	10	13	3	12	
46	1	4	22	12	17	22	21	20	15	25	
	2	5	21	12	17	22	21	20	14	23	
	3	6	19	12	17	18	18	18	12	22	
	4	7	16	12	17	17	15	18	11	18	
	5	8	14	12	16	15	13	17	10	14	
	6	11	11	12	16	15	10	16	9	12	
	7	15	10	12	16	11	10	15	9	8	
	8	29	6	12	16	10	6	14	8	5	
	9	30	6	12	16	9	6	13	7	2	
47	1	8	21	24	23	27	20	28	6	23	
	2	9	21	23	21	26	20	25	6	22	
	3	14	20	22	19	24	19	24	5	20	
	4	15	19	20	18	20	17	23	5	17	
	5	16	18	17	15	17	16	19	3	17	
	6	17	17	17	14	16	15	18	3	15	
	7	21	15	14	12	12	15	18	3	12	
	8	22	15	12	11	9	13	14	2	11	
	9	27	14	10	9	5	12	14	1	9	
48	1	1	17	15	12	26	20	30	29	27	
	2	4	17	12	11	24	19	27	26	26	
	3	7	15	12	10	23	16	27	25	26	
	4	12	15	11	9	21	14	26	24	26	
	5	14	12	10	8	21	13	24	22	26	
	6	16	12	9	8	19	10	23	20	25	
	7	22	10	8	6	17	10	21	17	25	
	8	23	10	6	6	16	7	21	16	25	
	9	26	8	5	5	15	6	20	15	25	
49	1	1	24	25	12	20	25	22	28	5	
	2	8	24	24	12	18	22	22	26	5	
	3	9	20	23	11	16	21	21	24	5	
	4	11	17	23	9	16	20	20	24	5	
	5	16	17	20	8	11	17	19	22	5	
	6	17	15	20	8	9	17	19	21	5	
	7	18	13	19	6	8	15	18	19	5	
	8	27	8	18	6	6	13	16	17	5	
	9	29	6	16	5	4	12	16	15	5	
50	1	1	28	14	18	25	16	11	29	7	
	2	8	28	14	17	21	15	10	29	7	
	3	9	28	14	16	19	15	10	27	6	
	4	10	28	13	15	18	15	10	27	6	
	5	12	27	13	12	14	15	10	25	6	
	6	18	27	13	12	12	14	9	25	5	
	7	19	26	13	10	11	14	9	23	4	
	8	21	26	12	10	7	14	9	23	4	
	9	27	26	12	8	4	14	9	22	4	
51	1	2	7	24	9	23	19	9	17	25	
	2	4	6	24	9	22	18	8	16	21	
	3	6	5	24	9	21	17	8	16	20	
	4	10	5	24	8	19	17	7	14	18	
	5	15	4	24	8	19	17	7	14	16	
	6	16	4	24	8	17	16	7	14	12	
	7	21	3	24	8	15	16	7	13	12	
	8	25	3	24	7	15	15	6	12	10	
	9	26	2	24	7	14	15	6	11	8	
52	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	99	91	95	90	792	734	712	726

************************************************************************
