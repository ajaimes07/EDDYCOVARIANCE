
% Aline Jaimes 032612
% Visualize data

  load AvTableECTM2010.dat
%VWC
I=AvTableECTM2010(:,3);     %VWC1   
II=AvTableECTM2010(:,4);    %VWC2   
III=AvTableECTM2010(:,5);   %VWC3   
IV=AvTableECTM2010(:,6);    %VWC4   
V=AvTableECTM2010(:,7);     %VWC5   
VI=AvTableECTM2010(:,8);    %VWC6   
VII=AvTableECTM2010(:,9);  %VWC7     
VIII=AvTableECTM2010(:,10); %VWC8   
N=length(I)
%Soil Temperature
IX=AvTableECTM2010(:,11);   %T1 02 cm Under bush
X=AvTableECTM2010(:,12);    %T2 10cm Under Bush
XI=AvTableECTM2010(:,13);   %T3 20cm Under Bush
XII=AvTableECTM2010(:,14);  %T4 10cm Bare soil
XIII=AvTableECTM2010(:,15); %T5 05cm Bare soil
XIV=AvTableECTM2010(:,16);  %T6 02cm Bare soil
XV=AvTableECTM2010(:,17);   %T7 20 cm Bare soil 
XVI=AvTableECTM2010(:,18);  %T8 05cm Under Bush


% 2. matlab. Create an empy variable that will be you variable of interest

XX=[];XXI=[];XXII=[];XXIII=[];XXIV=[];XXV=[];XXVI=[];XXVII=[];
XXVIII=[];XXIX=[];XXX=[];XXXI=[];XXXII=[];XXXIII=[];XXXIV=[];XXXV=[];


for i=1:N
     if I(i)==9999 
             I(i)=NaN;
     end
end



N = length(I);  % size of data-vector
I(N) = NaN;
II(N) = NaN;
III(N) = NaN;
IV(N) = NaN;
V(N) = NaN;
VI(N) = NaN;
VII(N) = NaN;
VIII(N) = NaN;
IX(N) = NaN;
X(N) = NaN;
XI(N)=NaN;
XII(N)=NaN;
XIII(N)=NaN;
XIV(N)=NaN;
XV(N)=NaN;
XVI(N)=NaN;

     for i=1:N
%For 
          if I(i)==9999 
            I(i)=NaN;
          end

           if II(i)==9999 
             II(i)=NaN;
           end

          if III(i)==9999 
            III(i)=NaN;
          end
          
          if IV(i)==9999
            IV(i)=NaN;
          end
            
          if V(i)==9999 
            V(i)=NaN;
          end
          
          if VI(i)==9999 
             VI(i)=NaN;
          end
          
          if VII(i)==9999
              VII(i)=NaN;
          end
          
          if VIII(i)==9999
             VIII(i)=NaN;
          end
          if IX(i)==9999 
             IX(i)=NaN;
          end
          
          if X(i)==9999
             X(i)=NaN;
          end
          
          if XI(i)==9999
             XI(i)=NaN;
          end
          
          if XII(i)==9999
              XII(i)=NaN;
          end
          
          if XIII(i)==9999
             XIII(i)=NaN;
          end
          
          if XIV(i)==9999
             XIV(i)=NaN;
          end
          
          if XV(i)==9999
             XV(i)=NaN;
          end
          
          if XVI(i)==9999
             XVI(i)=NaN;
          end
                    
     end
%      

% 4. Close the matlab grid

%5. RESHAPE

XX=reshape(I,48,365); XXI=reshape(II,48,365); XXII=reshape(III,48,365); 
XXIII=reshape(IV,48,365); XXIV=reshape(V,48,365); XXV=reshape(VI,48,365); 
XXVI=reshape(VII,48,365); XXVII=reshape(VIII,48,365); XXVIII=reshape(IX,48,365); 
XXIX=reshape(X,48,365); XXX=reshape(XI,48,365); XXXI=reshape(XII,48,365);
XXXII=reshape(XIII,48,365); XXXIII=reshape(XIV,48,365);XXXIV=reshape(XV,48,365);
XXXV=reshape(XVI,48,365);

big=[XX XXI XXII XXIII XXIV XXV XXVI XXVII XXVIII XXIX XXX XXXI XXXII XXXIII XXXIV...
XXXV];
combination=zeros(48*81,16);
for i=1:16
    v (:,1)=myreshape(big(:,(i-1)*81+1:i*81));
end

nday=365;
mperday=48;
increment=0.5;
vect=ConstructDOY(nday,mperday)
time=Construct_time(increment,nday)

% Save Matrix for inpainting
S=[I;II;III;IV;V;VI;VII;VIII;IX;X;XI;XII;XIII;XIV;X;XI;XII;XIII;XIV;XV;XVI]

   save SoilData_2012 S -'ascii'
%  save SoilData_2011 soil -'ascii'
%  save SoilData_2010 soil -'ascii'

T = 0:0.5:23.5;
DOY = 1:nday;

  [D t] = meshgrid (DOY,T);
%7 Figures       
 figure % VWC
 set(gcf,'NumberTitle', 'off', 'Name', 'Volumetric Water Content Under Bush')
      subplot(4,1,1);pcolor(D,t,XX); hold on; shading interp; hold on; title 'V1'
      subplot(4,1,2);pcolor(D,t,XXIV);shading interp; hold on; title 'V2'
      subplot(4,1,3);pcolor(D,t,XXI);shading interp; hold on;title 'V3'
      subplot(4,1,4);pcolor(D,t,XXII);shading interp; hold on;title 'V4'
 figure  
   set(gcf,'NumberTitle', 'off', 'Name', 'Volumetric Water Content Bare soil')
      subplot(4,1,1);pcolor(D,t,XXVII); shading interp; hold on; title 'V5'
      subplot(4,1,2);pcolor(D,t,XXIV);shading interp; hold on; title 'V6'
      subplot(4,1,3);pcolor(D,t,XXIII);shading interp; hold on;title 'V7'
      subplot(4,1,4);pcolor(D,t,XXV);shading interp; hold on;title 'V8'
%        surf(D,t,V)

figure
	set(gcf,'NumberTitle', 'off', 'Name', 'Soil Temperature Under Bush')
      subplot(4,1,1);pcolor(D,t,XXVIII); shading interp; hold on; title 'T1'
      subplot(4,1,2);pcolor(D,t,XXXV);shading interp; hold on; title 'T2'
      subplot(4,1,3);pcolor(D,t,XXIX);shading interp; hold on;title 'T3'
      subplot(4,1,4);pcolor(D,t,XXX);shading interp; hold on;title 'T4'
 figure  
    set(gcf,'NumberTitle', 'off', 'Name', 'Soil Temperature Bare soil')
      subplot(4,1,1);pcolor(D,t,XXXIII); shading interp; hold on; title 'T5'
      subplot(4,1,4);pcolor(D,t,XXXII);shading interp; hold on; title 'T6'
      subplot(4,1,3);pcolor(D,t,XXXI);shading interp; hold on;title 'T7'
      subplot(4,1,2);pcolor(D,t,XXXIV);shading interp; hold on;title 'T8'
