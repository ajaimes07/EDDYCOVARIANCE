% Visualizing All years data
% Path: C:\Users\UTEP\Documents\MATLAB\VISFLUX\VisualizingAllYrs
clear all
close all


%   C=load ('VisDataAllYears_W2012Corr.dat'); %All data with Gaps
%  C=load ('AllYear_DataGapFilled_updated.dat'); %This is the GPP that has been corrected 
% C=load ('040913AllYear_DataGapFilled.dat'); 
C=load ('041513AllYear_DataGapFilled.dat');
% ================ Despiking ======================
% data=load ('041513AllYear_DataGapFilled.dat'); 
% threshold=load('threshold.dat');
% [M N] = size(data);
% n = 6; stdr = 3*ones(N,1); 
% dataOut = windowaveMatrixV2(data,n,stdr,threshold)
% C=dataOut;
% ============================READING VARIABLES =======================
%=========   Timestamp  ============
YEAR=C(:,1);	DOY=C(:,2);	TIME=C(:,3);	
% ========  Metereological  ===========
ts_mean=C(:,4);	press_avg=C(:,5);
atm_press_mean=C(:,6);	t_hmp_mean=C(:,7);	rh_hmp_mean=C(:,8);	lws_1=C(:,9);
lws_2=C(:,10);	precip_tot=C(:,11); wind_speed=C(:,12);	wind_dir=C(:,13);

UST=C(:,46);TA=C(:,47);	WD=C(:,48);	WS=C(:,49);RH=C(:,50); 
PRESS=C(:,51); VPD=C(:,52);	
% ========  Technical  ===========
panel_temp_avg=C(:,14); batt_volt_avg=C(:,15);
% ======== Energy  ===========
NetSW=C(:,16); NetLW=C(:,17); UpTot=C(:,18); DownTot=C(:,19);
Rn_nr_CNR1=C(:,20);	Rn_nr_CNR2=C(:,21);	Rn_nr_CNR4=C(:,22);
Rn_nr_Corrected=C(:,23);	albedo_Avg=C(:,24);	par_avg=C(:,25);
% ======== SOIL  ===========
hfp01_1=C(:,26);hfp01_2=C(:,27);hfp01_3=C(:,28);hfp01_4=C(:,29);
vwc1=C(:,30);	vwc2=C(:,31);	vwc3=C(:,32);	vwc4=C(:,33);
vwc5=C(:,34);	vwc6=C(:,35);	vwc7=C(:,36);	vwc8=C(:,37);	
t1=C(:,38); t2=C(:,39); t3=C(:,40);	t4=C(:,41);	
t5=C(:,42);	t6=C(:,43);	t7=C(:,44); t8=C(:,45);	
% ======== FLUXES  ===========
NEE=C(:,53);	FC=C(:,54);	SFC=C(:,55);H=C(:,56); SH=C(:,57);	
LE=C(:,58);	SLE=C(:,59); CO2=C(:,60); H2O=C(:,61); RE=C(:,62);
GPP=C(:,63); ZL=C(:,64);
% ======== Constants  ===========
nday=(365*3);
mperday=48;
N=length(DOY);
% ======== Declaring variables  ===========
a=[];b=[];zz=[];d=[]; e=[];f=[];g=[];hhh=[];m=[];n=[];
o=[];p=[];q=[];r=[];s=[];tt=[];u=[];v=[];w=[];x=[];
y=[];z=[];aa=[];bb=[];cc=[];dd=[];ff=[];gg=[];hh=[];mm=[];
nn=[];oo=[];pp=[];qq=[];rr=[]; ss=[]; tt=[];pr=[];aaa=[];bbb=[];
ccc=[];ddd=[]; eee=[];fff=[];ggg=[];hhhh=[];iii=[];jjj=[]; kkk=[];lll=[];
mmm=[];nnn=[];ooo=[];ppp=[]; qqq=[]; rrr=[];sss=[]; ttt=[];hhh=[]; uuu=[];
www=[]; xxx=[]; yyy=[];zzz=[];

a(N)=NaN; b(N)=NaN; zz(N)=NaN; d(N)=NaN; e(N)= NaN; f(N)=NaN; g(N)=NaN; hhh(N)=NaN; m(N)= NaN;n(N)=NaN; 
o(N)=NaN; p(N)=NaN; q(N)=NaN; r(N)=NaN; s(N)=NaN; tt(N)=NaN; u(N)= NaN; v(N)=NaN;w(N)=NaN; x(N)=NaN; 
y(N)=NaN; z(N)=NaN; aa(N)=NaN; bb(N)=NaN; cc(N)=NaN; dd(N)=NaN;ff(N)=NaN;gg(N)=NaN;hh(N)=NaN;mm(N)=NaN; 
nn(N)=NaN; oo(N)=NaN; pp(N)=NaN; qq(N)=NaN;rr(N)=NaN;ss(N)=NaN; tt(N)=NaN; pr(N)=NaN;aaa(N) = NaN;bbb(N)=NaN;
ccc(N) = NaN;ddd(N) = NaN; eee(N) = NaN;fff(N) = NaN; ggg(N) = NaN;hhhh(N) = NaN;iii(N) = NaN;jjj(N) = NaN; kkk(N) = NaN;lll(N) = NaN;
mmm(N) = NaN;nnn(N) = NaN; ooo(N) = NaN; ppp(N) = NaN; qqq(N) = NaN; rrr(N) = NaN; sss(N) = NaN; ttt(N) = NaN; hhh(N) = NaN; uuu(N) = NaN; 
www(N) = NaN; xxx(N) = NaN; yyy(N) = NaN; zzz(N) = NaN;

for i=1:N; 
          if ts_mean(i)==9999; ts_mean(i)=NaN; end
          if press_avg(i)==9999;press_avg(i)=NaN; end
          if PRESS(i)==9999;PRESS(i)=NaN; end
          if PRESS(i)>=87.1;PRESS(i)=NaN; end
          if atm_press_mean(i)==9999;atm_press_mean(i)=NaN; end
          if t_hmp_mean(i)==9999;t_hmp_mean(i)=NaN; end
          if rh_hmp_mean(i)==9999; rh_hmp_mean(i)=NaN; end
          if lws_1(i)==9999; lws_1(i)=NaN; end
          if lws_2(i)==9999; lws_2(i)=NaN; end
          if lws_1(i)>=500; lws_1(i)=300; end
          if lws_1(i)<=0; lws_1(i)=300; end
          if lws_2(i)>=500; lws_2(i)=300; end
          if lws_2(i)<=0; lws_2(i)=300; end
          if wind_speed(i)==9999;wind_speed(i)=NaN; end
          if wind_dir(i)==9999;wind_dir(i)=NaN; end
          if panel_temp_avg(i)==9999;panel_temp_avg(i)=NaN; end
          if precip_tot(i)==9999;precip_tot(i)=NaN; end
          if batt_volt_avg(i)==9999;batt_volt_avg(i)=NaN; end
          if NetSW(i)==9999;NetSW(i)=NaN; end
          if NetLW(i)==9999;NetLW(i)=NaN; end
          if UpTot(i)==9999;UpTot(i)=NaN; end
          if DownTot(i)==9999;DownTot(i)=NaN; end
          if Rn_nr_Corrected(i)==9999;Rn_nr_Corrected(i)=NaN; end
          if albedo_Avg(i)==9999;albedo_Avg(i)=NaN; end          
          if par_avg(i)==9999;par_avg(i)=NaN; end
          if par_avg(i)>=3000;par_avg(i)=2500; end
          if par_avg(i)<=0;par_avg(i)=0; end
          if hfp01_1(i)==9999;hfp01_1(i)=NaN; end
          if hfp01_2(i)==9999;hfp01_2(i)=NaN; end
          if hfp01_3(i)==9999; hfp01_3(i)=NaN; end
          if hfp01_4(i)==9999; hfp01_4(i)=NaN; end
          if vwc1(i)==9999;vwc1(i)=NaN; end
          if vwc2(i)==9999;vwc2(i)=NaN; end
          if vwc3(i)==9999;vwc3(i)=NaN; end
          if vwc4(i)==9999;vwc4(i)=NaN; end
          if vwc5(i)==9999;vwc5(i)=NaN; end
          if vwc6(i)==9999;vwc6(i)=NaN; end
          if vwc7(i)==9999;vwc7(i)=NaN; end
          if vwc8(i)==9999;vwc8(i)=NaN; end
          if t1(i)==9999;t1(i)=NaN; end
          if t2(i)==9999;t2(i)=NaN; end
          if t3(i)==9999;t3(i)=NaN; end
          if t4(i)==9999;t4(i)=NaN; end
          if t5(i)==9999;t5(i)=NaN; end
          if t6(i)==9999;t6(i)=NaN; end
          if t7(i)==9999;t7(i)=NaN; end
          if t8(i)==9999;t8(i)=NaN; end
          if UST(i)==9999;UST(i)=NaN; end
          if TA(i)==9999;TA(i)=NaN; end
          if WD(i)==9999;WD(i)=NaN; end
          if WS(i)==9999;WS(i)=NaN; end
          if NEE(i)==9999;NEE(i)=NaN; end
           if NEE(i)>=2;NEE(i)=0.1; end
           if NEE(i)<=-4;NEE(i)=-0.1; end
          if FC(i)==9999;FC(i)=NaN; end
          if H(i)==9999;H(i)=NaN; end
          if SH(i)==9999;SH(i)=NaN; end
          if LE(i)==9999;LE(i)=NaN; end
          if LE(i)>=400;LE(i)=NaN; end
          if SLE(i)==9999;SLE(i)=NaN; end
          if RH(i)==9999;RH(i)=NaN; end
          if PRESS(i)==9999;PRESS(i)=NaN; end
          if CO2(i)==9999;CO2(i)=NaN; end
          if CO2(i)>=500;CO2(i)=NaN; end
          if H2O(i)>=9999;H2O(i)=NaN; end
%           if H2O(i)>=H2O;CO2(i)=NaN; end
          if VPD(i)==9999;VPD(i)=NaN; end
          if VPD(i)==99999;VPD(i)=NaN; end
          if VPD(i)==9;VPD(i)=NaN; end
          if H2O(i)==9999;H2O(i)=NaN; end
          if RE(i)>=9999;RE(i)=NaN; end
          if GPP(i)==9999;GPP(i)=NaN; end
          if GPP(i)>= 5;GPP(i)=0.1; end
          if GPP(i)<=0;GPP(i)=0.1; end
          if GPP(i)<=0; par_avg(i)=0;end   
          if GPP(i)<=0; Rn_nr_Corrected(i)=0;end  
          if ZL(i)<=-1000;ZL(i)=NaN; end
          if ZL(i)==9999;ZL(i)=NaN; end
end

% Timestamp
time = 0:0.5:23.5;
doy = 1:nday;
[D t] = meshgrid (doy,time);
depth=(1:1:20);
[Days Depth]=meshgrid(depth,doy);

% Use handle graphics:
% days and time of the day are used.
days = ['001';'200';'300';'365'];
timeofday=[0:6:24];
   
 % ====== Figures =====
 % Metereological
a=reshape(UST,mperday,nday); 
b=reshape(TA,mperday,nday);
zz=reshape(WD,mperday,nday); 
d=reshape(WS,mperday,nday); 

figure
set(gcf,'NumberTitle', 'off', 'Name', 'Metereology')
subplot(4,1,1);pcolor(D,t,a); shading interp; hold on; 
[c,h] = contour(D,t,a); hold on;  colormap jet
hold on; Z=colorbar; caxis(['auto'])
set(get(Z,'ylabel'),'string','UST [m/s]','Fontsize',12) 
% set(gca,'xtick',days,'ytick',timeofday)

subplot(4,1,2);
pcolor(D,t,b); shading interp; hold on; 
[c,h] = contour(D,t,b); hold on;  colormap jet
hold on; Z=colorbar;
set(get(Z,'ylabel'),'string','TA [C]','Fontsize',12) 
set(gca,'xtick',[],'ytick',[timeofday])
xlabel('days','fontsize',14,'fontweight','b','color','k');

subplot(4,1,3); 
pcolor(D,t,zz); shading flat; hold on;
[c,h] = contour(D,t,zz);   colormap jet
hold on;  Z=colorbar; caxis([0 360])
set(get(Z,'ylabel'),'string','WD [Degrees]','Fontsize',12) % sets the ylabel property of the handle t.
% set(gca,'YTickLabel',timeofday) 

subplot(4,1,4);
pcolor(D,t,d); shading flat; hold on;
[c,h] = contour(D,t,d);  colormap jet
hold on;   Z=colorbar; caxis([0 15])
set(get(Z,'ylabel'),'string','WS [m/s]','Fontsize',12) % sets the ylabel property of the handle t.
% set(gca,'xtick',[],'ytick',[timeofday])

r=reshape(RH,mperday,nday); 
s=reshape(PRESS,mperday,nday); 
q=reshape(panel_temp_avg,mperday,nday); 
kkk=reshape(CO2,mperday,nday);

figure
subplot(4,1,1);
pcolor(D,t,r); shading flat; hold on;
[c,h] = contour(D,t,r);   colormap jet
hold on;  Z=colorbar; caxis(['auto'])
set(get(Z,'ylabel'),'string','RH','Fontsize',12) % sets the ylabel property of the handle t.
% set(gca,'xtick',days,'ytick',timeofday)

subplot(4,1,2);
pcolor(D,t,s); shading flat; hold on;
[c,h] = contour(D,t,s);   colormap jet
hold on;  Z=colorbar; caxis(['auto'])
set(get(Z,'ylabel'),'string','PRESS','Fontsize',12) % sets the ylabel property of the handle t.
% set(gca,'xtick',[],'ytick',[timeofday])

subplot(4,1,3);
pcolor(D,t,q); shading flat; hold on;
[c,h] = contour(D,t,q);   colormap jet
hold on;  Z=colorbar; caxis(['auto'])
% caxis([85 87])
set(get(Z,'ylabel'),'string','panel temp','Fontsize',12) % sets the ylabel property of the handle t.

subplot(4,1,4); 
pcolor(D,t,kkk); shading flat; hold on;
[c,h] = contour(D,t,kkk);   colormap jet
hold on;  Z=colorbar; caxis(['auto'])
set(get(Z,'ylabel'),'string','CO2,','Fontsize',12) % sets the ylabel property of the handle t.
set(gca,'xtick',[],'ytick',[timeofday])


lll=reshape(H2O,mperday,nday);
mmm=reshape(ZL,mperday,nday);

figure
subplot(4,1,1);
pcolor(D,t,lll); shading flat; hold on;
[c,h] = contour(D,t,lll);   colormap jet
hold on;  Z=colorbar; caxis(['auto'])
% caxis([85 87])
set(get(Z,'ylabel'),'string','H2O','Fontsize',12) % sets the ylabel property of the handle t.

subplot(4,1,2); 
pcolor(D,t,mmm); shading flat; hold on;
[c,h] = contour(D,t,mmm);   colormap jet
hold on;  Z=colorbar; caxis(['auto'])
set(get(Z,'ylabel'),'string','ZL,','Fontsize',12) % sets the ylabel property of the handle t.
set(gca,'xtick',[],'ytick',[timeofday])

% ========= Save matrix for Inpainting ===============
 Data=[a;b;zz;d;r;s;q;kkk;lll;mmm];
save AmerifluxTable Data
