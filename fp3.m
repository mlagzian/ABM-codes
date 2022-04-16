function  [B] = fp3(R)
%different form of nonstemcell's divisions
% a=myrandom(3);
switch R
    case 4
        %0
        a=myrandom(2)+1;
    case 1
        %1
        a=1;
    case 3
        %0.33
        a=myrandom(3);
    case 2
        %0.66
        kise=[1 1 myrandom(2)+1];
        j=myrandom(3);
        a=kise(j);
end
switch a
    case 1
        b=rand+2;
        b=round(b);
        B=[b 1];
        
    case 2
        b=rand+2;
        b=round(b);
        if b==2
            B=[b b+1];
        else
            B=[b b-1];
        end
        
    case 3
        b=rand+2;
        b=round(b);
        if b==2
            B=[0 b+1];
        else
            B=[0 b-1];
        end
        
        
end

