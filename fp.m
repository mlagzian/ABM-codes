function [A] = fp(R)
% a=myrandom(3);
switch R
    case 1
        %0
        a=myrandom(2)+1;
    case 4
        %1
        a=1;
    case 2
        %0.33
        a=myrandom(3);
    case 3
        %0.66
        kise=[1 1 myrandom(2)+1];
        j=myrandom(3);
        a=kise(j);
end
switch a
    case 1
        A=[1 1];
    case 2
        b=rand+2;
        b=round(b);
        A=[1 b];
    case 3
        A=[2 3];
end
end

