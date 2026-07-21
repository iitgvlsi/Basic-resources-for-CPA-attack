function [CC, HC]=cpa_attack_GitHub_for_MTDFinal_Inverse(numberOfTraces,BYTE, byte_Hamming_weight, INVSBOX ,segmentLength, traces, ciphertext, keyCandidateStart, keyCandidateStop, result)

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
    XOR = bitxor(ciphertext(N, BYTE), K);
    invsboxVal = INVSBOX(XOR+1);
    temp1 = bitxor(ciphertext(N, BYTEnew), invsboxVal); 
    Hd = byte_Hamming_weight(temp1 + 1);
   powerHypothesis(N, K + 1) = Hd;
   
 end
 
CC = mycorr(powerHypothesis(1:numberOfTraces,:), traces(1:numberOfTraces,:));
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
end
