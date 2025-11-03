> [!caution] This page contained a drawing which was not converted.   

Station(Name, City, Cost, Type, Constructor - > ConstructionCompany(Name))  
ConstructionCompany(Name, Type, Year)  
Routes(Start -> TramStation(Name, City), End -> TramStation(Name, City),Month,Frequency)  
Bus(ID , SupplierStation ->Station(Name, City), Model)
   

E1(A, B, C)  
E2(A - > R1(A), D, E)  
E3(F, G, H)  
E4(F - > E3(F), G - > E3(G), I, J, K, L)  
Rel(A->E1(A), D->E2(D), F->E3(F), G ->E3(G), O, P)

![Exported image](../../../attachments/Exported%20image%2020241209225243-0.png) ![Exported image](../../../attachments/Exported%20image%2020241209225243-1.png)                                          ![Exported image](../../../attachments/Exported%20image%2020241209225244-2.png)           ![Exported image](../../../attachments/functional%20dependency.png)                 

ewfewf

|   |   |   |   |   |   |   |
|---|---|---|---|---|---|---|
|A|B (niet key)|C|D|E|F|G|
|1|sum 10|3|4|5|7|-|
|1|sum 10|7|4|5|3|999|

FD1 holds (B,C predicts GF)  
FD2 holds (B,F predicts GC)  
FD3 holds (G predicts A, D, E)

![Exported image](../../../attachments/Exported%20image%2020241209225245-4.png)       

R(A,B,C,D,E,F)  
determinant -> dependant  
A,B,C,D,E,F <- original superkey  
links mag rechts vervangen (andersom niet per se)  
B,C  
B, F  
B, C -> A, D, E, F  
B, F-> A, D, E, C

Normalisation 2nf to 3nf:
 
RELATION 1

|   |   |   |   |
|---|---|---|---|
|G|A|D|E|
|||||
|||||
 
RELATION 2

|   |   |   |   |
|---|---|---|---|
|B|C|G|F|
|||||
|||||
 ![Exported image](../../../attachments/sql.png)  
![Exported image](../../../attachments/Exported%20image%2020241209225249-6.png)

ALTERNATIVE NORMALISATION 2nf to 3nf:
 
RELATION 1

|   |   |   |   |
|---|---|---|---|
|G|A|D|E|
|||||
|||||
 
RELATION 2

|   |   |   |   |
|---|---|---|---|
|B|F|G|F|
|||||
|||||

B = totaal som  
C = getal  
F = getal  
{B,C,F}  
100, 45, 55  
100, 55, 45  
100, 70, 30  
100, 22, 78
 
proof b NIET CANDIDATE KEY

![Exported image](../../../attachments/Exported%20image%2020241209225250-7.png) ![Exported image](../../../attachments/Exported%20image%2020241209225250-8.png)

0nf: TrainID, TrainCompany, OperatorID, OperatorName, RouteHistory(Start,End,Date)
 
1nf: TrainID, TrainCompany, OperatorID, OperatorName, Start, End, Date
 
2nf: TrainID, OperatorID, Start, End, Date <- PK
   

RELATION 1: TrainID, TrainCompany  
+ FD1  
RELATION 2: OperatorID, OperatorName  
+ FD2  
RELATION 3: TrainID, OperatorID, Start, End, Date + no FD's
 
this suffices 2NF because all functional dependencies have the entire key for said relation as determinant
 
3nf: this also suffices 3nf since all dependencies are direct.