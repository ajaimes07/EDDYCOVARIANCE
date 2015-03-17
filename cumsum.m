% % %  Calculating cumulatives from sums
% clear all
% close all

% A=load('Daily_sumValues');
A=load('Daily_meanValues');
dailypress=A(:,5); dailyRH=A(:,7);    dailyWS=A(:,12);    dailyWD=A(:,13);    
dailyVPD=A(:,52);  dailyLWS1=A(:,9);  dailyLWS2=A(:,10);  dailyppt=A(:,11);    % SUM instead of average
dailyRN=A(:,23);   dailyPAR=A(:,25);  dailySH1=A(:,26);   dailySH2=A(:,27);    
dailySH3=A(:,28);  dailySH4=A(:,29);  dailyVWC1=A(:,30);  dailyVWC2=A(:,31);
dailyVWC3=A(:,32); dailyVWC4=A(:,33); dailyT1=A(:,38);    dailyT2=A(:,39);   
dailyT3=A(:,40);   dailyT4=A(:,41);   dailyVWC5=A(:,34);  dailyVWC6=A(:,35);   
dailyVWC7=A(:,36); dailyVWC8=A(:,37); dailyT5=A(:,42);    dailyT6=A(:,43);   
dailyT7=A(:,44);   dailyT8=A(:,45);   dailyNEE=A(:,53);   dailyGPP=A(:,63);
dailyRE=A(:,62);   dailyLE=A(:,58);   dailyH=A(:,56);     dailyts=A(:,4);

% F=load('Daily_MeanValues');
% dailypress=F(:,5); dailyRH=F(:,7);    dailyWS=F(:,12);    dailyWD=F(:,13);    
% dailyVPD=F(:,52);  dailyLWS1=F(:,9);  dailyLWS2=F(:,10);  dailyppt=F(:,11);    
% dailyRN=F(:,23);   dailyPAR=F(:,25);  dailySH1=F(:,26);   dailySH2=F(:,27);    
% dailySH3=F(:,28);  dailySH4=F(:,29);  dailyVWC1=F(:,30);  dailyVWC2=F(:,31);
% dailyVWC3=F(:,32); dailyVWC4=F(:,33); dailyT1=F(:,38);    dailyT2=F(:,39);   
% dailyT3=F(:,40);   dailyT4=F(:,41);   dailyVWC5=F(:,34);  dailyVWC6=F(:,35);   
% dailyVWC7=F(:,36); dailyVWC8=F(:,37); dailyT5=F(:,42);    dailyT6=F(:,43);   
% dailyT7=F(:,44);   dailyT8=F(:,45);   dailyNEE=F(:,53);   dailyGPP=F(:,63);
% dailyRE=F(:,62);   dailyLE=F(:,58);   dailyH=F(:,56);     dailyts=F(:,4);

dailyts_2010=dailyts(1:365);        dailyts_2011=dailyts(366:730);          dailyts_2012=dailyts(731:1095);
dailypress_2010=dailypress(1:365);  dailypress_2011=dailypress(366:730);    dailypress_2012=dailypress(731:1095);
dailyRH_2010=dailyRH(1:365);        dailyRH_2011=dailyRH(366:730);          dailyRH_2012=dailyRH(731:1095);
dailyWS_2010=dailyWS(1:365);        dailyWS_2011=dailyWS(366:730);          dailyWS_2012=dailyWS(731:1095);
dailyWD_2010=dailyWD(1:365);        dailyWD_2011=dailyWD(366:730);          dailyWD_2012=dailyWD(731:1095);
dailyVPD_2010=dailyVPD(1:365);      dailyVPD_2011=dailyVPD(366:730);        dailyVPD_2012=dailyVPD(731:1095);
dailyLWS1_2010=dailyLWS1(1:365);    dailyLWS1_2011=dailyLWS1(366:730);      dailyLWS1_2012=dailyLWS1(731:1095);
dailyLWS2_2010=dailyLWS2(1:365);    dailyLWS2_2011=dailyLWS2(366:730);      dailyLWS2_2012=dailyLWS2(731:1095);
dailyppt_2010=dailyppt(1:365);      dailyppt_2011=dailyppt(366:730);        dailyppt_2012=dailyppt(731:1095);

%    % ======== Calculating  Cumulatives  ===========
% Metereological
Cum_dailyts_2010=cumsum(dailyts_2010);      Cum_dailyts_2011=cumsum(dailyts_2011);                Cum_dailyts_2012=cumsum(dailyts_2012);
Cum_dailypress_2010=cumsum(dailypress_2010);Cum_dailypress_2011=cumsum(dailypress_2011);          Cum_dailypress_2012=cumsum(dailypress_2012); 
Cum_dailyRH_2010=cumsum(dailyRH_2010);      Cum_dailyRH_2011=cumsum(dailyRH_2011);                Cum_dailyRH_2012=cumsum(dailyRH_2012);
Cum_dailyWS_2010=cumsum(dailyWS_2010);      Cum_dailyWS_2011=cumsum(dailyWS_2011);                Cum_dailyWS_2012=cumsum(dailyWS_2012);
Cum_dailyWD_2010=cumsum(dailyWD_2010);      Cum_dailyWD_2011=cumsum(dailyWD_2011);                Cum_dailyWD_2012=cumsum(dailyWD_2012);
Cum_dailyLWS1_2010=cumsum(dailyLWS1_2010);  Cum_dailyLWS1_2011=cumsum(dailyLWS1_2011);            Cum_dailyLWS1_2012=cumsum(dailyLWS1_2012);
Cum_dailyLWS2_2010=cumsum(dailyLWS2_2010);  Cum_dailyLWS2_2011=cumsum(dailyLWS2_2011);            Cum_dailyLWS2_2012=cumsum(dailyLWS2_2012);
Cum_dailyppt_2010=cumsum(dailyppt_2010);    Cum_dailyppt_2011=cumsum(dailyppt_2011);              Cum_dailyppt_2012=cumsum(dailyppt_2012);


figure
set(gcf,'NumberTitle', 'off', 'Name', 'Metereological')
subplot(4,2,1)
plot (Cum_dailyts_2010,'b-','LineWidth',2);hold on
plot (Cum_dailyts_2011,'k-','LineWidth',2);hold on
plot (Cum_dailyts_2012,'r-','LineWidth',2);hold on
xlabel('Days'); ylabel('Air Temp[C]')
grid on
hold off

subplot(4,2,2)
plot (Cum_dailypress_2010,'b-','LineWidth',2);hold on
plot (Cum_dailypress_2011,'k-','LineWidth',2);hold on
plot (Cum_dailypress_2012,'r-','LineWidth',2);hold on
ylabel('Atm Press[KPa]')
grid on
hold off

subplot(4,2,3)
plot (Cum_dailyRH_2010,'b-','LineWidth',2);hold on
plot (Cum_dailyRH_2011,'k-','LineWidth',2);hold on
plot (Cum_dailyRH_2012,'r-','LineWidth',2);hold on
ylabel('Rel. Hum [%]')
grid on
hold off

subplot(4,2,4)
plot (Cum_dailyWS_2010,'b-','LineWidth',2);hold on
plot (Cum_dailyWS_2011,'k-','LineWidth',2);hold on
plot (Cum_dailyWS_2012,'r-','LineWidth',2);hold on
ylabel('Wind Speed [m/s]')
grid on
hold off

subplot(4,2,5)
plot (Cum_dailyWD_2010,'b-','LineWidth',2);hold on
plot (Cum_dailyWD_2011,'k-','LineWidth',2);hold on
plot (Cum_dailyWD_2012,'r-','LineWidth',2);hold on
ylabel('Wind Dir [Degrees]')
grid on
hold off

subplot(4,2,6)
plot (Cum_dailyLWS1_2010,'b-','LineWidth',2);hold on
plot (Cum_dailyLWS1_2011,'k-','LineWidth',2);hold on
plot (Cum_dailyLWS1_2012,'r-','LineWidth',2);hold on
ylabel('[LWS]')
grid on
hold off

subplot(4,2,7)
plot (Cum_dailyLWS2_2010,'b-','LineWidth',2);hold on
plot (Cum_dailyLWS2_2011,'k-','LineWidth',2);hold on
plot (Cum_dailyLWS2_2012,'r-','LineWidth',2);hold on
ylabel('[LWS2]')
grid on
hold off

subplot(4,2,8)
plot (Cum_dailyppt_2010,'b-','LineWidth',2);hold on
plot (Cum_dailyppt_2011,'k-','LineWidth',2);hold on
plot (Cum_dailyppt_2012,'r-','LineWidth',2);hold on
ylabel('Precipitation [mm]')
grid on
hold off

% Energy
dailyRN_2010=dailyRN(1:365);        dailyRN_2011=dailyRN(366:730);          dailyRN_2012=dailyRN(731:1095);
dailyPAR_2010=dailyPAR(1:365);      dailyPAR_2011=dailyPAR(366:730);        dailyPAR_2012=dailyPAR(731:1095);

% Soil heat
dailySH1_2010=dailySH1(1:365);      dailySH1_2011=dailySH1(366:730);        dailySH1_2012=dailySH1(731:1095);
dailySH2_2010=dailySH2(1:365);      dailySH2_2011=dailySH2(366:730);        dailySH2_2012=dailySH2(731:1095);
dailySH3_2010=dailySH3(1:365);      dailySH3_2011=dailySH3(366:730);        dailySH3_2012=dailySH3(731:1095);
dailySH4_2010=dailySH4(1:365);      dailySH4_2011=dailySH4(366:730);        dailySH4_2012=dailySH4(731:1095);


  % ======== Calculating  Cumulatives  ===========
Cum_dailyRN_2010=cumsum(dailyRN_2010);                      Cum_dailyRN_2011=cumsum(dailyRN_2011);              Cum_dailyRN_2012=cumsum(dailyRN_2012);
Cum_dailyPAR_2010=cumsum(dailyPAR_2010);                    Cum_dailyPAR_2011=cumsum(dailyPAR_2011);            Cum_dailyPAR_2012=cumsum(dailyPAR_2012);
  
figure
subplot (2,2,1)
plot (Cum_dailyRN_2010,'b-','LineWidth',2);hold on
plot (Cum_dailyRN_2011,'k-','LineWidth',2);hold on
plot (Cum_dailyRN_2012,'r-','LineWidth',2);hold on
title 'Net Radiation'
xlabel('Days'); ylabel('[w/m^2/yr]')
grid on
hold off

subplot (2,2,3)
plot (Cum_dailyPAR_2010,'b-','LineWidth',2);hold on
plot (Cum_dailyPAR_2011,'k-','LineWidth',2);hold on
plot (Cum_dailyPAR_2012,'r-','LineWidth',2);hold on
title 'Photosynthetic Active Radiation'
xlabel('Days'); ylabel('[umol/m/d]')
grid on
hold off


Cum_dailySH1_2010=cumsum(dailySH1_2010);                    Cum_dailySH1_2011=cumsum(dailySH1_2011);           Cum_dailySH1_2012=cumsum(dailySH1_2012);
Cum_dailySH2_2010=cumsum(dailySH2_2010);                    Cum_dailySH2_2011=cumsum(dailySH2_2011);            Cum_dailySH2_2012=cumsum(dailySH2_2012); 
Cum_dailySH3_2010=cumsum(dailySH3_2010);                    Cum_dailySH3_2011=cumsum(dailySH3_2011);           Cum_dailySH3_2012=cumsum(dailySH3_2012);
Cum_dailySH4_2010=cumsum(dailySH4_2010);                    Cum_dailySH4_2011=cumsum(dailySH4_2011);            Cum_dailySH4_2012=cumsum(dailySH4_2012); 

 figure
subplot (2,2,1)
plot (Cum_dailySH1_2010,'b-','LineWidth',2);hold on
plot (Cum_dailySH1_2011,'k-','LineWidth',2);hold on
plot (Cum_dailySH1_2012,'r-','LineWidth',2);hold on
title ('5cm under mesquite');
xlabel('Days'); ylabel('[w/m^2/day]')
grid on
hold off

subplot (2,2,3)
plot (Cum_dailySH2_2010,'b-','LineWidth',2);hold on
plot (Cum_dailySH2_2011,'k-','LineWidth',2);hold on
plot (Cum_dailySH2_2012,'r-','LineWidth',2);hold on
title '15 cm under mesquite'
xlabel('Days'); ylabel('[w/m^2/day]')
grid on
hold off

subplot (2,2,2)
plot (Cum_dailySH3_2010,'b-','LineWidth',2);hold on
plot (Cum_dailySH3_2011,'k-','LineWidth',2);hold on
plot (Cum_dailySH3_2012,'r-','LineWidth',2);hold on
title ('5cm under Bare Soil');
xlabel('Days'); ylabel('[w/m^2/day]')
grid on
hold off

subplot (2,2,4)
plot (Cum_dailySH4_2010,'b-','LineWidth',2);hold on
plot (Cum_dailySH4_2011,'k-','LineWidth',2);hold on
plot (Cum_dailySH4_2012,'r-','LineWidth',2);hold on
title '15 cm under Bare Soil'
xlabel('Days'); ylabel('[w/m^2/day]')
grid on
hold off

% Soil
dailyVWC1_2010=dailyVWC1(1:365);    dailyVWC1_2011=dailyVWC1(366:730);      dailyVWC1_2012=dailyVWC1(731:1095);
dailyVWC2_2010=dailyVWC2(1:365);    dailyVWC2_2011=dailyVWC2(366:730);      dailyVWC2_2012=dailyVWC2(731:1095);
dailyVWC3_2010=dailyVWC3(1:365);    dailyVWC3_2011=dailyVWC3(366:730);      dailyVWC3_2012=dailyVWC3(731:1095);
dailyVWC4_2010=dailyVWC4(1:365);    dailyVWC4_2011=dailyVWC4(366:730);      dailyVWC4_2012=dailyVWC4(731:1095);
dailyT1_2010=dailyT1(1:365);        dailyT1_2011=dailyT2(366:730);          dailyT1_2012=dailyT1(731:1095);
dailyT2_2010=dailyT2(1:365);        dailyT2_2011=dailyT2(366:730);          dailyT2_2012=dailyT2(731:1095);
dailyT3_2010=dailyT3(1:365);        dailyT3_2011=dailyT3(366:730);          dailyT3_2012=dailyT3(731:1095);
dailyT4_2010=dailyT4(1:365);        dailyT4_2011=dailyT4(366:730);          dailyT4_2012=dailyT4(731:1095);

Cum_dailyVWC1_2010=cumsum(dailyVWC1_2010);  Cum_dailyVWC1_2011=cumsum(dailyVWC1_2011);  Cum_dailyVWC1_2012=cumsum(dailyVWC1_2012);
Cum_dailyVWC2_2010=cumsum(dailyVWC2_2010);  Cum_dailyVWC2_2011=cumsum(dailyVWC2_2011);  Cum_dailyVWC2_2012=cumsum(dailyVWC2_2012); 
Cum_dailyVWC3_2010=cumsum(dailyVWC3_2010);  Cum_dailyVWC3_2011=cumsum(dailyVWC3_2011);  Cum_dailyVWC3_2012=cumsum(dailyVWC3_2012);
Cum_dailyVWC4_2010=cumsum(dailyVWC4_2010);  Cum_dailyVWC4_2011=cumsum(dailyVWC4_2011);  Cum_dailyVWC4_2012=cumsum(dailyVWC4_2012); 

Cum_dailyT1_2010=cumsum(dailyT1_2010);  Cum_dailyT1_2011=cumsum(dailyT1_2011);  Cum_dailyT1_2012=cumsum(dailyT1_2012);
Cum_dailyT2_2010=cumsum(dailyT2_2010);  Cum_dailyT2_2011=cumsum(dailyT2_2011);  Cum_dailyT2_2012=cumsum(dailyT2_2012); 
Cum_dailyT3_2010=cumsum(dailyT3_2010);  Cum_dailyT3_2011=cumsum(dailyT3_2011);  Cum_dailyT3_2012=cumsum(dailyT3_2012);
Cum_dailyT4_2010=cumsum(dailyT4_2010);  Cum_dailyT4_2011=cumsum(dailyT4_2011);  Cum_dailyT4_2012=cumsum(dailyT4_2012); 

figure
% set(gcf,'NumberTitle', 'off', 'Name', 'UnderMesquite')
set(gcf,'NumberTitle', 'off', 'Name', 'Under Bare Soil')
subplot(4,2,1)
plot(Cum_dailyVWC1_2010,'b-','LineWidth',2); hold on
plot(Cum_dailyVWC1_2011,'k-','LineWidth',2); hold on
plot(Cum_dailyVWC1_2012,'r-','LineWidth',2);  
caxis([0 365]);
xlabel('Days'); ylabel('-02cm [m^3/m^3/day]')
title('Soil Volumetric Water Content')
grid on
hold off

subplot(4,2,2)
plot(Cum_dailyT1_2010,'b-','LineWidth',2); hold on
plot(Cum_dailyT1_2011,'k-','LineWidth',2); hold on
plot(Cum_dailyT1_2012,'r-','LineWidth',2);  
caxis([-10 50]);
xlabel('Days'); ylabel('C')
title('Soil Temperature')
grid on
hold off

subplot(4,2,3)
plot(Cum_dailyVWC3_2010,'b-','LineWidth',1); hold on
plot(Cum_dailyVWC3_2011,'k-','LineWidth',2); hold on
plot(Cum_dailyVWC3_2012,'r-','LineWidth',2);  
caxis([0 365]);
xlabel('Days'); ylabel('-05cm [m^3/m^3/day]')
grid on
hold off

subplot(4,2,4)
plot(Cum_dailyT3_2010,'b-','LineWidth',2); hold on
plot(Cum_dailyT3_2011,'k-','LineWidth',2); hold on
plot(Cum_dailyT3_2012,'r-','LineWidth',2);  
caxis([-10 50]);
xlabel('Days'); ylabel('C')
grid on
hold off

subplot(4,2,5)
plot(Cum_dailyVWC4_2010,'b-','LineWidth',1); hold on
plot(Cum_dailyVWC4_2011,'k-','LineWidth',2); hold on
plot(Cum_dailyVWC4_2012,'r-','LineWidth',2);  
caxis([0 365]);
xlabel('Days'); ylabel('-10cm [m^3/m^3/day]')
grid on
hold off

subplot(4,2,6)
plot(Cum_dailyT4_2010,'b-','LineWidth',2); hold on
plot(Cum_dailyT4_2011,'k-','LineWidth',2); hold on
plot(Cum_dailyT4_2012,'r-','LineWidth',2);  
caxis([-10 50]);
xlabel('Days'); ylabel('C')
grid on
hold off


subplot(4,2,7)
plot(Cum_dailyVWC2_2010,'b-','LineWidth',2); hold on
plot(Cum_dailyVWC2_2011,'k-','LineWidth',2); hold on
plot(Cum_dailyVWC2_2012,'r-','LineWidth',2);  
caxis([0 365]);
xlabel('Days'); ylabel('-20cm [m^3/m^3/day]')
grid on
hold off

subplot(4,2,8)
plot(Cum_dailyT2_2010,'b-','LineWidth',2); hold on
plot(Cum_dailyT2_2011,'k-','LineWidth',2); hold on
plot(Cum_dailyT2_2012,'r-','LineWidth',2);  
caxis([-10 50]);
xlabel('Days'); ylabel('C')
grid on
hold off

% ===========   under bare soil

dailyVWC5_2010=dailyVWC5(1:365);    dailyVWC5_2011=dailyVWC5(366:730);      dailyVWC5_2012=dailyVWC5(731:1095);
dailyVWC6_2010=dailyVWC6(1:365);    dailyVWC6_2011=dailyVWC6(366:730);      dailyVWC6_2012=dailyVWC6(731:1095);
dailyVWC7_2010=dailyVWC7(1:365);    dailyVWC7_2011=dailyVWC7(366:730);      dailyVWC7_2012=dailyVWC7(731:1095);
dailyVWC8_2010=dailyVWC8(1:365);    dailyVWC8_2011=dailyVWC8(366:730);      dailyVWC8_2012=dailyVWC8(731:1095);
dailyT5_2010=dailyT5(1:365);        dailyT5_2011=dailyT5(366:730);          dailyT5_2012=dailyT5(731:1095);
dailyT6_2010=dailyT6(1:365);        dailyT6_2011=dailyT6(366:730);          dailyT6_2012=dailyT6(731:1095);
dailyT7_2010=dailyT7(1:365);        dailyT7_2011=dailyT7(366:730);          dailyT7_2012=dailyT7(731:1095);
dailyT8_2010=dailyT8(1:365);        dailyT8_2011=dailyT8(366:730);          dailyT8_2012=dailyT8(731:1095);

Cum_dailyVWC5_2010=cumsum(dailyVWC5_2010);  Cum_dailyVWC5_2011=cumsum(dailyVWC5_2011);  Cum_dailyVWC5_2012=cumsum(dailyVWC5_2012);
Cum_dailyVWC6_2010=cumsum(dailyVWC6_2010);  Cum_dailyVWC6_2011=cumsum(dailyVWC6_2011);  Cum_dailyVWC6_2012=cumsum(dailyVWC6_2012); 
Cum_dailyVWC7_2010=cumsum(dailyVWC7_2010);  Cum_dailyVWC7_2011=cumsum(dailyVWC7_2011);  Cum_dailyVWC7_2012=cumsum(dailyVWC7_2012);
Cum_dailyVWC8_2010=cumsum(dailyVWC8_2010);  Cum_dailyVWC8_2011=cumsum(dailyVWC8_2011);  Cum_dailyVWC8_2012=cumsum(dailyVWC8_2012); 

Cum_dailyT5_2010=cumsum(dailyT5_2010);  Cum_dailyT5_2011=cumsum(dailyT5_2011);  Cum_dailyT5_2012=cumsum(dailyT5_2012);
Cum_dailyT6_2010=cumsum(dailyT6_2010);  Cum_dailyT6_2011=cumsum(dailyT6_2011);  Cum_dailyT6_2012=cumsum(dailyT6_2012); 
Cum_dailyT7_2010=cumsum(dailyT7_2010);  Cum_dailyT7_2011=cumsum(dailyT7_2011);  Cum_dailyT7_2012=cumsum(dailyT7_2012);
Cum_dailyT8_2010=cumsum(dailyT8_2010);  Cum_dailyT8_2011=cumsum(dailyT8_2011);  Cum_dailyT8_2012=cumsum(dailyT8_2012); 

figure
% set(gcf,'NumberTitle', 'off', 'Name', 'Under BareSoil')
set(gcf,'NumberTitle', 'off', 'Name', 'Under Mesquite')
subplot(4,2,1)
plot(Cum_dailyVWC5_2010,'b-','LineWidth',2); hold on
plot(Cum_dailyVWC5_2011,'k-','LineWidth',2); hold on
plot(Cum_dailyVWC5_2012,'r-','LineWidth',2);  
caxis([0 365]);
xlabel('Days'); ylabel('-02cm [m^3/m^3/day]')
title('Soil Volumetric Water Content')
grid on
hold off

subplot(4,2,2)
plot(Cum_dailyT7_2010,'b-','LineWidth',2); hold on
plot(Cum_dailyT7_2011,'k-','LineWidth',2); hold on
plot(Cum_dailyT7_2012,'r-','LineWidth',2);  
caxis([-20 50]);
xlabel(''); ylabel('[C]')
title('Soil Temperature')
grid on
hold off

subplot(4,2,3)
plot(Cum_dailyVWC8_2010,'b-','LineWidth',1); hold on
plot(Cum_dailyVWC8_2011,'k-','LineWidth',2); hold on
plot(Cum_dailyVWC8_2012,'r-','LineWidth',2);  
caxis([0 365]);
xlabel(''); ylabel('-05cm [m^3/m^3/day]')
grid on
hold off

subplot(4,2,4)
plot(Cum_dailyT6_2010,'b-','LineWidth',2); hold on
plot(Cum_dailyT6_2011,'k-','LineWidth',2); hold on
plot(Cum_dailyT6_2012,'r-','LineWidth',2);  
caxis([-20 50]);
xlabel(''); ylabel('[C]')
grid on
hold off

subplot(4,2,5)
plot(Cum_dailyVWC7_2010,'b-','LineWidth',1); hold on
plot(Cum_dailyVWC7_2011,'k-','LineWidth',2); hold on
plot(Cum_dailyVWC7_2012,'r-','LineWidth',2);  
caxis([0 365]);
xlabel('Days'); ylabel('-10cm [m^3/m^3/day]')
grid on
hold off

subplot(4,2,6)
plot(Cum_dailyT4_2010,'b-','LineWidth',2); hold on
plot(Cum_dailyT4_2011,'k-','LineWidth',2); hold on
plot(Cum_dailyT4_2012,'r-','LineWidth',2);  
caxis([-10 50]);
xlabel('Days'); ylabel('[C]')
grid on
hold off


subplot(4,2,7)
plot(Cum_dailyVWC6_2010,'b-','LineWidth',2); hold on
plot(Cum_dailyVWC6_2011,'k-','LineWidth',2); hold on
plot(Cum_dailyVWC6_2012,'r-','LineWidth',2);  
caxis([0 365]);
xlabel('Days'); ylabel('-20cm [m^3/m^3/day]')
grid on
hold off

subplot(4,2,8)
plot(Cum_dailyT8_2010,'b-','LineWidth',2); hold on
plot(Cum_dailyT8_2011,'k-','LineWidth',2); hold on
plot(Cum_dailyT8_2012,'r-','LineWidth',2);  
caxis([-10 50]);
xlabel('Days'); ylabel('[C]')
grid on
hold off

% Fluxes
dailyNEE_2010=dailyNEE(1:365);      dailyNEE_2011=dailyNEE(366:730);        dailyNEE_2012=dailyNEE(731:1095);
dailyGPP_2010=dailyGPP(1:365);      dailyGPP_2011=dailyGPP(366:730);        dailyGPP_2012=dailyGPP(731:1095);
dailyRE_2010=dailyRE(1:365);        dailyRE_2011=dailyRE(366:730);          dailyRE_2012=dailyRE(731:1095);
dailyLE_2010=dailyLE(1:365);        dailyLE_2011=dailyLE(366:730);          dailyLE_2012=dailyLE(731:1095);
dailyH_2010=dailyH(1:365);          dailyH_2011=dailyH(366:730);            dailyH_2012=dailyH(731:1095);

DailyNEE_2010_mg=[];          DailyNEE_2011_mg=[];        DailyNEE_2012_mg=[];
DailyGPP_2010_mg=[];          DailyGPP_2011_mg_mg=[];     DailyGPP_2012_mg=[];
DailyRE_2010_mg=[];          DailyRE_2011_mg_mg=[];     DailyRE_2012_mg=[];


 
for i=1:365; 
          DailyNEE_2010_mg(i)=(dailyNEE_2010(i)./1000000)*44*1000;
          DailyNEE_2011_mg(i)=(dailyNEE_2011(i)./1000000)*44*1000;
          DailyNEE_2012_mg(i)=(dailyNEE_2012(i)./1000000)*44*1000;
          
                
          DailyGPP_2010_mg(i)=(dailyGPP_2010(i)./1000000)*44*1000;
          DailyGPP_2011_mg(i)=(dailyGPP_2011(i)./1000000)*44*1000;
          DailyGPP_2012_mg(i)=(dailyGPP_2012(i)./1000000)*44*1000;
          
         
          DailyRe_2010_mg(i)=(dailyRE_2010(i)./1000000)*44*1000;
          DailyRe_2011_mg(i)=(dailyRE_2011(i)./1000000)*44*1000;
          DailyRe_2012_mg(i)=(dailyRE_2012(i)./1000000)*44*1000;
end

Cum_dailyNEE_2010_mg=cumsum(dailyNEE_2010);    Cum_dailyNEE_2011_mg=cumsum(dailyNEE_2011);  Cum_dailyNEE_2012_mg=cumsum(dailyNEE_2012);
Cum_dailyGPP_2010_mg=cumsum(dailyGPP_2010);    Cum_dailyGPP_2011_mg=cumsum(dailyGPP_2011);  Cum_dailyGPP_2012_mg=cumsum(dailyGPP_2012);
Cum_dailyRE_2010_mg=cumsum(dailyRE_2010);      Cum_dailyRE_2011_mg=cumsum(dailyRE_2011);    Cum_dailyRE_2012_mg=cumsum(dailyRE_2012);
Cum_dailyLE_2010_mg=cumsum(dailyLE_2010);      Cum_dailyLE_2011_mg=cumsum(dailyLE_2011);    Cum_dailyLE_2012_mg=cumsum(dailyLE_2012);
Cum_dailyH_2010_mg=cumsum(dailyH_2010);        Cum_dailyH_2011_mg=cumsum(dailyH_2011);      Cum_dailyH_2012_mg=cumsum(dailyH_2012);


figure
set(gcf,'NumberTitle', 'off', 'Name', 'Fluxes')
subplot(3,2,1)
plot(Cum_dailyNEE_2010_mg,'b-','LineWidth',2); hold on
plot(Cum_dailyNEE_2011_mg,'k-','LineWidth',2); hold on
plot(Cum_dailyNEE_2012_mg,'r-','LineWidth',2);  
caxis('auto');
xlabel(''); ylabel('NEE [g m^2/d]')
'FontSize''14';
'FontWeight''bold';
grid on
hold off

subplot(3,2,3)
plot(Cum_dailyGPP_2010_mg,'b-','LineWidth',2); hold on
plot(Cum_dailyGPP_2011_mg,'k-','LineWidth',2); hold on
plot(Cum_dailyGPP_2012_mg,'r-','LineWidth',2);  
caxis('auto');
xlabel(''); ylabel('GPP [g m^2/d]')
'FontSize''14';
'FontWeight''bold';
grid on
hold off

subplot(3,2,5)
plot(Cum_dailyRE_2010_mg,'b-','LineWidth',2); hold on
plot(Cum_dailyRE_2011_mg,'k-','LineWidth',2); hold on
plot(Cum_dailyRE_2012_mg,'r-','LineWidth',2);  
caxis('auto');
xlabel('Days'), ylabel('RE [g m^2/d]');
'FontSize''14';
'FontWeight''bold';
grid on
hold off

subplot(2,2,2)
plot(Cum_dailyH_2010_mg,'b-','LineWidth',2); hold on
plot(Cum_dailyH_2011_mg,'k-','LineWidth',2); hold on
plot(Cum_dailyH_2012_mg,'r-','LineWidth',2);  
caxis('auto');
xlabel(''); ylabel('H [W m^2/d]')
grid on
hold off

subplot(2,2,4)
plot(Cum_dailyLE_2010_mg,'b-','LineWidth',2); hold on
plot(Cum_dailyLE_2011_mg,'k-','LineWidth',2); hold on
plot(Cum_dailyLE_2012_mg,'r-','LineWidth',2);  
caxis('auto');
xlabel('Days'); ylabel('LE [W m^2/d]')
grid on
hold off
