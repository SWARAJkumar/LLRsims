function [res] = dglobal(n,x,p)
arr = [];
for i = 1:length(n)
    if(n(i)>0)
        arr(i) = dplus(n(i),x,p);
    else
        arr(i) = dminus(-1*n(i),x,p);
    end 
end
res = min(arr);
end