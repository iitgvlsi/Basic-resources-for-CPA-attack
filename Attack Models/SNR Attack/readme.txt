This folder contains all the files necessary for performing an SNR analysis on an AES design under test.

The only important consideration for this test is that 750 samples were collected per trace.

SNRinv.m is the main file which calls another file, cpa_attack_GitHub_snrinv.m, to perform the SNR analysis per byte. If interested to perform the analyses for all the bytes at once, SNR_ALL_BYTES.m may be invoked. 

The trace file is aes_masoleh.csv whereas the ciphertext file is pt_25000.txt, serving as the inputs.

mycorr.in, myin.m and WS1.mat are some accessory files for the necessary implementation of the analysis. SNR_PLOT_BYTE-1.fig is a sample figure expected for the SNY analysis of byte no. 1 of AES secret key.