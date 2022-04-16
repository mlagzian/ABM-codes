function [cellgraph,Num_divisions,A] = fun2(cellgraph,rown,columnn,Num_divisions,R)
[row,column]=size(cellgraph);
A=[0 0];
if cellgraph(rown,columnn)==1
    i=rown;
    j=columnn;
    A = fp(R);
    cellgraph(i,j)=A(1);
    if i==1 && j==1
        a=myrandom(2);
        switch a
            case 1
                if cellgraph(i+1,j)==0
                    cellgraph(i+1,j)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i+1,j)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i+1,j)=0;
                    end
                end
            case 2
                if cellgraph(i,j+1)==0
                    cellgraph(i,j+1)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i,j+1)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i,j+1)=0;
                    end
                end
        end
    elseif i==1 && j==column
        a=myrandom(2);
        switch a
            case 1
                if cellgraph(i+1,j)==0
                    cellgraph(i+1,j)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i+1,j)==1
                    b=myrandom(2);
                    
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i+1,j)=0;
                    end
                end
            case 2
                if cellgraph(i,j-1)==0
                    cellgraph(i,j-1)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i,j-1)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i,j-1)=0;
                    end
                end
        end
    elseif i==1
        a=myrandom(3);
        switch a
            case 1
                if cellgraph(i+1,j)==0
                    cellgraph(i+1,j)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i+1,j)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i+1,j)=0;
                    end
                end
            case 2
                if cellgraph(i,j-1)==0
                    cellgraph(i,j-1)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i,j-1)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i,j-1)=0;
                    end
                end
            case 3
                if cellgraph(i,j+1)==0
                    cellgraph(i,j+1)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i,j+1)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i,j+1)=0;
                    end
                end
        end
    elseif i==row && j==column
        a=myrandom(2);
        switch a
            case 1
                if cellgraph(i-1,j)==0
                    cellgraph(i-1,j)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i-1,j)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i-1,j)=0;
                    end
                end
            case 2
                if cellgraph(i,j-1)==0
                    cellgraph(i,j-1)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i,j-1)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i,j-1)=0;
                    end
                end
        end
    elseif j==column
        a=myrandom(3);
        switch a
            case 1
                if cellgraph(i-1,j)==0
                    cellgraph(i-1,j)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i-1,j)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i-1,j)=0;
                    end
                end
            case 2
                if cellgraph(i+1,j)==0
                    cellgraph(i+1,j)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i+1,j)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i+1,j)=0;
                    end
                end
                
            case 3
                if cellgraph(i,j-1)==0
                    cellgraph(i,j-1)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i,j-1)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i,j-1)=0;
                    end
                end
        end
    elseif i==row && j==1
        a=myrandom(2);
        switch a
            case 1
                if cellgraph(i-1,j)==0
                    cellgraph(i-1,j)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i-1,j)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i-1,j)=0;
                    end
                end
            case 2
                if cellgraph(i,j+1)==0
                    cellgraph(i,j+1)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i,j+1)==1
                    b=myrandom(2);
                    
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i,j+1)=0;
                    end
                end
        end
    elseif i==row
        a=myrandom(3);
        switch a
            case 1
                if cellgraph(i-1,j)==0
                    cellgraph(i-1,j)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i-1,j)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i-1,j)=0;
                    end
                end
            case 2
                if cellgraph(i,j-1)==0
                    cellgraph(i,j-1)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i,j-1)==1
                    b=myrandom(2);
                    
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i,j-1)=0;
                    end
                end
            case 3
                if cellgraph(i,j+1)==0
                    cellgraph(i,j+1)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i,j+1)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i,j+1)=0;
                    end
                end
        end
    elseif j==1
        a=myrandom(3);
        switch a
            case 1
                if cellgraph(i-1,j)==0
                    cellgraph(i-1,j)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i-1,j)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i-1,j)=0;
                    end
                end
            case 2
                if cellgraph(i+1,j)==0
                    cellgraph(i+1,j)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i+1,j)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i+1,j)=0;
                    end
                end
            case 3
                if cellgraph(i,j+1)==0
                    cellgraph(i,j+1)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i,j+1)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i,j+1)=0;
                    end
                end
        end
    else
        a=myrandom(4);
        switch a
            case 1
                if cellgraph(i-1,j)==0
                    cellgraph(i-1,j)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i-1,j)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i-1,j)=0;
                    end
                end
            case 2
                if cellgraph(i+1,j)==0
                    cellgraph(i+1,j)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i+1,j)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i+1,j)=0;
                    end
                end
                
            case 3
                if cellgraph(i,j-1)==0
                    cellgraph(i,j-1)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i,j-1)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i,j-1)=0;
                    end
                end
            case 4
                if cellgraph(i,j+1)==0
                    cellgraph(i,j+1)=A(2);
                    Num_divisions=Num_divisions+1;
                elseif cellgraph(i,j+1)==1
                    b=myrandom(2);
                    switch b
                        case 1
                            cellgraph(i,j)=0;
                        case 2
                            cellgraph(i,j+1)=0;
                    end
                end
        end
    end
end
end

