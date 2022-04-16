clc
close all
clear all
%c=1                       stemcell shown with c
%p1=2 & p2=3               non-stemcell with two phenotype shown with p1,p2
%empty=0                   neighbour shown with empty
%__________________________________________________________________________
%get size of matrix and create cellgraph &  get hlimit & celltype(stemcell=1,nonstemcell=0)
row=input('roww=');
column=input('column=');
hlimit=row*column;
cellgraph=zeros(row,column);
celltype=input('celltype=the type of cell');
%__________________________________________________________________________
%put the first stemcell in accident place of matrix
row0=myrandom(row);
column0=myrandom(column);
cellgraph(row0,column0)=celltype;
Num_divisionsA=0;
Num_divisionsB=0;
oopt=0;
avalinboniadi=0;
n1=0;
n2=0;
%__________________________________________________________________________
%the stemcell start to proliferation
%the boundary condition & types of proliferation
tic
while  (n1+n2)<=9000
    %if  oopt==1
        %break;
    %end
    rown=myrandom(row);
    columnn=myrandom(column);
    if avalinboniadi==0
        Addres2=find(cellgraph==1);
        hh=isempty(Addres2);
        if hh==0
            Addres2=find(cellgraph==1);
            avalinboniadi=1;
        end
    else
        cellgraph(Addres2)=1;
    end
    if cellgraph(rown,columnn)==1 %&& oopt==0
        [cellgraph,Num_divisionsA,A] = fun21(cellgraph,rown,columnn,Num_divisionsA);
        n1=n1+1;
    elseif (cellgraph(rown,columnn)==2 || cellgraph(rown,columnn)==3) && Num_divisionsB<=50
        [cellgraph,Num_divisionsB,B] = fun3(cellgraph,rown,columnn,Num_divisionsB);
        n2=n2+1;
    end
  n=n1+n2;
    %[oopt,Addres] = fun1(cellgraph);
end
%if Num_divisionsA>=100
    %cellgraph(Addres2)=0;
%end
num_stemcell=length(find(cellgraph==1));
num_non_stemcell=nnz(cellgraph)-num_stemcell;
%__________________________________________________________________________
toc

%disp(cellgraph);
fprintf('Number of divisions A %d\n',Num_divisionsA);
fprintf('Number of divisions B %d\n',Num_divisionsB);
imagesc(cellgraph);

