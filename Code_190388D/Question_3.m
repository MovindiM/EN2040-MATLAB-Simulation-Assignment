R=S+N; %Generating R
figure;
stairs([1:L],R); %Plotting R
title('Received Signal (R)');

%First we generate AWGN of variance=4 & sd=2
sd1=2; 
N1=sd1*randn(1,L)+mu;

%Next we generate AWGN of variance=9 & sd=3
sd2=3; 
N2=sd2*randn(1,L)+mu;

%We plot received signals
R1=S+N1;
R2=S+N2;
figure;
subplot(1,2,1);
stairs([1:L],R1); %Plotting R1
title('Received Signal (sd=2)');

subplot(1,2,2);
stairs([1:L],R2); %Plotting R2
title('Received Signal (sd=3)');
%%
% 
%   for x = 1:10
%       disp(x)
%   end
% 