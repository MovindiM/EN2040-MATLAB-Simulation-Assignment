%%
% 
%   for x = 1:10
%       disp(x)
%   end
% 
%Generating AWGN sequencce of length L, mean=mu and standard deviation=sd
mu=0;
sd=1; %variance=1 then sd=1
N=sd*randn(1,L)+mu;
