%Generating an interference of length L, mean=mu_i and standard
%deviation=sd_i
%I is also gaussian distributed
mu_i=0;
sd_i=1; %variance=1 then sd=1
I=sd_i*randn(1,L)+mu_i;

%Getting the received signal
R=S+N+I;

%Next we run the same code used to question 5 part(b), part(c) and part(d)
%with new R
%%
% 
%   for x = 1:10
%       disp(x)
%   end
% 
%%
% 
%   for x = 1:10
%       disp(x)
%   end
% 