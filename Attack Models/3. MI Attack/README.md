# MI Attack

This folder contains all the attack codes and the input files necessary for performing an MI analysis on an AES design under test.
The only important consideration for this test is that 750 samples were collected per trace.

## Attack code
In this folder, `MIA_inv.m` is the main file which calls another file, `myin.m` and `WS1.mat` to perform the MI analysis per byte. 

## Input files
The trace file is `aes_ecb.csv` whereas the ciphertext file is `ecb_ct.txt`, serving as the inputs.

## Output files
`Sample byte 12.fig` is a sample figure expected for the MI analysis of byte no. 1 of AES secret key.
