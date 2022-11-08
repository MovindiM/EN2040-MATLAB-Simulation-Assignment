%Generating decoded sequence
Y=zeros(1,L); %Initializing Y
tau=0; %threshold is 0
for j=1:1:L
    if R(j)>tau
        Y(j)=A;
    else
        Y(j)=(-1)*A;
    end
end

%Plotting transmitted signal and decoded signal
figure;
subplot(2,1,1);
stairs([1:L],S); %Plotting S
ylim([-1.5 1.5])
title('Transmitted Signal (S)');

subplot(2,1,2);
stairs([1:L],Y); %Plotting Y
ylim([-1.5 1.5])
title('Decoded Signal (Y)');

%For compairing we can zoom in S & Y 
figure;
subplot(2,1,1);
stairs([1:L],S); %Plotting S
xlim([0 100]),ylim([-1.5 1.5])
title('Transmitted Signal (S)');

subplot(2,1,2);
stairs([1:L],Y); %Plotting Y
xlim([0 100]),ylim([-1.5 1.5])
title('Decoded Signal (Y)');
%%
% 
%   for x = 1:10
%       disp(x)
%   end
% 