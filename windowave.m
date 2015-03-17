% Author:          Aline Jaimes
% Date:             Summer 2011
% Script:           windowave
% Description:  Moving average window and linear interpolation

function dataOut = windowave(data,n,stdr) 
%   Data is a given vector with spikes. 
%   n is the size of the window specified by the user. 
%  N and n are even numbers, 
%  stdr is the constant multiplier
% criteria to detect outliers(spikes)

 N = length(data); 
%clean before
for i=1:N
    if abs(data(i))>1e4; % Remove 9999 flag
        data(i) = NaN;
    end
 end

n_2=n/2; 

% Define moving window. 
steps=N/(n_2)-1; %Number of steps to perform the average

dataOut=zeros(N,1); % declare size of dataOut

for k = 1:steps 
    % Capture window: 
    x = data( (k-1)*n_2+1:(k+1)*n_2 );
    % case_opt contains the maximum number of consecutive NaN's.
    case_opt = test_case(x);
    if case_opt == 0 % no NaN's in window
        x = case0fun(x,stdr,n);
    elseif case_opt == 1 % Isolated NaN's
        x = case1fun(x,stdr,n);
    elseif case_opt < n %consecutive number of NaNs less than the window's size
        x = case2fun(x,stdr,n);
    end
    
    %Update dataOut if spikes are not found, dataOut=DataIn. 
    dataOut( (k-1)*n_2+1:(k+1)*n_2 ) = x;  
end

 end

function case_opt = test_case(x)
    Nanx = isnan(x);
    NanSupport = find(Nanx == 1);
    diffNaNspp = diff(NanSupport);
    case_opt = 1;
    for j = 1:length(diffNaNspp)
        if diffNaNspp(j) == 1
            case_opt = case_opt+1;
        end
    end
    if isempty(NanSupport) == 1
        case_opt = 0;
    end
end

function x = case0fun(x,stdr,n)

    xbar = mean(x);
    xstd = std(x);
    
    for i=1:n
        if abs(x(i)-xbar)>stdr * xstd 
            if i>1 && i<n
                x(i)=(x(i-1)+x(i+1))/2;    % linear interpolation
            elseif i==1
                x(i)=x(i+1);  %if spike is found at the beginning of the window, then value is not interpolated, the first righ hand side value is given              
            elseif i==n 
                x(i)=x(i-1); % If spike is found at the last right hand side extreme, the value before is assigned
            end
        end
    end

end


function x = case1fun(x,stdr,n)

    Nanx = isnan(x);    
    NanSupportComplement = find(Nanx == 0);

    xbar = mean(x(NanSupportComplement));
    xstd = std(x(NanSupportComplement));
    
    for i=1:n
        if abs(x(i)-xbar)>stdr * xstd || isnan(x(i))
            if i>1 && i<n
                x(i)=(x(i-1)+x(i+1))/2;    % linear interpolation
            elseif i==1
                x(i)=x(i+1);  %if spike is found at the beginning of the window, then value is not interpolated, the first righ hand side value is given              
            elseif i==n 
                x(i)=x(i-1); % If spike is found at the last right hand side extreme, the value before is assigned
            end
        end
    end

end


        
function x = case2fun(x,stdr,n)

    Nanx = isnan(x);    
    NanSupportComplement = find(Nanx == 0);

    xbar = mean(x(NanSupportComplement));
    xstd = std(x(NanSupportComplement));
    
    for i = NanSupportComplement
        if abs(x(i)-xbar)>stdr * xstd 
            if i>1 && i<n && sum(isnan([x(i-1) x(i+1)])) == 0
                x(i)=(x(i-1)+x(i+1))/2;    % linear interpolation
            elseif i==1 && ~isnan(x(i+1))
                x(i)=x(i+1);  %if spike is found at the beginning of the window, then value is not interpolated, the first righ hand side value is given              
            elseif i==n && ~isnan(x(i-1))
                x(i)=x(i-1); % If spike is found at the last right hand side extreme, the value before is assigned
            end
        end
    end

end

   
            
                
        
    
    
    
    
                                                        


