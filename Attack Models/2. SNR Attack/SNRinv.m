% MATLAB code to test the SNR side-channel leakage of an AES design
% Consider 750 samples to be collected per trace

function []=SNRinv(numberofplaintexts,BYTE,MaxTimeSamples)
KEY = [0xF6 0x4E 0x80 0x0B 0xD1 0xF9 0xF0 0xA5 0x23 0xD5 0x4C 0x24 0xAD 0x02 0x97 0xFD];
SNR_Time=zeros(1,MaxTimeSamples);

%% PLOT 1 CC Vs Time with SNR Figure of Merit

[CC,~]=cpa_attack_GitHub_snrinv(numberofplaintexts,BYTE,MaxTimeSamples);
figure;
subplot(2,1,1);
for k=1:256
        plot(CC(k,:),'color','black');  
        hold on;       
end 
CorrectKeyMaxCC=max(CC(KEY(BYTE)+1,:),[],2);
S=sort(max(CC,[],2));
if CorrectKeyMaxCC==S(end,1)
   WrongKeyMaxCC=S(end-1,1);
else
   WrongKeyMaxCC=S(end,1);   
end
SNR_FM=CorrectKeyMaxCC/WrongKeyMaxCC;

[~,tCKM]=find(CC==CorrectKeyMaxCC,1);
[~,tWKM]=find(CC==WrongKeyMaxCC,1);
x=[tWKM tCKM];
y=[WrongKeyMaxCC,CorrectKeyMaxCC];

plot(x(1),y(1),'o','color','b','linewidth',2);
plot(x(2),y(2),'o','color','r','linewidth',2);
hold on;
plot(CC(KEY(BYTE)+1,:),'linewidth',2,'color','red'); 
grid on;
title(['Correlation Coefficient(CC) Curve BYTE ',num2str(BYTE),' SNR= ',num2str(SNR_FM)]);
xlabel('Time Samples');
ylabel('Correlation Coefficient(CC)');

%% PLOT 2 SNR Vs Time

subplot(2,1,2);
for i=1:MaxTimeSamples
        CorrectKeyMaxCC=CC(KEY(BYTE)+1,i);
        S=sort(CC(:,i));
        if CorrectKeyMaxCC==S(end,1)
              WrongKeyMaxCC=S(end-1,1);
        else
               WrongKeyMaxCC=S(end,1);   
        end
    SNR_Time(i)=CorrectKeyMaxCC/WrongKeyMaxCC;
end
plot(SNR_Time,'color','b','linewidth',2);
grid on;
title(['SNR Vs Time Curve for BYTE ',num2str(BYTE)]);
xlabel('Time Samples');
ylabel('Signal to Noise Ratio (SNR)');
file_name=['SNR_PLOT_BYTE-',num2str(BYTE),'.fig'];
savefig(file_name);
end