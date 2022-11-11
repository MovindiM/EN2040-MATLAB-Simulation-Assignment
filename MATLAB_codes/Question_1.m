L=100000;
%Generating a binary sequence with Pr(D=0)=0.5 & Pr(D=1)=0.5
D=randi([0 1],1,L);

%Generating a stream of rectangular pulses of amplitude A
A=1;
S=zeros(1,L); %Initializing S
for i=1:1:L
    if D(i)==1
        S(i)=A; %if D=1 then S=A
    else
        S(i)=(-1)*A; %if D=0 then S=-A
    end
end
%%
% 
%   for x = 1:10
%       disp(x)
%   end
% 
