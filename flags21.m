% Author: Aline Jaimes
% Date: 01/13

% Flags.m the aim is to generate the quality flags required to feed data into the
% Renchestein-Jena Gap Filling online tool. 
% +++++++++++++++++++++++++++++++++++++++++
% Data headers are:
% year	doy	time	UST	TA	WD	WS	NEE	FC	SFC	H	SH	LE	SLE	FG	TS1	TSdepth1	
% TS2	TSdepth2	PREC	RH	PRESS	CO2	VPD	SWC1	SWC2	Rn	PAR	Rg	Rgdif	
% PARout	RgOut	Rgl	RglOut	H2O	RE	GPP	CO2top	CO2height	APAR	PARdif	APARpct	ZL
% ++++++++++++++++++++++++++++++++++++++++++
% Output file will be saved on:
% C:\Users\UTEP\Documents\MATLAB\VISFLUX\GapFilling
% Note: The loops work assuming the first element of the columns is not a
% -9999

% function [day hour ne le h Rg Tair Tsoil rH VPD Ustar]=flags2(jornada)
clear all
close all
A=load('Jornada2011To Flag.dat');
%  A=load('Jornada2011ToGapFill.dat');
 
% %A=[1 2 3; 4 5 -9999;-9999 2 6]'


year=A(:,1);	doy=A(:,2);	hour=A(:,3);	Ustar=A(:,4);	Tair=A(:,5);	WD=A(:,6);	
WS=A(:,7);	ne=A(:,8);	FC=A(:,9);	SFC=A(:,10);	h=A(:,11);	SH=A(:,12);	
le=A(:,13);	SLE=A(:,14);	FG=A(:,15);	Tsoil=A(:,16);	TSdepth1=A(:,17);	
TS2=A(:,18);	TSdepth2=A(:,19);	PREC=A(:,20);	rH=A(:,21);	PRESS=A(:,22);
CO2=A(:,23);	VPD=A(:,24);	SWC1=A(:,25);	SWC2=A(:,26);	Rn=A(:,27);
PAR=A(:,28);	Rg=A(:,29);	Rgdif=A(:,30); PARout=A(:,31);	RgOut=A(:,32);
Rgl=A(:,33);	RglOut=A(:,34);	H2O=A(:,35);	RE=A(:,36);	GPP=A(:,37);
CO2top=A(:,38);	CO2height=A(:,39);	APAR=A(:,40);	PARdif=A(:,41);	APARpct=A(:,42);ZL=A(:,43);

% 
j=8; % To start count in column 3 correspondent to NEE
for i=A(:,j)
n=length(ne);
NEQC=[];
    for i=1:n
    if ne(i)==-9999; 
        x=2; 
        NEQC=[NEQC;x];
       elseif(i)~=-9999; 
        x=1;
        
     if i==1
          NEQC=(x);
     elseif i~=1
          NEQC=[NEQC;x];
     end
    end
end
   
    
end

for i=A(j+1)
 
n=length(le);
LEQC=[];
    for i=1:n
    if le(i)==-9999; 
        x=2; 
        LEQC=[LEQC;x];
       elseif(i)~=-9999; 
        x=1;
        
     if i==1
          LEQC=(x);
     elseif i~=1
          LEQC=[LEQC;x];
     end
    end
end   
   
    
    
end

for i=A(j+2)
   
n=length(h);
HQC=[];
    for i=1:n
    if h(i)==-9999; 
        x=2; 
        HQC=[HQC;x];
       elseif(i)~=-9999; 
        x=1;
        
     if i==1
          HQC=(x);
     elseif i~=1
          HQC=[HQC;x];
     end
    end
end  
    
    
    
 end

M=[year doy hour ne NEQC le LEQC h HQC Rg Tair Tsoil rH VPD Ustar];

% save jornada2012 M -'ascii'
save jornada2011ToJena_MetGapFilled M -'ascii'

disp('The file jornada2011ToJena has beed saved')
disp('Go to:C:\Users\UTEP\Documents\MATLAB\VISFLUX\GapFilling ')

