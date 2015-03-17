function [sum_A]= DailyData(A)

years=size(A,1)/(365*48); % Estimate number of years
 max_A=zeros(years*365, size (A,2));   % declare a matrix 
 min_A=zeros(years*365, size (A,2)); % declare a matrix 
 sum_A=zeros(years*365, size (A,2));% declare a matrix 
 mean_A=zeros(years*365, size (A,2));% declare a matrix
 std_A=zeros(years*365, size (A,2));% declare a matrix
 
 i=1; j=48; % count

for k=1:size(sum_A,1)  % first 48 values
    temp=A(i:j,:);
        sum_A(k,:)=sum(temp); 
        mean_A(k,:)=mean(temp);
        max_A(k,:)=max(temp);
        min_A(k,:)=min(temp);
        std_A(k,:)=std(temp);
  i=i+48;
  j=j+48;
    
end
% end
 save Daily_MaximumValues max_A -'ascii'
 save Daily_MinimumValues min_A -'ascii'
 save Daily_SumValues sum_A -'ascii'
 save Daily_MeanValues mean_A -'ascii'
 save Daily_STDValues std_A -'ascii'
% save daily_SUM_NEP_GEP_RECO sum_A -'ascii'
% save daily_MEAN_NEP_GEP_RECO mean_A -'ascii'
 disp('The files Daily_MaximumValues, Daily_MinimumValues, Daily_MeanValues has beed saved')
 disp('Go to:C:\Users\UTEP\Documents\MATLAB\VISFLUX\VisualizingAllYrs ')
