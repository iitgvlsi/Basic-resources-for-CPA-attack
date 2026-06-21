% Actual function which determines the SNR value pertaining to the leakage

function [CC,HC,x0,a1,a2,a3,a4,a5]=cpa_attack_GitHub_snrinv(numberofplaintexts,BYTE,segmentLength)
tic
load('WS1.mat');
INVSBOX = [082 009 106 213 048 054 165 056 191 064 163 158 129 243 ...
    215 251 124 227 057 130 155 047 255 135 052 142 067 068 196 222 ...  
    233 203 084 123 148 050 166 194 035 061 238 076 149 011 066 250 ...
    195 078 008 046 161 102 040 217 036 178 118 091 162 073 109 139 ...
    209 037 114 248 246 100 134 104 152 022 212 164 092 204 093 101 ...
    182 146 108 112 072 080 253 237 185 218 094 021 070 087 167 141 ...
    157 132 144 216 171 000 140 188 211 010 247 228 088 005 184 179 ...
    069 006 208 044 030 143 202 063 015 002 193 175 189 003 001 019 ...
    138 107 058 145 017 065 079 103 220 234 151 242 207 206 240 180 ...
    230 115 150 172 116 034 231 173 053 133 226 249 055 232 028 117 ...
    223 110 071 241 026 113 029 041 197 137 111 183 098 014 170 024 ...
    190 027 252 086 062 075 198 210 121 032 154 219 192 254 120 205 ...
    090 244 031 221 168 051 136 007 199 049 177 018 016 089 039 128 ...
    236 095 096 081 127 169 025 181 074 013 045 229 122 159 147 201 ...
    156 239 160 224 059 077 174 042 245 176 200 235 187 060 131 083 ...
    153 097 023 043 004 126 186 119 214 038 225 105 020 099 085 033 ...
    012 125]; 
columns = 16;
rows = numberofplaintexts;
ciphertext = myin('pt_25000.txt', columns, rows);

keyCandidateStart = 0;
keyCandidateStop = 255;

result = zeros(1, 16);

data1 = table2array(readtable('aes_masoleh.csv','Format','%f%f'));
y0 = data1(:,2);% assigning the 2nd coloumn of data to y0 (ie, 2nd coloumn of csv file) 
k=1;

tracesnew = zeros(numberofplaintexts,segmentLength);

for i=1:numberofplaintexts
disp(i)
for j = 1 :segmentLength
    tracesnew(i,j) = y0(k);
    k = k+1;
end
end

K = 0:255;
if (BYTE == 2) || (BYTE == 6) || (BYTE == 10)
    BYTEnew = BYTE + 4;
elseif (BYTE == 3) || (BYTE == 7)
    BYTEnew = BYTE + 8;
elseif (BYTE == 4)
    BYTEnew = BYTE + 12;
elseif (BYTE == 14)
    BYTEnew = BYTE - 12;
elseif (BYTE == 11) || (BYTE == 15)
    BYTEnew = BYTE - 8;
elseif (BYTE == 8) || (BYTE == 12) || (BYTE == 16)
    BYTEnew = BYTE - 4;
else 
    BYTEnew = BYTE;
end

powerHypothesis = zeros(numberofplaintexts, 256);
 for N = 1 : numberofplaintexts
    XOR = bitxor(ciphertext(N, abs(BYTE)), K);
    invsboxVal = INVSBOX(XOR+1);
    temp1 = bitxor(ciphertext(N, BYTEnew), invsboxVal); 
    Hd = byte_Hamming_weight(temp1 + 1);
    powerHypothesis(N, K + 1) = Hd;
   
 end
 
CC = mycorr(powerHypothesis(1:numberofplaintexts,:), tracesnew(1:numberofplaintexts,:));
CC = abs(CC);
CCT=CC';
CCT=max(CCT);
HC=CCT';
HighestCoef = 0;
    for K = keyCandidateStart : keyCandidateStop
        for seg = 1 : segmentLength
            if(CC(K + 1, seg) > HighestCoef)
                HighestCoef = CC(K + 1, seg);
                kIndex = K;
            end 
        end
    end   
    result(1, BYTE) = kIndex;
   
fprintf ( "Byte %d of the key is 0x%2.2X \n ", BYTE , result(BYTE) );
toc
end