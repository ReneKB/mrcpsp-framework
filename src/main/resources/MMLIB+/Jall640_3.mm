jobs  (incl. supersource/sink ):	102
RESOURCES
- renewable                 : 4 R
- nonrenewable              : 4 N
- doubly constrained        : 0 D
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
1	1	5		2 3 4 7 9 
2	9	6		20 16 12 8 6 5 
3	9	3		10 6 5 
4	9	6		25 15 13 12 11 6 
5	9	10		30 29 27 26 22 19 17 15 14 13 
6	9	10		40 30 29 27 23 22 21 19 18 17 
7	9	6		30 27 26 25 15 13 
8	9	9		30 28 27 25 23 22 19 18 15 
9	9	8		40 30 27 26 23 21 18 17 
10	9	8		40 32 30 25 23 22 21 18 
11	9	7		40 32 29 28 27 23 18 
12	9	6		40 32 28 27 26 19 
13	9	5		40 32 23 21 18 
14	9	3		40 32 18 
15	9	5		45 40 37 32 24 
16	9	4		40 32 29 24 
17	9	5		45 34 32 31 28 
18	9	5		45 41 37 36 24 
19	9	5		45 42 41 36 24 
20	9	7		45 42 41 38 37 34 31 
21	9	4		45 41 31 28 
22	9	8		48 46 44 42 41 37 36 35 
23	9	6		47 45 38 35 34 33 
24	9	3		38 34 31 
25	9	6		48 45 38 37 36 35 
26	9	3		44 37 31 
27	9	9		57 50 49 48 46 45 44 41 35 
28	9	10		52 50 49 48 47 44 43 42 39 38 
29	9	5		46 41 37 36 35 
30	9	4		46 45 41 33 
31	9	4		47 46 35 33 
32	9	5		48 42 41 39 36 
33	9	8		57 56 52 50 49 48 43 39 
34	9	6		56 52 48 46 44 39 
35	9	4		56 52 43 39 
36	9	5		57 52 49 47 43 
37	9	9		68 65 61 60 59 57 55 51 50 
38	9	5		62 56 54 51 46 
39	9	8		68 62 61 60 59 55 53 51 
40	9	8		68 67 64 62 60 59 53 49 
41	9	6		61 56 55 52 51 47 
42	9	7		68 62 61 60 57 54 53 
43	9	8		68 64 62 61 60 58 54 53 
44	9	9		83 69 68 67 65 64 62 61 54 
45	9	7		78 69 61 60 59 58 55 
46	9	6		78 71 65 61 58 55 
47	9	8		83 71 69 67 66 65 64 62 
48	9	8		83 78 77 69 68 65 63 60 
49	9	4		83 69 61 54 
50	9	7		83 77 71 69 67 66 62 
51	9	7		83 78 73 69 67 66 64 
52	9	4		68 64 63 62 
53	9	7		83 82 78 77 76 65 63 
54	9	6		82 78 77 76 71 63 
55	9	4		83 76 64 63 
56	9	4		83 77 68 63 
57	9	4		78 69 66 64 
58	9	4		82 81 76 63 
59	9	4		83 73 71 66 
60	9	6		90 82 76 72 71 70 
61	9	5		82 81 77 75 66 
62	9	9		90 89 82 80 78 76 75 73 72 
63	9	4		79 75 73 66 
64	9	9		101 100 89 82 81 80 79 77 74 
65	9	7		101 89 81 80 79 75 72 
66	9	4		90 87 72 70 
67	9	7		101 89 86 82 79 76 75 
68	9	5		90 81 76 75 74 
69	9	7		101 100 99 89 86 84 75 
70	9	9		101 100 99 98 97 96 89 84 80 
71	9	6		100 86 85 84 81 75 
72	9	3		100 84 74 
73	9	3		101 84 74 
74	9	7		99 98 97 96 88 86 85 
75	9	7		98 97 94 93 91 88 87 
76	9	6		100 98 97 95 87 85 
77	9	5		97 94 87 86 84 
78	9	6		100 99 98 94 92 84 
79	9	6		99 98 97 96 90 88 
80	9	4		94 92 88 86 
81	9	4		94 93 92 91 
82	9	4		97 96 93 92 
83	9	4		94 93 92 91 
84	9	3		95 93 91 
85	9	3		94 92 91 
86	9	2		93 91 
87	9	2		96 92 
88	9	1		95 
89	9	1		92 
90	9	1		91 
91	9	1		102 
92	9	1		102 
93	9	1		102 
94	9	1		102 
95	9	1		102 
96	9	1		102 
97	9	1		102 
98	9	1		102 
99	9	1		102 
100	9	1		102 
101	9	1		102 
102	1	0		
************************************************************************
REQUESTS/DURATIONS
jobnr.	mode	dur	R1	R2	R3	R4	N1	N2	N3	N4	
------------------------------------------------------------------------
1	1	0	0	0	0	0	0	0	0	0	
2	1	6	25	8	11	26	28	23	20	10	
	2	9	20	7	10	22	27	21	19	9	
	3	10	19	7	9	21	26	21	19	9	
	4	11	17	6	9	20	25	20	18	7	
	5	18	12	6	8	17	23	20	18	7	
	6	22	10	5	7	15	23	20	18	6	
	7	23	10	5	7	13	22	19	17	6	
	8	24	5	4	5	8	20	19	17	4	
	9	29	5	4	5	7	19	18	17	4	
3	1	1	9	29	27	25	12	9	24	22	
	2	2	8	26	22	25	11	9	22	21	
	3	3	8	25	22	25	11	8	21	20	
	4	8	8	24	19	25	10	6	18	18	
	5	10	8	22	18	25	9	6	13	17	
	6	14	8	20	13	25	9	4	11	17	
	7	16	8	19	12	25	9	3	11	15	
	8	26	8	19	9	25	8	2	6	15	
	9	30	8	16	9	25	8	2	4	14	
4	1	6	26	21	22	12	6	22	22	18	
	2	8	25	20	20	12	6	21	20	18	
	3	11	25	18	17	11	5	21	17	15	
	4	13	24	17	14	11	5	21	16	15	
	5	14	23	15	12	10	3	21	14	12	
	6	18	23	13	11	9	3	21	13	11	
	7	19	23	11	6	8	2	21	13	10	
	8	26	22	11	6	7	1	21	10	9	
	9	29	22	9	1	7	1	21	10	7	
5	1	8	13	28	28	23	4	20	7	24	
	2	9	11	24	26	22	3	18	6	24	
	3	10	9	24	23	21	3	17	6	22	
	4	19	8	22	21	18	3	15	5	22	
	5	20	6	18	20	17	3	14	5	20	
	6	21	6	17	19	17	3	14	5	20	
	7	23	4	14	18	16	3	13	5	19	
	8	28	3	13	17	14	3	12	4	18	
	9	30	2	10	14	13	3	11	4	17	
6	1	4	21	15	27	26	21	8	26	8	
	2	5	20	14	25	25	21	7	25	8	
	3	9	20	14	24	23	20	6	25	7	
	4	12	20	14	21	22	20	6	24	6	
	5	20	19	14	20	22	19	4	24	6	
	6	21	19	13	20	21	19	4	24	5	
	7	24	18	13	18	19	18	2	23	5	
	8	26	18	13	16	18	18	2	23	4	
	9	30	18	13	14	17	18	1	23	4	
7	1	3	26	25	27	7	24	19	18	22	
	2	9	26	24	26	6	23	16	18	21	
	3	11	24	24	26	6	23	14	17	19	
	4	13	23	24	25	5	23	14	15	16	
	5	17	21	23	25	5	23	13	15	16	
	6	19	20	23	25	5	23	10	13	15	
	7	20	19	23	24	5	23	9	13	12	
	8	23	18	22	24	4	23	8	12	11	
	9	24	16	22	24	4	23	7	11	9	
8	1	6	16	12	30	6	25	22	12	9	
	2	12	15	9	28	5	24	22	12	8	
	3	13	14	8	27	5	24	21	12	8	
	4	17	14	7	26	4	23	20	12	8	
	5	19	12	6	26	4	22	18	12	6	
	6	20	11	4	25	4	21	18	11	6	
	7	22	9	4	25	4	19	17	11	5	
	8	24	9	2	23	3	18	16	11	4	
	9	30	7	1	23	3	17	15	11	4	
9	1	6	5	21	17	25	10	3	29	25	
	2	7	5	18	15	23	10	3	25	22	
	3	11	4	17	13	20	9	3	24	20	
	4	14	4	17	13	18	7	3	24	19	
	5	17	3	15	10	15	7	3	21	16	
	6	18	3	14	10	11	6	2	20	13	
	7	23	2	12	9	9	5	2	19	12	
	8	29	2	12	7	6	5	2	17	11	
	9	30	1	11	6	5	4	2	16	9	
10	1	2	25	5	27	26	16	18	3	22	
	2	6	23	5	24	25	13	17	2	18	
	3	8	22	5	21	20	11	17	2	17	
	4	11	22	5	21	17	10	17	2	15	
	5	12	21	4	18	16	8	17	2	13	
	6	13	20	4	17	13	6	16	2	11	
	7	14	18	3	14	7	4	16	2	8	
	8	15	18	3	12	6	3	16	2	6	
	9	23	17	3	10	4	1	16	2	6	
11	1	2	22	30	24	11	30	5	18	16	
	2	7	18	28	24	11	27	4	16	13	
	3	8	15	28	24	9	27	4	15	12	
	4	11	15	27	23	9	26	4	13	12	
	5	15	11	26	23	8	25	3	11	10	
	6	19	8	24	23	6	23	3	11	8	
	7	20	7	24	23	6	22	2	10	8	
	8	28	4	22	22	5	22	1	8	6	
	9	29	3	22	22	3	21	1	7	5	
12	1	1	25	24	28	19	27	3	20	16	
	2	16	23	24	26	17	26	2	20	13	
	3	17	22	24	25	15	26	2	17	12	
	4	18	21	24	24	15	26	2	17	10	
	5	24	20	23	22	13	26	1	14	8	
	6	25	17	23	20	11	26	1	14	7	
	7	26	17	23	20	9	26	1	12	5	
	8	27	16	22	18	6	26	1	9	4	
	9	28	14	22	18	3	26	1	8	3	
13	1	2	19	16	2	27	17	19	15	30	
	2	6	19	16	1	23	14	16	13	26	
	3	10	17	15	1	22	13	16	11	24	
	4	13	15	14	1	18	11	12	11	22	
	5	17	10	11	1	18	8	11	8	18	
	6	20	10	10	1	13	7	10	7	16	
	7	21	8	8	1	13	4	7	7	13	
	8	23	5	7	1	10	3	4	4	11	
	9	28	4	6	1	6	2	3	4	11	
14	1	11	26	25	20	12	8	16	18	10	
	2	12	25	24	19	11	7	14	17	9	
	3	13	24	22	18	11	7	14	16	9	
	4	14	23	20	18	10	7	14	16	8	
	5	15	23	18	17	10	6	13	15	7	
	6	18	22	16	15	10	6	12	13	6	
	7	19	21	14	14	9	5	12	13	6	
	8	23	21	12	13	9	4	12	11	5	
	9	25	20	11	13	9	4	11	11	4	
15	1	3	15	18	21	26	17	17	28	30	
	2	5	14	17	19	26	16	16	28	29	
	3	6	12	17	16	22	13	14	27	29	
	4	7	11	17	14	21	12	13	24	29	
	5	12	9	17	13	18	10	13	23	28	
	6	22	8	17	10	14	9	13	22	28	
	7	23	7	17	9	11	9	11	19	28	
	8	24	6	17	6	8	6	11	19	28	
	9	25	5	17	4	6	5	10	17	28	
16	1	10	25	28	25	9	21	24	16	29	
	2	13	23	27	24	9	20	23	16	26	
	3	15	20	23	24	9	20	22	15	26	
	4	16	20	23	22	9	19	22	13	23	
	5	18	19	19	22	9	19	21	13	21	
	6	19	17	18	21	9	18	20	11	21	
	7	20	14	17	20	9	18	20	11	19	
	8	23	13	13	19	9	17	20	10	17	
	9	27	13	11	19	9	17	19	9	17	
17	1	4	30	29	6	16	28	11	15	24	
	2	7	26	29	6	16	26	11	14	24	
	3	8	25	29	6	16	24	11	14	22	
	4	9	24	28	6	15	20	11	13	22	
	5	15	21	27	6	15	18	10	13	21	
	6	23	20	27	6	15	18	10	12	21	
	7	24	18	26	6	14	15	10	12	19	
	8	29	16	26	6	14	12	10	12	18	
	9	30	14	26	6	14	11	10	11	18	
18	1	8	14	14	7	20	15	19	6	24	
	2	9	13	13	6	20	14	19	5	21	
	3	11	13	12	5	19	13	19	5	18	
	4	12	12	12	4	19	12	18	5	17	
	5	13	12	10	3	18	10	18	4	14	
	6	14	12	8	3	18	9	18	4	10	
	7	15	11	7	2	17	9	18	4	7	
	8	16	11	6	1	17	7	17	4	6	
	9	21	11	4	1	17	7	17	4	4	
19	1	14	26	17	5	29	22	10	11	20	
	2	15	25	16	5	27	21	9	11	18	
	3	17	24	13	5	25	21	9	11	18	
	4	22	21	12	4	24	21	8	11	18	
	5	23	19	9	4	22	21	8	11	16	
	6	24	17	8	4	21	21	7	11	16	
	7	25	14	7	3	20	21	7	11	16	
	8	26	12	6	3	18	21	6	11	14	
	9	28	10	4	3	17	21	6	11	14	
20	1	2	10	16	19	20	21	27	18	29	
	2	3	10	15	18	19	19	22	17	26	
	3	5	8	13	16	18	18	22	15	24	
	4	11	8	10	15	18	18	17	15	23	
	5	13	6	10	15	16	16	15	13	20	
	6	17	5	8	12	15	15	14	12	20	
	7	26	5	6	10	14	13	11	11	17	
	8	29	4	4	10	11	13	6	8	14	
	9	30	3	2	9	11	11	6	7	14	
21	1	9	22	19	25	10	20	19	6	23	
	2	13	21	19	23	9	17	17	6	22	
	3	14	21	18	21	7	16	17	6	20	
	4	20	18	18	21	6	12	15	6	19	
	5	21	17	18	20	6	10	14	6	18	
	6	27	15	17	18	4	10	12	6	17	
	7	28	13	17	16	3	8	12	6	17	
	8	29	13	16	15	2	3	10	6	16	
	9	30	12	16	14	1	2	9	6	15	
22	1	1	22	19	25	25	9	2	1	7	
	2	8	22	19	23	23	9	2	1	7	
	3	13	20	15	21	23	8	2	1	6	
	4	14	19	15	20	19	8	2	1	6	
	5	23	18	12	18	17	6	2	1	5	
	6	24	17	10	17	15	6	1	1	4	
	7	25	16	9	16	14	5	1	1	4	
	8	26	15	5	14	11	4	1	1	3	
	9	28	14	5	13	9	4	1	1	3	
23	1	2	29	12	25	25	8	21	8	15	
	2	9	25	11	21	23	8	20	7	14	
	3	10	24	9	20	21	7	18	6	14	
	4	11	22	9	18	21	6	16	4	13	
	5	12	17	7	16	17	5	13	4	13	
	6	13	16	7	14	17	4	13	4	13	
	7	14	14	5	11	16	3	10	2	12	
	8	28	11	4	8	12	2	9	2	12	
	9	30	8	3	6	12	2	6	1	11	
24	1	5	23	25	27	19	30	16	9	20	
	2	6	21	25	26	19	28	16	8	17	
	3	15	17	23	26	19	28	14	7	16	
	4	16	16	22	25	18	28	14	6	13	
	5	17	14	21	25	18	27	12	6	11	
	6	23	12	21	25	18	26	11	5	10	
	7	26	10	20	24	18	26	9	4	6	
	8	27	5	19	24	17	25	7	4	5	
	9	30	5	18	24	17	25	7	3	3	
25	1	3	17	25	27	27	11	24	10	30	
	2	4	13	23	27	25	11	23	9	29	
	3	7	13	22	27	24	9	22	9	28	
	4	8	11	22	26	24	9	20	8	28	
	5	10	10	19	25	23	8	19	8	28	
	6	11	8	18	25	23	7	19	8	27	
	7	23	6	17	24	21	7	17	7	26	
	8	24	4	16	24	21	6	16	7	26	
	9	30	3	15	24	20	5	15	7	26	
26	1	1	21	27	29	17	11	11	30	20	
	2	5	19	25	24	17	10	11	30	18	
	3	10	18	21	20	13	10	11	30	16	
	4	14	17	18	19	11	9	11	30	15	
	5	18	17	14	15	10	9	11	30	10	
	6	19	16	11	12	9	9	11	30	9	
	7	27	14	8	11	7	9	11	30	6	
	8	28	14	5	5	6	8	11	30	5	
	9	30	13	5	2	4	8	11	30	2	
27	1	7	28	24	9	21	23	26	21	23	
	2	9	27	24	9	21	20	23	20	22	
	3	13	27	24	9	21	19	21	17	22	
	4	15	26	24	9	21	18	19	16	22	
	5	16	26	24	9	21	16	16	15	21	
	6	20	26	24	9	20	13	15	12	21	
	7	21	25	24	9	20	13	12	10	21	
	8	22	25	24	9	20	11	12	7	20	
	9	30	25	24	9	20	10	10	7	20	
28	1	6	29	7	17	20	11	22	23	29	
	2	7	26	7	14	19	10	21	21	29	
	3	12	22	7	12	19	9	19	21	29	
	4	13	22	7	11	19	8	18	17	29	
	5	15	19	7	10	19	6	14	16	28	
	6	22	15	6	7	19	6	14	15	28	
	7	23	15	6	4	19	4	12	12	28	
	8	25	11	6	3	19	3	10	9	28	
	9	26	9	6	1	19	2	9	9	28	
29	1	6	30	12	18	19	29	12	18	21	
	2	7	28	12	18	18	29	12	17	21	
	3	8	26	11	18	18	29	12	16	21	
	4	10	26	11	17	17	29	12	14	20	
	5	16	24	9	16	16	28	12	12	20	
	6	19	23	9	16	16	28	12	11	20	
	7	23	22	9	15	15	27	12	10	19	
	8	24	22	7	15	15	27	12	8	19	
	9	30	20	7	15	15	27	12	7	19	
30	1	4	28	21	29	27	25	8	26	30	
	2	6	28	18	24	23	25	7	26	28	
	3	7	28	16	21	18	21	7	24	24	
	4	8	28	14	19	17	19	6	21	24	
	5	18	28	11	15	14	18	6	19	20	
	6	19	28	10	13	12	15	6	18	19	
	7	20	28	8	10	7	15	6	18	16	
	8	21	28	5	6	5	11	5	14	15	
	9	22	28	2	2	2	11	5	13	13	
31	1	2	13	10	16	17	21	25	21	23	
	2	10	10	10	15	17	19	22	20	22	
	3	18	10	8	13	17	16	22	19	22	
	4	19	8	7	12	17	16	20	18	21	
	5	20	7	7	12	16	13	18	14	21	
	6	22	6	6	10	16	12	18	14	20	
	7	23	5	4	10	16	9	16	13	20	
	8	25	5	4	8	16	6	15	10	20	
	9	28	4	3	7	16	4	15	9	19	
32	1	3	20	10	28	22	24	11	22	24	
	2	8	20	10	27	21	23	10	20	22	
	3	9	20	9	26	21	22	9	20	20	
	4	13	20	9	26	21	21	9	19	18	
	5	21	19	8	25	21	19	9	17	17	
	6	24	19	8	24	21	16	8	17	14	
	7	25	19	7	24	21	16	8	15	13	
	8	26	18	7	22	21	15	7	15	12	
	9	27	18	7	22	21	12	7	13	10	
33	1	3	25	27	21	28	23	23	20	7	
	2	7	22	24	20	24	19	23	19	6	
	3	8	21	22	20	23	18	22	17	6	
	4	9	18	18	20	19	14	21	17	6	
	5	10	18	15	20	19	11	20	16	6	
	6	11	16	11	19	17	11	18	15	6	
	7	12	12	11	19	13	9	17	13	6	
	8	16	10	7	19	12	6	17	13	6	
	9	19	9	3	19	11	5	16	11	6	
34	1	2	24	29	14	11	19	14	20	16	
	2	3	21	27	12	10	18	14	17	16	
	3	5	21	26	11	10	17	14	17	16	
	4	11	17	26	9	9	15	14	16	15	
	5	17	16	25	8	9	14	14	13	15	
	6	19	13	23	6	9	11	14	12	15	
	7	24	12	22	6	8	9	14	10	15	
	8	27	11	20	3	8	9	14	9	14	
	9	30	8	20	3	8	8	14	9	14	
35	1	4	9	10	22	13	15	18	26	27	
	2	6	9	8	19	13	14	17	24	25	
	3	9	8	8	16	13	14	17	23	24	
	4	10	7	7	14	13	14	17	22	23	
	5	12	7	6	13	13	13	17	22	22	
	6	14	6	6	11	13	12	16	22	22	
	7	17	5	6	8	13	12	16	21	21	
	8	18	5	5	8	13	11	16	19	20	
	9	30	4	4	6	13	11	16	19	18	
36	1	2	29	29	19	14	5	27	25	15	
	2	6	27	29	19	12	4	22	23	15	
	3	7	25	28	19	12	4	21	20	15	
	4	11	24	28	19	11	3	18	19	15	
	5	12	21	27	19	11	3	16	18	14	
	6	14	20	26	19	11	3	11	17	14	
	7	20	16	26	19	10	3	9	14	13	
	8	21	15	25	19	9	2	7	14	13	
	9	25	13	25	19	9	2	4	13	13	
37	1	2	15	23	26	21	5	27	21	24	
	2	3	14	22	24	17	4	23	21	20	
	3	5	13	21	21	17	4	22	21	19	
	4	16	12	20	19	16	4	20	21	18	
	5	17	12	20	17	14	3	19	21	17	
	6	18	11	19	16	12	3	17	21	16	
	7	19	10	18	14	10	3	16	21	13	
	8	20	8	18	12	10	2	14	21	13	
	9	21	7	17	9	8	2	14	21	11	
38	1	2	8	12	14	20	19	26	25	21	
	2	3	8	12	13	20	19	26	21	18	
	3	5	7	11	11	19	18	26	21	17	
	4	6	7	9	10	17	17	25	19	13	
	5	8	7	8	10	16	17	25	16	13	
	6	12	6	7	9	15	17	24	14	9	
	7	17	5	7	8	15	16	24	13	6	
	8	21	5	6	8	14	15	23	10	5	
	9	29	5	5	7	13	15	23	8	3	
39	1	3	11	20	3	25	8	22	27	21	
	2	6	11	17	3	22	8	17	24	21	
	3	11	10	15	3	22	8	16	21	21	
	4	12	9	15	3	18	8	14	21	21	
	5	17	7	12	3	16	7	12	19	21	
	6	22	6	11	2	13	7	10	15	21	
	7	26	5	9	2	11	7	5	11	21	
	8	28	4	6	2	10	7	5	11	21	
	9	29	4	6	2	8	7	2	7	21	
40	1	2	28	18	16	18	25	27	28	24	
	2	6	27	17	16	17	23	26	25	24	
	3	11	26	15	16	15	19	26	24	24	
	4	13	25	15	16	13	15	25	22	24	
	5	17	23	12	16	12	14	25	18	24	
	6	19	22	12	15	10	12	24	15	23	
	7	21	19	10	15	8	8	23	15	23	
	8	27	18	8	15	8	5	23	11	23	
	9	28	18	7	15	6	2	23	11	23	
41	1	2	26	24	8	12	18	27	27	25	
	2	9	25	24	8	11	15	27	26	23	
	3	14	24	22	7	9	14	25	26	20	
	4	17	24	22	7	8	12	22	24	19	
	5	21	23	21	5	8	10	20	22	17	
	6	22	23	21	5	7	7	20	21	15	
	7	24	22	20	5	6	5	19	21	15	
	8	26	21	19	4	4	3	17	19	12	
	9	27	21	18	3	4	2	14	17	11	
42	1	1	19	19	29	9	29	22	19	10	
	2	4	18	19	28	9	29	18	18	8	
	3	6	18	16	27	9	28	18	18	8	
	4	12	17	13	26	9	28	14	18	8	
	5	13	16	11	26	8	28	13	17	7	
	6	14	15	9	25	8	27	10	17	7	
	7	24	14	8	24	8	27	8	17	6	
	8	26	12	3	24	8	26	8	17	5	
	9	30	12	1	23	8	26	5	17	5	
43	1	1	27	17	14	22	19	26	10	19	
	2	5	27	15	12	19	18	26	10	19	
	3	7	26	13	12	16	18	25	10	18	
	4	8	24	12	11	15	17	25	10	16	
	5	9	24	10	9	11	16	25	9	16	
	6	10	21	8	8	10	16	24	9	15	
	7	15	20	6	8	8	15	23	9	13	
	8	26	20	3	6	4	14	23	9	13	
	9	28	18	1	6	1	14	23	9	11	
44	1	5	26	20	4	24	9	14	27	20	
	2	7	23	18	4	23	9	14	26	19	
	3	11	21	18	4	23	9	14	26	19	
	4	19	19	17	3	23	9	14	26	18	
	5	20	17	15	3	22	8	13	26	18	
	6	21	15	14	2	22	8	13	26	18	
	7	22	14	12	2	22	7	13	26	17	
	8	23	12	11	1	22	7	12	26	17	
	9	30	9	10	1	22	7	12	26	16	
45	1	3	29	26	13	21	13	28	19	26	
	2	4	27	26	11	19	12	28	17	21	
	3	6	27	26	11	17	10	28	15	20	
	4	13	25	26	11	15	9	28	15	18	
	5	14	24	26	10	15	8	27	13	17	
	6	16	24	25	10	14	7	27	10	13	
	7	17	22	25	9	11	6	27	8	11	
	8	21	21	25	8	11	4	27	7	11	
	9	28	21	25	8	9	2	27	4	7	
46	1	6	23	14	19	14	7	25	20	27	
	2	8	21	14	16	13	5	23	19	25	
	3	15	20	11	15	11	5	22	19	21	
	4	17	18	10	14	11	4	20	18	20	
	5	20	16	8	11	9	3	19	18	17	
	6	21	14	8	11	8	3	15	18	12	
	7	22	12	5	10	6	3	13	18	11	
	8	28	12	3	8	3	1	12	17	7	
	9	29	10	2	6	2	1	10	17	6	
47	1	1	18	30	12	25	19	10	20	22	
	2	3	18	25	12	22	18	10	20	21	
	3	7	14	25	12	22	17	9	16	20	
	4	15	12	22	12	19	15	8	15	19	
	5	16	10	19	12	14	14	7	13	19	
	6	19	8	18	12	14	11	7	10	18	
	7	20	6	16	12	8	10	6	10	18	
	8	26	6	13	12	7	8	5	7	17	
	9	29	4	12	12	4	7	5	5	16	
48	1	1	23	26	14	11	13	17	24	27	
	2	6	22	26	13	11	12	17	23	25	
	3	11	21	25	13	11	11	17	21	25	
	4	14	18	24	13	11	11	17	20	24	
	5	18	18	22	12	11	10	16	18	22	
	6	20	15	22	11	11	9	16	13	22	
	7	21	15	20	11	11	8	16	12	20	
	8	22	13	20	10	11	7	16	9	19	
	9	26	10	18	10	11	7	16	7	19	
49	1	5	24	16	13	20	23	25	16	26	
	2	7	24	15	12	18	20	22	16	23	
	3	9	24	15	12	16	17	21	16	21	
	4	10	24	14	12	16	15	19	15	19	
	5	14	24	11	12	13	13	18	15	16	
	6	15	24	10	11	12	10	14	15	14	
	7	24	24	10	11	12	7	13	15	12	
	8	26	24	9	11	11	5	11	14	9	
	9	29	24	7	11	9	5	10	14	6	
50	1	1	19	30	16	18	4	12	26	20	
	2	2	19	24	13	15	3	10	26	18	
	3	3	16	20	12	15	3	10	26	17	
	4	4	16	18	10	11	3	8	25	14	
	5	7	15	15	8	10	3	8	25	11	
	6	9	13	12	7	9	3	7	25	11	
	7	12	11	7	6	6	3	6	25	9	
	8	13	10	6	4	4	3	4	24	6	
	9	26	9	3	3	1	3	4	24	3	
51	1	1	20	22	10	21	17	25	28	27	
	2	5	18	22	8	18	16	23	26	25	
	3	6	17	18	8	18	15	20	26	23	
	4	8	15	16	6	16	14	20	25	22	
	5	9	13	16	6	12	13	17	24	18	
	6	10	13	13	4	10	12	13	22	16	
	7	11	12	10	3	10	11	10	21	14	
	8	20	9	8	3	8	10	10	20	14	
	9	21	8	8	1	6	9	7	18	10	
52	1	7	21	20	26	29	26	27	25	23	
	2	8	21	19	24	29	26	24	23	21	
	3	18	20	18	19	27	25	24	22	21	
	4	20	19	14	19	26	23	22	19	19	
	5	22	18	13	17	26	23	17	17	17	
	6	23	18	11	14	24	23	16	12	15	
	7	24	17	9	12	23	22	14	9	14	
	8	27	15	8	9	22	20	11	8	12	
	9	28	15	5	7	21	20	9	6	12	
53	1	1	14	22	20	7	24	19	21	18	
	2	3	14	20	20	7	23	16	20	18	
	3	6	13	18	19	6	19	16	19	18	
	4	8	12	17	19	5	19	13	19	18	
	5	10	11	16	18	4	17	13	16	17	
	6	12	9	14	17	4	13	11	16	17	
	7	20	9	13	17	2	12	9	14	17	
	8	23	8	11	16	2	11	9	14	17	
	9	24	6	10	15	1	9	8	12	17	
54	1	1	24	30	24	11	23	26	27	9	
	2	2	23	23	24	10	20	23	26	8	
	3	3	23	20	24	10	19	23	26	8	
	4	6	22	17	24	10	19	20	25	7	
	5	14	22	15	24	9	17	19	24	7	
	6	17	22	13	24	9	15	18	24	6	
	7	21	21	11	24	9	14	17	23	6	
	8	22	21	5	24	9	13	15	23	5	
	9	28	21	3	24	9	11	14	23	5	
55	1	5	18	24	23	29	25	28	8	20	
	2	10	17	24	22	26	23	27	8	20	
	3	11	17	24	21	26	21	27	8	18	
	4	18	17	24	20	23	20	27	8	18	
	5	24	17	24	19	21	18	26	8	17	
	6	25	17	24	19	21	16	26	8	15	
	7	28	17	24	19	20	16	26	8	14	
	8	29	17	24	18	16	14	26	8	13	
	9	30	17	24	17	16	12	26	8	13	
56	1	8	27	27	11	27	10	22	28	26	
	2	9	23	27	9	24	8	18	26	24	
	3	10	19	25	8	22	7	18	24	22	
	4	14	19	23	7	20	6	15	23	19	
	5	15	13	22	7	17	6	14	21	18	
	6	17	12	21	7	16	6	13	20	13	
	7	18	7	21	6	13	5	10	18	11	
	8	19	5	19	4	11	4	8	18	9	
	9	28	4	17	4	10	3	6	16	5	
57	1	11	4	7	28	8	20	15	22	30	
	2	12	4	6	26	7	19	13	21	29	
	3	13	3	6	24	7	19	13	18	28	
	4	15	3	6	24	6	18	12	15	26	
	5	20	2	5	22	4	18	12	14	26	
	6	23	2	5	21	3	17	11	13	24	
	7	25	2	4	18	2	17	11	10	24	
	8	28	1	4	17	2	16	11	8	22	
	9	29	1	4	17	1	16	10	5	22	
58	1	5	19	29	15	25	29	23	26	7	
	2	11	18	29	14	23	25	20	26	7	
	3	14	16	27	13	22	24	19	23	7	
	4	15	16	27	13	20	23	17	21	7	
	5	17	13	26	12	19	19	17	20	7	
	6	20	12	25	12	18	18	15	17	7	
	7	21	10	24	11	17	15	15	16	7	
	8	23	9	24	11	14	15	12	14	7	
	9	30	8	23	11	14	13	11	12	7	
59	1	5	18	11	19	25	6	11	19	18	
	2	7	18	10	17	24	6	11	18	17	
	3	9	18	10	17	22	6	11	16	17	
	4	22	17	9	14	20	6	11	15	16	
	5	25	17	9	13	20	6	11	14	16	
	6	26	16	9	11	17	5	11	14	16	
	7	28	15	8	10	16	5	11	13	16	
	8	29	15	8	7	15	5	11	12	15	
	9	30	15	8	6	13	5	11	11	15	
60	1	1	6	27	22	1	26	25	9	16	
	2	7	5	22	20	1	24	24	9	14	
	3	9	5	20	20	1	22	24	9	14	
	4	10	4	18	17	1	19	24	9	11	
	5	13	4	16	15	1	19	24	8	10	
	6	15	4	13	13	1	16	24	8	8	
	7	16	4	12	12	1	14	24	8	7	
	8	17	3	8	10	1	12	24	7	5	
	9	21	3	6	8	1	11	24	7	4	
61	1	5	16	18	27	18	30	24	16	15	
	2	8	16	17	24	18	29	24	13	13	
	3	9	16	16	24	17	29	23	11	12	
	4	10	16	16	20	17	28	23	10	11	
	5	11	16	15	17	16	27	23	8	10	
	6	17	16	14	17	16	27	22	8	10	
	7	23	16	13	12	15	27	21	6	8	
	8	24	16	12	12	14	26	21	5	8	
	9	25	16	12	8	14	26	21	3	7	
62	1	1	18	22	20	26	7	27	28	23	
	2	2	17	19	18	24	6	25	25	21	
	3	3	16	19	16	22	6	24	22	20	
	4	8	14	18	14	22	5	21	19	18	
	5	17	13	16	12	20	5	19	16	17	
	6	22	11	16	11	20	5	18	16	16	
	7	24	10	14	9	18	5	15	13	14	
	8	25	9	14	8	17	4	13	8	12	
	9	29	8	12	8	16	4	12	8	11	
63	1	11	27	28	22	25	14	14	25	28	
	2	12	27	25	19	24	13	13	21	25	
	3	13	26	22	18	22	12	13	20	21	
	4	20	25	19	16	21	11	13	17	19	
	5	21	25	17	13	20	11	12	17	17	
	6	24	25	13	10	19	10	11	14	12	
	7	25	24	10	8	19	10	10	13	10	
	8	26	24	7	7	18	8	10	11	4	
	9	28	23	6	5	17	8	9	9	1	
64	1	4	27	28	20	28	26	12	27	25	
	2	7	27	27	20	27	26	10	26	25	
	3	8	25	27	16	26	24	10	26	25	
	4	9	25	26	16	25	20	9	26	25	
	5	13	23	25	12	25	17	9	26	24	
	6	21	22	25	9	24	17	8	26	24	
	7	24	22	24	7	23	13	8	26	24	
	8	27	21	24	6	22	11	8	26	23	
	9	30	20	23	3	21	11	7	26	23	
65	1	4	13	25	24	29	25	24	12	18	
	2	8	11	23	22	28	24	22	12	18	
	3	16	10	21	19	28	23	21	12	18	
	4	18	9	18	18	28	23	18	12	18	
	5	22	9	15	16	27	22	16	11	18	
	6	23	8	14	14	27	21	15	11	17	
	7	25	6	10	11	27	20	13	11	17	
	8	26	5	9	9	26	20	13	11	17	
	9	28	5	8	8	26	19	11	11	17	
66	1	1	30	9	15	27	19	10	17	20	
	2	3	29	9	13	26	17	8	16	19	
	3	6	27	7	13	26	16	8	15	18	
	4	9	27	7	10	26	14	6	14	18	
	5	12	26	6	8	26	13	6	13	18	
	6	14	26	5	8	26	11	5	12	17	
	7	18	25	5	5	26	9	5	10	17	
	8	22	24	3	2	26	9	4	9	16	
	9	26	23	3	1	26	7	3	8	16	
67	1	4	24	30	14	14	13	17	21	26	
	2	9	22	29	13	14	10	17	19	25	
	3	10	22	28	13	14	9	15	18	22	
	4	14	22	28	12	13	8	12	16	18	
	5	18	20	28	12	13	7	9	16	17	
	6	20	20	27	11	13	5	7	15	12	
	7	22	19	27	10	12	4	7	13	9	
	8	23	19	26	10	12	4	3	13	9	
	9	27	18	26	9	12	2	2	11	4	
68	1	1	27	30	28	16	12	13	23	30	
	2	2	26	28	23	15	11	11	21	28	
	3	3	25	28	20	15	11	11	19	26	
	4	4	25	28	18	15	11	10	18	25	
	5	5	23	27	16	15	11	9	17	22	
	6	15	23	26	14	15	11	9	15	20	
	7	16	22	26	11	15	11	8	15	19	
	8	29	21	26	5	15	11	7	12	18	
	9	30	21	25	5	15	11	7	12	16	
69	1	7	20	18	27	28	10	27	21	5	
	2	11	18	15	26	26	9	24	20	4	
	3	14	17	14	25	25	8	23	19	4	
	4	17	16	13	25	24	7	21	17	4	
	5	18	14	12	23	24	7	18	16	4	
	6	19	14	12	22	23	6	17	15	4	
	7	20	13	10	22	22	4	14	14	4	
	8	21	11	10	20	21	3	13	14	4	
	9	30	10	8	20	20	3	12	13	4	
70	1	1	29	25	23	20	12	25	17	3	
	2	2	28	24	22	19	11	23	17	3	
	3	4	27	24	21	18	11	21	16	3	
	4	6	27	24	20	16	10	20	16	3	
	5	7	26	24	17	15	10	18	16	3	
	6	10	25	23	17	15	10	18	15	3	
	7	14	25	23	14	14	10	16	15	3	
	8	29	24	23	13	11	9	15	14	3	
	9	30	23	23	12	10	9	14	14	3	
71	1	1	5	18	17	19	5	19	20	28	
	2	2	4	18	15	19	5	17	18	27	
	3	6	4	15	13	18	5	17	18	27	
	4	15	4	14	11	18	5	14	18	26	
	5	16	4	13	10	16	5	13	16	25	
	6	17	3	11	8	16	5	11	16	25	
	7	19	3	9	8	16	5	10	16	25	
	8	29	3	7	7	14	5	9	14	24	
	9	30	3	7	5	14	5	6	14	24	
72	1	4	6	4	21	20	23	26	26	26	
	2	8	6	4	16	20	20	24	25	24	
	3	10	5	4	15	19	19	22	25	22	
	4	11	5	4	12	19	19	18	24	20	
	5	12	4	3	12	18	17	18	23	19	
	6	14	3	3	8	17	17	14	22	19	
	7	20	3	3	7	17	15	14	22	17	
	8	24	3	2	3	16	14	11	20	14	
	9	28	2	2	3	15	14	9	20	13	
73	1	1	20	17	28	21	25	16	14	24	
	2	5	19	13	24	20	20	16	12	23	
	3	7	19	13	22	19	20	16	12	21	
	4	12	18	12	19	19	16	16	12	20	
	5	13	18	9	16	18	12	16	11	18	
	6	14	17	9	11	18	11	16	10	18	
	7	15	16	7	7	17	7	16	10	16	
	8	16	16	5	5	17	5	16	10	15	
	9	19	16	4	1	17	3	16	9	12	
74	1	2	23	23	30	18	23	25	17	29	
	2	5	22	21	29	18	23	23	15	26	
	3	12	21	21	29	15	21	22	15	25	
	4	18	17	19	29	13	21	22	14	22	
	5	19	15	18	29	11	19	21	13	21	
	6	20	13	17	29	9	18	18	12	19	
	7	28	13	16	29	8	18	17	10	17	
	8	29	9	15	29	5	17	16	10	16	
	9	30	7	15	29	3	15	15	8	13	
75	1	1	27	8	15	18	16	24	21	24	
	2	4	26	7	15	16	14	23	17	22	
	3	5	26	7	15	16	13	22	16	20	
	4	6	26	7	15	14	12	17	15	17	
	5	8	25	6	14	10	11	17	10	15	
	6	15	25	6	14	9	11	13	8	14	
	7	22	25	5	13	6	9	11	6	11	
	8	27	25	5	13	4	8	8	5	11	
	9	29	25	5	13	4	8	7	3	9	
76	1	6	22	26	22	26	26	19	7	28	
	2	7	22	25	20	24	24	15	6	25	
	3	11	21	23	19	23	23	14	6	24	
	4	12	19	19	18	21	22	12	5	24	
	5	13	18	17	18	19	19	10	4	23	
	6	26	17	16	16	17	19	9	4	20	
	7	27	16	14	14	15	18	5	3	19	
	8	28	15	12	14	12	16	5	3	18	
	9	29	15	9	12	11	16	1	3	17	
77	1	6	5	21	13	9	16	4	27	18	
	2	9	4	19	13	9	13	3	27	17	
	3	11	3	17	13	8	13	3	25	17	
	4	17	3	14	12	7	12	2	21	17	
	5	18	3	13	12	6	10	2	19	16	
	6	25	2	12	12	6	10	2	16	15	
	7	26	2	9	12	5	9	1	15	15	
	8	28	1	9	11	5	7	1	11	13	
	9	29	1	7	11	4	6	1	9	13	
78	1	6	15	18	22	16	25	11	26	25	
	2	11	15	17	20	15	25	10	25	23	
	3	12	15	14	20	14	23	9	25	23	
	4	14	15	13	20	14	23	8	22	19	
	5	15	15	12	19	13	22	7	20	19	
	6	22	15	11	18	13	20	5	20	15	
	7	24	15	8	18	12	20	5	17	13	
	8	25	15	7	17	11	19	4	16	11	
	9	26	15	4	17	11	18	3	16	9	
79	1	9	29	14	28	23	19	12	24	24	
	2	11	29	14	26	22	16	11	21	23	
	3	12	29	14	26	22	16	10	21	23	
	4	13	29	14	26	20	14	10	18	23	
	5	16	29	14	25	19	12	8	15	23	
	6	17	28	14	25	18	10	7	12	23	
	7	19	28	14	24	18	10	5	11	23	
	8	21	28	14	24	16	7	3	10	23	
	9	24	28	14	23	16	6	3	7	23	
80	1	2	26	15	6	6	28	26	19	8	
	2	3	26	14	6	5	25	26	18	7	
	3	7	26	13	6	5	24	24	18	5	
	4	10	26	13	6	5	20	24	17	5	
	5	18	26	12	6	5	18	23	16	4	
	6	21	26	11	6	5	17	22	15	4	
	7	24	26	10	6	5	12	21	13	2	
	8	25	26	9	6	5	12	19	13	2	
	9	30	26	9	6	5	10	19	11	1	
81	1	3	23	28	10	27	21	28	19	22	
	2	7	21	26	10	26	19	27	16	22	
	3	10	18	22	9	24	17	25	14	21	
	4	11	17	20	9	23	17	24	12	19	
	5	18	16	19	9	22	15	23	12	19	
	6	24	14	18	8	20	13	23	8	16	
	7	25	12	17	7	17	12	22	6	15	
	8	26	10	13	7	17	9	20	6	14	
	9	29	10	13	7	15	9	20	4	14	
82	1	4	24	19	19	26	21	23	11	20	
	2	5	24	19	19	23	19	21	9	20	
	3	13	23	19	19	23	19	21	8	18	
	4	18	23	19	19	21	18	20	8	15	
	5	19	23	18	19	20	17	17	7	12	
	6	22	22	18	19	19	17	16	6	10	
	7	24	22	17	19	18	16	14	5	8	
	8	25	21	17	19	17	15	13	3	7	
	9	26	21	17	19	16	14	13	2	6	
83	1	1	10	26	12	27	21	11	27	26	
	2	8	10	26	11	26	21	10	25	22	
	3	10	9	26	11	26	20	10	24	19	
	4	13	8	26	11	24	19	10	24	18	
	5	16	7	26	10	24	17	10	22	15	
	6	22	6	26	10	24	16	10	22	14	
	7	26	5	26	10	22	14	10	21	11	
	8	27	4	26	9	21	14	10	19	9	
	9	29	2	26	9	21	13	10	19	7	
84	1	1	11	23	27	15	23	12	29	23	
	2	7	10	20	27	14	22	11	27	23	
	3	11	10	18	21	14	21	11	27	22	
	4	12	10	18	19	13	19	10	27	22	
	5	13	9	14	17	13	19	10	26	21	
	6	14	9	13	13	12	18	10	25	20	
	7	16	8	11	10	12	16	10	25	20	
	8	27	8	9	6	11	15	9	24	19	
	9	28	8	6	6	11	14	9	24	19	
85	1	8	19	30	8	21	28	29	15	23	
	2	11	17	28	8	21	26	27	14	22	
	3	12	15	27	8	20	24	24	14	21	
	4	13	15	27	8	19	22	23	14	20	
	5	18	14	26	8	18	20	20	14	20	
	6	23	13	26	7	17	19	18	14	20	
	7	24	11	25	7	16	19	15	14	19	
	8	25	11	24	7	14	16	14	14	17	
	9	27	9	23	7	13	15	13	14	17	
86	1	1	27	10	27	9	18	29	20	21	
	2	2	24	10	25	9	15	29	20	21	
	3	3	24	10	20	9	15	28	18	20	
	4	4	23	10	20	9	13	26	17	20	
	5	11	20	10	18	8	11	26	17	20	
	6	14	20	10	13	8	9	26	16	19	
	7	18	17	10	12	8	8	24	16	19	
	8	26	17	10	10	8	7	24	15	18	
	9	28	15	10	7	8	6	23	14	18	
87	1	1	30	25	23	28	13	14	24	14	
	2	3	26	23	23	26	12	11	23	14	
	3	4	25	21	20	23	11	10	23	14	
	4	6	25	18	15	23	10	9	22	14	
	5	7	22	18	13	21	10	9	22	14	
	6	9	20	14	10	18	9	6	21	14	
	7	11	20	13	9	15	8	5	21	14	
	8	13	19	10	5	14	8	4	20	14	
	9	23	16	9	2	13	7	3	20	14	
88	1	2	13	13	16	28	23	14	22	28	
	2	8	13	12	14	28	23	12	18	26	
	3	10	13	11	14	27	23	11	18	26	
	4	11	13	10	13	25	23	9	14	24	
	5	15	13	10	12	24	23	8	12	24	
	6	17	13	9	11	24	23	6	9	23	
	7	26	13	8	10	22	23	6	8	22	
	8	27	13	7	9	22	23	4	5	21	
	9	28	13	7	9	20	23	3	1	21	
89	1	4	26	11	15	19	10	29	17	24	
	2	6	24	9	15	17	10	29	15	19	
	3	7	23	9	14	16	10	27	15	19	
	4	8	22	8	14	14	9	27	13	16	
	5	12	22	6	14	13	9	26	11	14	
	6	15	20	5	13	13	9	25	10	11	
	7	23	20	4	12	10	9	24	10	9	
	8	27	19	4	12	10	8	23	8	7	
	9	30	18	2	12	9	8	22	7	5	
90	1	1	20	28	29	7	13	10	9	19	
	2	3	19	23	25	6	12	9	9	19	
	3	4	17	21	24	5	12	8	8	17	
	4	9	14	20	22	4	12	8	8	15	
	5	16	11	18	20	4	12	8	6	15	
	6	17	10	14	16	3	12	7	6	13	
	7	19	8	12	15	3	12	6	6	12	
	8	27	4	10	10	2	12	6	5	11	
	9	29	3	8	10	2	12	6	4	10	
91	1	2	26	24	24	13	26	17	29	25	
	2	3	25	23	24	12	26	17	27	23	
	3	11	23	23	23	11	26	17	22	22	
	4	16	19	23	20	11	26	17	21	18	
	5	19	18	23	19	10	26	17	18	18	
	6	20	16	23	17	9	26	17	15	17	
	7	21	15	23	15	9	26	17	12	13	
	8	24	12	23	14	8	26	17	10	13	
	9	28	9	23	14	8	26	17	9	11	
92	1	4	21	20	29	21	18	16	14	9	
	2	7	20	20	28	21	18	14	12	9	
	3	8	19	17	28	21	16	13	11	9	
	4	9	18	16	27	21	14	11	10	9	
	5	11	18	14	26	21	12	9	10	9	
	6	15	17	14	26	21	10	9	8	9	
	7	20	16	12	25	21	10	7	7	9	
	8	22	15	10	25	21	8	6	5	9	
	9	30	15	9	25	21	6	5	5	9	
93	1	2	12	27	23	15	24	22	27	27	
	2	4	11	21	22	13	21	22	27	26	
	3	6	11	20	19	13	20	21	25	26	
	4	10	10	19	17	11	16	19	23	26	
	5	14	9	14	16	9	15	18	20	26	
	6	20	9	12	16	9	12	17	18	26	
	7	21	9	10	14	6	9	16	14	26	
	8	25	8	5	13	4	6	14	12	26	
	9	30	8	3	10	3	6	14	9	26	
94	1	2	14	27	14	22	28	21	5	20	
	2	4	12	24	14	22	27	20	4	19	
	3	9	11	19	13	20	27	19	4	19	
	4	12	10	19	13	20	27	18	4	18	
	5	13	10	13	13	19	26	18	4	18	
	6	15	10	11	12	18	26	18	4	17	
	7	19	8	8	11	16	26	17	4	16	
	8	20	8	5	11	15	26	17	4	16	
	9	26	7	2	11	14	26	16	4	16	
95	1	3	21	13	18	15	30	13	29	25	
	2	4	20	11	18	13	28	12	25	23	
	3	5	19	11	14	13	27	11	23	21	
	4	6	19	10	13	9	25	9	21	19	
	5	9	18	7	9	9	24	7	18	17	
	6	11	18	7	8	8	24	7	15	15	
	7	13	17	4	6	6	23	6	14	14	
	8	24	16	2	4	3	22	4	11	12	
	9	29	16	2	2	1	21	4	10	9	
96	1	1	28	28	29	3	28	29	21	25	
	2	3	24	27	29	3	27	26	18	24	
	3	6	20	27	29	3	25	25	18	21	
	4	12	20	27	29	3	23	23	16	20	
	5	15	17	26	28	3	22	21	13	18	
	6	17	13	26	28	3	21	21	13	17	
	7	18	10	26	28	3	19	17	10	14	
	8	23	5	26	28	3	18	15	9	12	
	9	28	4	26	28	3	17	14	8	11	
97	1	1	11	23	16	19	6	27	27	20	
	2	6	11	22	15	17	6	21	26	19	
	3	7	11	19	14	15	5	20	23	19	
	4	8	10	18	14	14	5	17	20	17	
	5	9	10	15	13	13	3	13	20	17	
	6	10	10	13	10	13	3	13	18	16	
	7	16	9	11	9	11	3	7	15	14	
	8	18	9	10	8	10	1	4	13	13	
	9	23	9	7	8	10	1	4	13	12	
98	1	4	15	22	28	2	29	19	22	6	
	2	5	14	18	26	1	28	18	21	5	
	3	8	12	18	26	1	27	18	20	5	
	4	9	11	15	26	1	27	18	20	5	
	5	10	10	13	24	1	25	17	19	4	
	6	11	8	10	24	1	25	17	18	3	
	7	16	7	8	23	1	24	17	17	3	
	8	19	6	6	22	1	23	17	16	2	
	9	28	5	6	22	1	23	17	15	2	
99	1	3	8	28	14	20	22	14	16	19	
	2	4	7	25	13	19	21	11	16	17	
	3	5	7	20	12	18	21	11	16	17	
	4	18	7	19	11	15	21	9	16	17	
	5	20	7	15	10	12	20	8	16	15	
	6	23	7	15	9	9	20	7	16	15	
	7	26	7	11	9	8	20	6	16	15	
	8	27	7	9	7	4	20	4	16	13	
	9	28	7	8	7	3	20	4	16	13	
100	1	1	21	8	27	25	20	3	19	30	
	2	2	21	8	27	23	20	2	19	28	
	3	3	21	8	25	21	19	2	19	27	
	4	4	21	8	24	19	19	2	19	26	
	5	6	21	8	24	16	18	2	19	23	
	6	16	21	8	23	15	18	1	19	23	
	7	17	21	8	22	12	18	1	19	21	
	8	23	21	8	20	12	17	1	19	19	
	9	24	21	8	19	8	17	1	19	18	
101	1	11	19	21	19	16	29	25	22	15	
	2	12	17	18	19	13	28	23	21	15	
	3	13	16	17	17	13	26	22	21	12	
	4	14	16	13	17	10	26	21	21	11	
	5	15	15	10	14	10	25	21	21	9	
	6	20	14	8	14	7	24	21	21	8	
	7	24	14	6	13	6	22	20	21	5	
	8	26	13	4	12	4	22	18	21	2	
	9	30	12	1	10	4	20	18	21	2	
102	1	0	0	0	0	0	0	0	0	0	
************************************************************************

 RESOURCE AVAILABILITIES 
	R 1	R 2	R 3	R 4	N 1	N 2	N 3	N 4
	86	84	75	80	1272	1267	1318	1405

************************************************************************
