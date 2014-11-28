clear
data = fscanfMat("sine0035-local-new.txt");
output = "sine0035-local.txt";
len=length(data(:,1));

epoch=getdate('s');
dt=getdate();
ms=dt(10);
epoch=(epoch*1000)+ms;

for i=1:len;
    nxt_epoch=epoch($)+(100 + ceil(rand()*10));
    epoch=[epoch;nxt_epoch];
end

itr=1:len;

data=data';
epoch=epoch';
data=[itr;data(2,:);data(3,:);data(4,:);epoch(:,1:$-1)];


data=data';
fdfh = file('open',output,'unknown');

file('last', fdfh)

write(fdfh,data,'(7(f15.1,3x))');

file('close', fdfh);

//For sine