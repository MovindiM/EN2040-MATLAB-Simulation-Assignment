bins = 10; %Number of bins(In Q5 part(a) this is changed to 100)
Rmax = max(R); %Maximum value of R
Rmin = min(R); %Minimum value of R
marg = linspace(Rmin,Rmax,bins+1); %Margins of bins
%next we have to get the mid vaue of margins
x = zeros(1,bins); %Mid values of margins
for k=1:1:bins
    x(k)=(marg(k)+marg(k+1))/2;
end

%Next we have to calculate the height of each bin
count = zeros(1,bins); %Height of bins
for m=1:1:L
    for n=1:1:bins
        if R(m)<=marg(n+1)
            count(n)=count(n)+1;
            break
        end
    end
end

%Now we plot the histrogram without using hist()
figure;
bar(x,count);
title('Histogram of R (without using hist())');

%Now we plot the histogram using hist()
figure;
hist(R,bins);
title('Histogram of R (using hist())');