clc;
x = 15; 
t = 0.5;
N = 15; 
dt = 0.1;
dx = x/N;
xi = 0:dx:x;
nt = floor(t/dt); 
dt = t/ nt;
signal = input ('enter the signal',"s");
switch signal
    case 'red1'
        u0=[0.55,0.55,0.55,0.55,0.55,0,0,0,0,0,0,0,0,0,0];
    case 'green'
        u0=[0.78866,0.93255,0.98469,0.99728,0.99965,0.99997,0,0,0,0,0,0,0,0,0];
    case 'red2'
        u0=[0.79631,0.75903,0.71917,0.67687,0.63174,0.58208,0.41791,0.36825,0.32311,0.28078,0.24085,0.20331,0.16833,0.13619,0.10722];
end
u = u0; 
unew = 0*u;
for i = 1 : nt
        unew(2:end-1) =u(2:end-1)- dt/dx*(nf(u(2:end-1),u(3:end)) - nf(u(1:end-2),u(2:end-1))); 
        unew(1) = u(1); 
        unew(end) = u(end);
       
        u = unew; 
       
        U(i,:) = u(:);
        fprintf('For t=%d \n',i);
        disp(U(i,:));      
 end


U=[u0;U];
T=0:dt:t;
figure(1);
surfl(x,T,U); 
colormap('red');