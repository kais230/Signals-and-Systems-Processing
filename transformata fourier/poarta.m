function y= poarta(t,A,a,b)
%functia poarta
y=zeros(1,length(t));

for i=1:length(t)
    if(t(i)>a)&&(t(i)<b)
        y(i)=A;
    end
end