clc 
clear
a1=imread('000a.bmp');
b=0:208;
[m,n]=size(a1);
[H,N]=size(b);
a=zeros(m,n,N*2);
%��ȡa��
for i=1:N
    if b(i)<10
           imageName=strcat('0','0',int2str(b(i)),'a.bmp'); 
    elseif b(i)<100
            imageName=strcat('0',num2str(b(i)),'a.bmp');
    else
           imageName=strcat(num2str(b(i)),'a.bmp');
    end
    a(:,:,i) = imread(imageName);
end
%��ȡb��
for i=1:N
    if b(i)<10
           imageName=strcat('0','0',int2str(b(i)),'b.bmp');
    elseif b(i)<100
            imageName=strcat('0',num2str(b(i)),'b.bmp');
    else
           imageName=strcat(num2str(b(i)),'b.bmp');
    end
    a(:,:,i+209) = imread(imageName);
end
tou1=zeros(11*19*2,1);
for i=1:11*19*2
      s=(a(1,:,i)==255&a(2,:,i)==255&a(3,:,i)==255&a(4,:,i)==255&a(5,:,i)==255&a(6,:,i)==255&a(7,:,i)==255&a(8,:,i)==255&a(9,:,i)==255&a(10,:,i)==255&a(11,:,i)==255&a(12,:,i)==255&a(13,:,i)==255&a(14,:,i)==255&a(15,:,i)==255&a(16,:,i)==255&a(17,:,i)==255&a(18,:,i)==255&a(19,:,i)==255&a(20,:,i)==255&a(21,:,i)==255&a(22,:,i)==255&a(23,:,i)==255&a(24,:,i)==255&a(25,:,i)==255&a(26,:,i)==255&a(27,:,i)==255&a(28,:,i)==255&a(29,:,i)==255&a(30,:,i)==255&a(31,:,i)==255&a(32,:,i)&a(32,:,i)==255&a(33,:,i)==255&a(34,:,i)==255&a(35,:,i)==255&a(36,:,i)==255&a(37,:,i)==255&a(38,:,i)==255&a(39,:,i)==255&a(40,:,i)==255&a(41,:,i)&a(42,:,i)==255&a(43,:,i)==255&a(44,:,i)==255&a(45,:,i)==255&a(46,:,i)&a(1,:,i)==255&a(47,:,i)==255&a(48,:,i)==255&a(49,:,i)==255)
      %s=(a(m,:,i)==255&a(m-1,:,i)==255&a(m-2,:,i)==255&a(m-3,:,i)==255&a(m-4,:,i)==255&a(m-5,:,i)==255&a(m-6,:,i)==255&a(m-7,:,i)==255&a(m-8,:,i)==255&a(m-9,:,i)==255&a(m-10,:,i)==255&a(m-11,:,i)==255&a(m-12,:,i)==255&a(m-13,:,i)==255&a(m-14,:,i)==255&a(m-15,:,i)==255&a(m-16,:,i)==255&a(m-17,:,i)==255&a(m-18,:,i)==255&a(m-19,:,i)==255&a(m-20,:,i)==255&a(m-21,:,i)==255&a(m-22,:,i)==255&a(m-23,:,i)==255&a(m-24,:,i)==255&a(m-25,:,i)==255&a(m-26,:,i)==255&a(m-27,:,i)==255&a(m-28,:,i)==255&a(m-29,:,i)==255&a(m-30,:,i)==255&a(m-31,:,i)==255&a(m-32,:,i)&a(m-33,:,i)==255&a(m-34,:,i)==255&a(m-35,:,i)==255&a(m-36,:,i)==255&a(m-37,:,i)==255&a(m-38,:,i)==255&a(m-39,:,i)==255&a(m-40,:,i)==255&a(m-41,:,i)&a(m-42,:,i)==255&a(m-43,:,i)==255&a(m-44,:,i)==255&a(m-45,:,i)==255&a(m-46,:,i)&a(m-47,:,i)==255&a(m-48,:,i)==255&a(m-49,:,i)==255&a(m-50,:,i)&a(m-51,:,i)==255&a(m-52,:,i)==255&a(m-53,:,i)==255&a(m-54,:,i)==255&a(m-55,:,i)==255&a(m-56,:,i)==255&a(m-57,:,i)==255&a(m-58,:,i)==255&a(m-59,:,i)==255&a(m-60,:,i)==255);
      %s=(a(:,n,i)==255&a(:,n-1,i)==255&a(:,n-2,i)==255&a(:,n-3,i)==255&a(:,n-4,i)==255&a(:,n-5,i)==255&a(:,n-6,i)==255&a(:,n-7,i)==255&a(:,n-8,i)==255&a(:,n-9,i)==255&a(:,n-9,i)==255&a(:,n-10,i)==255);
      %s=(a(:,1,i)==255&a(:,2,i)==255&a(:,3,i)==255&a(:,4,i)==255&a(:,5,i)==255);
      %s=(a(:,1,i)==255&a(:,2,i)==255&a(:,3,i)==255&a(:,4,i)==255&a(:,5,i)==255&a(:,6,i)==255&a(:,7,i)==255&a(:,8,i)==255&a(:,9,i)==255&a(:,10,i)==255&a(:,11,i)==255&a(:,12,i)==255);
      tou1(i,1)=tou1(i,1)+sum(s);
end
s=tou1==72;
sum(s)
ind2=find(s==1)
%l=size(ind2);
%for i=1:l
 %   if ind2(i)<=209
  %      ind2(i)=ind2(i)-1;
   % else
    %    ind2(i)=ind2(i)-210;
    %end
%end
%ind2
        
