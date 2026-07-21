% MATLAB code to analyse the SNR of the AES design under test for all the
% bytes at one go

% Suggested inputs: SNR_ALL_BYTES(4000,750), or SNR_ALL_BYTES(3000,750)
% The trace samples under test are 750 in number for a single AES run

function SNR_ALL_BYTES(numberofplaintexts,MaxTimeSamples)
for i=1:16     
    SNRinv(numberofplaintexts,i,MaxTimeSamples) % The main SNR function
    pause(2);
end
end