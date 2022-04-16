function a = myrandom(c)
b=randn(1,3);
b=b-min(b);
b=b.*(c-1)/max(b);
a=b+1;
k=find(a==max(a));
a(k)=[];
k=find(a==min(a));
a(k)=[];
a=round(a);
end

