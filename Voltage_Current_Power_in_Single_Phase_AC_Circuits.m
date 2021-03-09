Vm = 100; thetav = 0;
Z = 1.25; gama = 60;
thetai = thetav - gama;
theta = (thetav - thetai)*pi/180;
Im = Vm/Z;
wt = 0:.05:2*pi;
v = Vm*cos(wt);
i = Im*cos(wt + thetai*pi/180);
p = v.*i;
V = Vm/sqrt(2); I = Im/sqrt(2);
P = V*I*cos(theta);
Q = V*I*sin(theta);
S = P +1i*Q;
pr = P*(1 + cos(2*(wt + thetav)));
px = Q*sin(2*(wt + thetav));
PP = P*ones(1, length(wt));
xline = zeros(1, length(wt));
wt = 180/pi*wt;
subplot(2,2,1), plot(wt, v, wt, i, wt, xline), grid('on'), title(['v(t)=Vm coswt, i(t)=Im cos(wt+',num2str(thetai),')']), xlabel('wt, degree')
subplot(2,2,2), plot(wt, p, wt, xline), grid('on'), title('p(t)=v(t) i(t)'),xlabel('wt, degree')
subplot(2,2,3), plot(wt, pr, wt, PP, wt, xline), grid('on'), title('pr(t) Eq. 2.6'), xlabel('wt, degree')
subplot(2,2,4), plot(wt, px, wt, xline), grid('on'),  title('px(t) Eq 2.8'), xlabel('wt, degree'), subplot(111)

