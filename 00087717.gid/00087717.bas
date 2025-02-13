*GenData(1) *GenData(2) *GenData(3) 
*Set Cond Dirichlet *nodes
*set var ND=CondNumEntities(int)
*Set Cond Neumann *nodes
*set var NN=CondNumEntities(int)
*npoin *nelem *ND *NN

Coordinates
*set elems(all)
*loop nodes
*NodesNum *NodesCoord(1,real) *NodesCoord(2,real)
*end nodes
EndCoordinates

Elements
*loop elems
*ElemsNum *ElemsConec
*end elems
EndElements

Dirichlet
*Set Cond Dirichlet *nodes
*loop nodes *OnlyInCond
*NodesNum *cond(U,real)
*end nodes
EndDirichlet

Neumann
*Set Cond Neumann *nodes
*loop nodes *OnlyInCond
*NodesNum *cond(dUdn,real)
*end nodes
EndNeumann
