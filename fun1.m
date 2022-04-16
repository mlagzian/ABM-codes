function oopt = fun1(cellgraph)
Addres=find(cellgraph==1);
[row,column]=size(cellgraph);
[r,c]=find(cellgraph==1);
opt=0;
    for ii=1:length(Addres)
        iopt=r(ii);
        jopt=c(ii);
        if iopt==1 && jopt==1
            if cellgraph(iopt+1,jopt)~=0  && cellgraph(iopt,jopt+1)~=0
                opt=opt+1;
            end
        elseif iopt==1 && jopt==column
            if cellgraph(iopt+1,jopt)~=0 && cellgraph(iopt,jopt-1)~=0
                opt=opt+1;
            end
        elseif iopt==1
            if cellgraph(iopt+1,jopt)~=0 && cellgraph(iopt,jopt-1)~=0 && cellgraph(iopt,jopt+1)~=0
                opt=opt+1;
            end
        elseif iopt==row && jopt==column
            if cellgraph(iopt-1,jopt)~=0 && cellgraph(iopt,jopt-1)~=0
                opt=opt+1;
            end
        elseif jopt==column
            if cellgraph(iopt-1,jopt)~=0 && cellgraph(iopt+1,jopt)~=0 && cellgraph(iopt,jopt-1)~=0
                opt=opt+1;
            end
        elseif iopt==row && jopt==1
            if cellgraph(iopt-1,jopt)~=0 && cellgraph(iopt,jopt+1)~=0
                opt=opt+1;
            end
        elseif iopt==row
            if cellgraph(iopt-1,jopt)~=0 && cellgraph(iopt,jopt-1)~=0 && cellgraph(iopt,jopt+1)~=0
                opt=opt+1;
            end
        elseif jopt==1
            if cellgraph(iopt-1,jopt)~=0 && cellgraph(iopt+1,jopt)~=0 && cellgraph(iopt,jopt+1)~=0
                opt=opt+1;
            end
        elseif cellgraph(iopt-1,jopt)~=0 && cellgraph(iopt+1,jopt)~=0 && cellgraph(iopt,jopt-1)~=0 && cellgraph(iopt,jopt+1)~=0
            opt=opt+1;
        end
    end
    if opt==length(Addres) && opt~=0
        oopt=1;
    else 
        oopt=0;
    end
end

