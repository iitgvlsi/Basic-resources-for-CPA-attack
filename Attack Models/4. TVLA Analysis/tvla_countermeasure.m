function tvla_countermeasure(N,TimeSamples)
data1 = table2array(readtable('tcas1_sasebo_tvla.csv','Format','%f%f'));
    y0 = data1(:,1);% assigning the 2nd column of data to y0 (ie, 2nd coloumn of csv file)                                     
k=1; 
datamatrix= zeros(2*N,TimeSamples);
  for p = 1 : N
        for j  = 1 : TimeSamples
            datamatrix(p,j) = y0(k);
            k = k+1;
        end
  end 
  
 Subset_AG1 = datamatrix((1:N),:); 
 Subset_BG1 = datamatrix(((N+1):(2*N)),:);

T_Test_modes( Subset_AG1 , Subset_BG1  ,N , N, TimeSamples ,1 );
yline(4.5, 'red', '--', 'LineWidth', 3);
yline(-4.5, 'red', '--', 'LineWidth', 3);

end