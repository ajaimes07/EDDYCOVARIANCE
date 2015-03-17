
function vect=ConstructDOY(nday,mperday)
% Constructs a periodic vector containing DOY corresponding 
%to its measurement frecuency
% e.g., for 48 measurements per day (every 30min),
% and 365 dias,
% vect = [1,..,1,2....2,...,...,365,...365];
% where each block k,...,k is of length 48.

n=nday*mperday;
vect=zeros(n,1);
k=1;
for i=1:nday;
    for j=1:mperday
        vect(k)=i;
        k=k+1; 
    end
end
