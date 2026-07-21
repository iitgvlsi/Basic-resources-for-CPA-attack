function [T]=T_Test_modes(XA,XB,NumberOfTracesA,NumberOfTracesB,TimeSamples,TestNum)
for N= 1:NumberOfTracesA
    S2_A(N)=var(XA(N,:));
    S2_B(N)=var(XB(N,:));
    X_A(N)=mean(XA(N,:));
    X_B(N)=mean(XB(N,:));
    T(N)= ((X_A(N) - X_B(N))/sqrt((S2_A(N)/NumberOfTracesA)+(S2_B(N)/NumberOfTracesB)));    
    U(N) = T(N)/1250;    
    V(N) = U(N)-10.5;
end
figure
plot(V); 
title(['Welch''s t-Test TVLA-',num2str(TestNum)]);
xlabel('Number of traces');
ylabel('t-Value');
grid on
end