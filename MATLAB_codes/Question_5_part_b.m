bins=100;
Rp=[]; %R values gien that S=A
Rn=[]; %R values gien that S=-A
for p=1:1:L
    if S(p)==A 
        Rp(end+1)=R(p); %When S=A R(p) should be added to Rp
    else
        Rn(end+1)=R(p); %When S=-A R(p) should be added to Rn
    end
end

%S=A(S is positive)
[np,xp]=hist(Rp,bins); %We get heights and bins using hist()
widthp = (max(Rp)-min(Rp))/(bins); %Calculating the width of a bin
Totp=length(Rp); %Total number of heights
yp=np/(Totp*widthp); %Normalized values

figure;
bar(xp,yp); %Plotting the histrogram
title('Normalized histogram (S=A)');
hold on;
plot(xp,yp,'r-','linewidth',1.2); %Plotting f R|S (r|S = A) in same figure

figure;
plot(xp,yp,'r-','linewidth',1.5); %Plotting f R|S (r|S = A)
title('f_R_|_S (r|S = A)');

%S=-A(S s negative)
[nn,xn]=hist(Rn,bins); %We get heights and bins using hist()
widthn = (max(Rn)-min(Rn))/(bins); %Calculating the width of a bin
Totn=length(Rn); %Total number of heights
yn=nn/(Totn*widthn); %Normalized values

figure;
bar(xn,yn); %Plotting the histrogram
title('Normalized histogram (S=-A)');
hold on;
plot(xn,yn,'r-','linewidth',1.2); %Plotting f R|S (r|S = -A) in same figure

figure;
plot(xn,yn,'r-','linewidth',1.5); %Plotting f R|S (r|S = -A)
title('f_R_|_S (r|S = -A)');