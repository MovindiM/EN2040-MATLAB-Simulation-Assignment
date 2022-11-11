%calculating E[R|S=A]
Expa = 0;
for p = 1:bins
 Expa = Expa + (xp(p)*yp(p)*widthp);
end
disp(Expa);

%calculating E[R|S=-A]
Exna = 0;
for q = 1:bins
 Exna = Exna + (xn(q)*yn(q)*widthn);
end
disp(Exna);

%Calculating E[R]
[n,x]=hist(R,bins); %We get heights and bins using hist()
width = (max(R)-min(R))/(bins); %Calculating the width of a bin
Tot=length(R); %Total number of heights
y=n/(Tot*width); %Normalized values

Ex = 0;
for r = 1:bins
 Ex = Ex + (x(r)*y(r)*width);
end
disp(Ex);

figure;
bar(x,y); %Plotting the histrogram
title('Normalized histogram');
hold on;
plot(x,y,'r-','linewidth',1.2); %Plotting f R (r) in same figure

figure;
plot(x,y,'r-','linewidth',1.5); %Plotting f R (r)
title('f_R (r)');
%%
% 
%   for x = 1:10
%       disp(x)
%   end
% 