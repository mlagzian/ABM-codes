function [ cellgraph,Num_divisions,B ] = fun3( cellgraph,rown,columnn,Num_divisions,R)
%nonstem cell division in cellgraph
[row,column]=size(cellgraph);
i=rown;
j=columnn;
B= fp3(R);
cellgraph(i,j)=B(1);
if i==1 && j==1
    a=myrandom(2);
    switch a
        case 1
            if cellgraph(i+1,j)==0
                cellgraph(i+1,j)=B(2);
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
                cellgraph(i,j+1)=B(2);
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
                cellgraph(i+1,j)=B(2);
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
                cellgraph(i,j-1)=B(2);
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
                cellgraph(i+1,j)=B(2);
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
                cellgraph(i,j-1)=B(2);
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
                cellgraph(i,j+1)=B(2);
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
                cellgraph(i-1,j)=B(2);
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
                cellgraph(i,j-1)=B(2);
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
                cellgraph(i-1,j)=B(2);
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
                cellgraph(i+1,j)=B(2);
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
                cellgraph(i,j-1)=B(2);
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
                cellgraph(i-1,j)=B(2);
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
                cellgraph(i,j+1)=B(2);
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
                cellgraph(i-1,j)=B(2);
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
                cellgraph(i,j-1)=B(2);
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
                cellgraph(i,j+1)=B(2);
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
                cellgraph(i-1,j)=B(2);
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
                cellgraph(i+1,j)=B(2);
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
                cellgraph(i,j+1)=B(2);
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
                cellgraph(i-1,j)=B(2);
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
                cellgraph(i+1,j)=B(2);
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
                cellgraph(i,j-1)=B(2);
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
                cellgraph(i,j+1)=B(2);
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

