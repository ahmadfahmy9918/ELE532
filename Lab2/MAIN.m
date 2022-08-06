%MAIN
%Generates and Graphs dn
xv_1=coefficents_x_1(5);
graph_dn(xv_1,1);
xv_1=coefficents_x_1(20);
graph_dn(xv_1,1);
xv_1=coefficents_x_1(50);
graph_dn(xv_1,1);
xv_1=coefficents_x_1(500);
graph_dn(xv_1,1);

xv_2=coefficents_x_2(5);
graph_dn(xv_2,2);
xv_2=coefficents_x_2(20);
graph_dn(xv_2,2);
xv_2=coefficents_x_2(50);
graph_dn(xv_2,2);
xv_2=coefficents_x_2(500);
graph_dn(xv_2,2);

xv_3=coefficents_x_3(5);
graph_dn(xv_3,3);
xv_3=coefficents_x_3(20);
graph_dn(xv_3,3);
xv_3=coefficents_x_3(50);
graph_dn(xv_3,3);
xv_3=coefficents_x_3(500);
graph_dn(xv_3,3);

%recontructs and graphs x
%x_1
OriginalSignal(xv_1,pi/10);
OriginalSignal(xv_2,pi/10);
OriginalSignal(xv_3,pi/20);
