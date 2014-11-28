data = fscanfMat("sine01-local.txt");
len=length(data(:,1));
fan=ones(1:len);
fan = fan*50;
data=data';
data=[data(1,:);data(2,:);fan;data(4,:);data(5,:)];
data=data';
fdfh = file('open',"sine01-local-new.txt",'unknown');

file('last', fdfh)

write(fdfh,data,'(7(f15.1,3x))');

file('close', fdfh);

//For Ramp
