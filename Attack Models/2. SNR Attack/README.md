# SNR Attack

This folder contains all the attack codes and the input files necessary for performing an SNR analysis on an AES design under test.
The only important consideration for this test is that 750 samples were collected per trace.

## Attack code
In this folder, `SNRinv.m` is the main file which calls another file, `cpa_attack_GitHub_snrinv.m`, to perform the SNR analysis per byte. If interested to perform the analyses for all the bytes at once, `SNR_ALL_BYTES.m` may be invoked.
`mycorr.m`, `myin.m` and `WS1.mat` are some accessory files for the necessary implementation of the analysis. 

## Input files
The trace file is `aes_masoleh.csv` whereas the ciphertext file is `pt_25000.txt`, serving as the inputs.

## Output files
`SNR_PLOT_BYTE-1.fig` is a sample figure expected for the SNR analysis of byte no. 1 of AES secret key.
