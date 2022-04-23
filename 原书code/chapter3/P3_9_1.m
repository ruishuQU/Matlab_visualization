%�����ߵĵ���
clear                                  %�������
syms t                                 %������Ųα���
x=cos(t)^3;                            %���ź�����
y=sin(t)^3;                            %����������
dx_dt=diff(x)                          %x��t�ķ��ŵ���dx/dt
dy_dt=diff(y)                          %y��t�ķ��ŵ���dy/dt
dy_dx=dy_dt/dx_dt                      %y��x�ķ��ŵ���dy/dx
d2y_dxdt=diff(dy_dx)                   %dy/dx��t�ķ��ŵ���d2y/dxdt

dfx=inline(dx_dt);                     %dx/dt�����ߺ���
dfy=inline(dy_dt);                     %dy/dt�����ߺ���
d2fy=inline(d2y_dxdt);                 %d2y/dxdt�����ߺ���
t=linspace(-pi,pi);                    %�α�������
dx=dfx(t);                             %dx/dt��ֵ
dy=dfy(t);                             %dy/dt��ֵ
d2y=d2fy(t);                           %d2y/dxdt��ֵ
figure                                 %����ͼ�δ���
plot(t,dx,'--+',t,dy,'-.x',t,dy./dx,'-*',t,d2y./dx,':.',...
    'LineWidth',2)                     %������
legend('d\itx/a\rmd\itt','d\ity/a\rmd\itt',...
    'd\ity\rm/d\itx','\ita\rmd^2\ity\rm/d\itx\rm^2',2)%��ͼ��
title('��������α����仯�ĵ���','FontSize',16)%�ӱ���
grid on                                %������
xlabel('\itt','FontSize',16)           %�Ӻ�����
axis([-pi,pi,-2.5,2.5])                %���÷�Χ

fx=inline(x);                          %x�����ߺ���
fy=inline(y);                          %y�����ߺ���
x=fx(t);                               %x��ֵ
y=fy(t);                               %y��ֵ
dt=t(2)-t(1);                          %���
dx=diff(x)/dt;                         %��x��t����ֵ����
dx=[dx(1),(dx(1:end-1)+dx(2:end))/2,dx(end)];%��ƽ��ֵ
dy=diff(y)/dt;                         %��y��t����ֵ����
dy=[dy(1),(dy(1:end-1)+dy(2:end))/2,dy(end)];%��ƽ��ֵ
dy_dx=dy./dx;                          %y��x����ֵ����
d2y=diff(dy_dx)/dt;                    %��dy/dx��t����ֵ����
d2y=[d2y(1),(d2y(1:end-1)+d2y(2:end))/2,d2y(end)];%��ƽ��ֵ
hold on                                %��������
plot(t,dx,'d',t,dy,'s',t,dy_dx,'o',t,d2y./dx,'^','LineWidth',2)%������
text(-pi,-1.4,'�Ӻ�,�˺ź��Ǻű�ʾ������,����,���κ�Ȧ��ʾ��ֵ��.',...
    'FontSize',16)                     %��˵��

x(t<0)=NaN;                            %�α���С��0�ĺ������Ϊ����
%dy_dx(abs(dy_dx)>4)=NaN;               %̫���ֵ��Ϊ����
figure                                 %����ͼ�δ���
plot(x,dx,'--',x,dy,'-.',x,dy_dx,x,d2y./dx,':','LineWidth',2)%������
legend('d\itx/a\rmd\itt','d\ity/a\rmd\itt',...
    'd\ity\rm/d\itx','\ita\rmd^2\ity\rm/d\itx\rm^2',3)%��ͼ��
title('������������仯�ĵ���','FontSize',16)%�ӱ���
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
axis([-1,1,-2.5,2.5])                  %���÷�Χ
grid on                                %������

%�������.��Ⱥ�����
