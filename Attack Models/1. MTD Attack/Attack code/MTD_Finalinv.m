%Start of "Working perfectly for Surya's design with step-size 1ns using the HD power 
%model while attacking the last round"

function MTD_Finalinv(MAX_TRACES,BYTE,cores,delay)
%KEY = [0xF6 0x4E 0x80 0x0B 0xD1 0xF9 0xF0 0xA5 0x23 0xD5 0x4C 0x24 0xAD 0x02 0x97 0xFD];

KEY = [0xD0 0x14 0xF9 0xA8 0xC9 0xEE 0x25 0x89 0xE1 0x3F 0x0C 0xC8 0xB6 0x63 0x0C 0xA6];
key_mtd=zeros(256,MAX_TRACES); %for storing all the combination of a single key byte.

% global byte_Hamming_weight SBOX segmentLength columns rows data y0 traces k plaintext byteStart byteEnd keyCandidateStart keyCandidateStop result;
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

byte_Hamming_weight=[0,1,1,2,1,2,2,3,1,2,2,3,2,3,3,4,1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,5,1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,5,2,3,3,4,3,4,4,5,3,4,4,5,4,5,5,6,1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,5,2,3,3,4,3,4,4,5,3,4,4,5,4,5,5,6,2,3,3,4,3,4,4,5,3,4,4,5,4,5,5,6,3,4,4,5,4,5,5,6,4,5,5,6,5,6,6,7,1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,5,2,3,3,4,3,4,4,5,3,4,4,5,4,5,5,6,2,3,3,4,3,4,4,5,3,4,4,5,4,5,5,6,3,4,4,5,4,5,5,6,4,5,5,6,5,6,6,7,2,3,3,4,3,4,4,5,3,4,4,5,4,5,5,6,3,4,4,5,4,5,5,6,4,5,5,6,5,6,6,7,3,4,4,5,4,5,5,6,4,5,5,6,5,6,6,7,4,5,5,6,5,6,6,7,5,6,6,7,6,7,7,8];
segmentLength = 750;          % 18 different length of the power trace

columns = 16;
rows = MAX_TRACES;

 data = table2array(readtable('aes_ecb.csv','Format','%f%f'));%<<<<<<<<<<<<<<<<<<<!!));%<<<<<<<<<<<<<<<<<<<!!
 y0 = data(:,2); %<<<<
 k=1; 
 
 %traces = zeros(MAX_TRACES,segmentLength);
 for i=1:MAX_TRACES                                    
        for j = 1 :segmentLength
            traces(i,j) = y0(k);
            k = k+1;
        end
end

%ciphertext = myin('CipherText_1000000.txt', columns, rows);
ciphertext = myin('ecb_ct.txt', columns, rows);
keyCandidateStart = 0;
keyCandidateStop = 255;
result = zeros(1, 16);
tic
figure;

parfor (i=16:MAX_TRACES,cores)  %i=16:numberofplaintexts
     [~,key_mtd(:,i)]=cpa_attack_GitHub_for_MTDFinal_Inverse(i,BYTE, byte_Hamming_weight, INVSBOX, segmentLength, traces, ciphertext, keyCandidateStart, keyCandidateStop, result);
     %disp(i)
     disp(['BYTE-',num2str(BYTE),' Trace-',num2str(i)]);
end
toc

maxim = key_mtd(:,MAX_TRACES);
figure(BYTE);
subplot(2,1,1);
plot(maxim);
xlabel('Bytes');ylabel('Correlation');title(['MTD Curve BYTE ',num2str(BYTE)]);
maximum = max(maxim);
byte = find(maxim == maximum);
correctkey = dec2hex( byte - 1 );
fprintf('correct key byte %d = %s\n',BYTE,correctkey);

subplot(2,1,2);
for k=1:256
        plot(key_mtd(k,:),'color','black');  
        hold on;
end

plot(key_mtd(KEY(BYTE)+1,:),'linewidth',2,'color','red'); 
xlabel('Traces');ylabel('Correlation');
title(['MTD Curve BYTE ',num2str(BYTE)]);
xlabel('Traces');
ylabel('CORR');
pause(delay);
file_name=['CPA_MTD_ECB_BYTE-',num2str(BYTE),'_Traces-',num2str(MAX_TRACES),'.fig'];
savefig(file_name);
end

%End of "Working perfectly for Surya's design with step-size 1ns using the HD power 
%model while attacking the last round"
