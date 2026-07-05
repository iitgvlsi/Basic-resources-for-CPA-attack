function MIA_inv(numberOfTraces,BYTE,numberofsamples)
warning off
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
rows = numberOfTraces; 

ciphertext= myin('ecb_ct.txt', columns, rows);   



tracesnew = zeros(numberOfTraces,numberofsamples);
data1 = table2array(readtable('aes_ecb.csv','Format','%f%f'));
y0 = data1(:,2);% assigning the 2nd coloumn of data to y0 (ie, 2nd coloumn of csv file) 
k=1;

for i=1:numberOfTraces
    disp(i)
       
    maxi=max(y0); % assigning max value of the power trace into maxi
    mini=min(y0); % assigning max value of the power trace into mini
    %y0=y0.*10;
    res=(maxi-mini)/16;
    y1=y0-mini; %substracting each element of y0 with minimum element of y0
    y1=y1./res; %divides each element of y1 by the corresponding element of res. 
    y1=round(y1)+1;                                 
    
        for j = 1 : numberofsamples
            tracesnew(i,j) = y1(k);
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
    
powerHypothesis = zeros(numberOfTraces, 256);
 for N = 1 : numberOfTraces
    XOR = bitxor(ciphertext(N, abs(BYTE)), K);
    invsboxVal = INVSBOX(XOR+1);
    temp1 = bitxor(ciphertext(N, BYTEnew), invsboxVal); 
    Hd = byte_Hamming_weight(temp1 + 1);
    powerHypothesis(N, K + 1) = Hd;
   
 end
 
 
maxim = zeros(1,256);   
for u = 1:256 %looping for all the 256 combinations of a byte
    x1 =  powerHypothesis(:,u);
    x = zeros(1,numberofsamples);
        for c= 1:numberofsamples
                 x2 =  tracesnew(:,c);
                 x(1,c) = MI(x1,x2);
        end
         maxim(u) = max(x); %to find max of a particular byte
end

maximum = max(maxim);
byte = find(maxim == maximum);
correctkey = dec2hex( byte - 1 );
fprintf('correct key byte %d = %s\n',BYTE,correctkey);
figure(BYTE)
subplot(2,1,1);
plot(maxim); xlabel('Bytes');ylabel('MI');title(['MI vs correct key byte ',num2str(BYTE)]);
subplot(2,1,2);
plot(x); xlabel('Samples');ylabel('MI');title(['MI vs samples byte ',num2str(BYTE)])
toc