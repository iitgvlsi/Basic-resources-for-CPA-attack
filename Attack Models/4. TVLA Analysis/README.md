# TVLA Analysis

This folder contains all the attack codes and the input files necessary for performing an TVLA analysis on an AES design under test.
The only important consideration for this test is that 750 samples were collected per trace.

- Attack code: In this folder, `T_Test_modes.m` is the main file which calls another file, `tvla_countermeasure.m` to perform the TVLA analysis per byte. 
- Output files: `Sample figure for TVLA.fig` is a sample figure expected for the TVLA analysis of byte no. 1 of AES secret key.

## Required Trace File

The TVLA analysis requires trace file for assessing the leakage nature of the unprotected/baseline AES design

> **Download:** [Baseline AES Trace Dataset](https://drive.google.com/file/d/1Xl9mS3I2IAvczxjpdoSFjyw8ulrIfLD8/view?usp=sharing)

Download the dataset and place it in the directory specified by the analysis scripts before running the TVLA attack.
