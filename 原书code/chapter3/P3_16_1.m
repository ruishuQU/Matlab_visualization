%�������������ԺͰ�͹��
clear                                  %�������
syms t                                 %������ű���
x=t^(1/(t-1));                         %������ķ��ű��ʽ
y=x*t;                                 %������ķ��ű��ʽ
dx_dt=diff(x);                         %��x��t�ķ��ŵ���dx/dt
dy_dt=diff(y);                         %��y��t�ķ��ŵ���dy/dt
dy_dx=dy_dt/dx_dt;                     %��y��x�ķ��ŵ���dy/dx
d2y_dxdt=diff(dy_dx);                  %��dy/dx��t�ĵ�������d2y/dxdt
d2y_dx2=d2y_dxdt/dx_dt;                %��dy/dx��x�ĵ�������d2y/dx2
fx=inline(x);                          %���ź�����ת��Ϊ���ߺ���
fy=inline(y);                          %����������ת��Ϊ���ߺ���
df=inline(dy_dx);                      %y��x�ķ��ŵ���ת��Ϊ���ߺ���
d2f=inline(d2y_dx2);                   %y��x�ķ��Ŷ��׵���ת��Ϊ���ߺ���
tm=6;                                  %���α���
dt=0.05;                               %�α������
t=0:dt:tm;                             %�α�������
x=fx(t);                               %ȡ��������ֵ
y=fy(t);                               %ȡ��������ֵ
dy=df(t);                              %ȡһ�׵���ֵ
d2y=d2f(t);                            %ȡ���׵���ֵ
figure                                 %����ͼ�δ���
plot(t,x,':',t,y,t,dy,'--',t,d2y,'-.','LineWidth',2)%����
title('������������͵�����α����ı仯����','FontSize',16)%�ӱ���
xlabel('\itt','FontSize',16)           %�Ӻ�����
grid on                                %������
axis([0,tm,-10,20])                    %�������귶Χ
legend('\itx','\ity','\ity\prime','\ity\prime\prime',0)% ��ͼ��

figure                                 %����ͼ�δ���
plot(x,y,x,dy,'--',x,d2y,'-.','LineWidth',2)%����
title('�������������ԺͰ�͹��','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
e=exp(1);                              %eֵ
hold on                                %��������
plot(e,e,'o')                          %��˫�ص�
text(e,e,[num2str(e),',',num2str(e)],'FontSize',16)%��˵��
rm=8;                                  %���Χ
plot([0,rm],[0,rm],'LineWidth',2)      %��б��
plot([0,rm],[1,1],'--',[1,1],[-2,rm],'--','LineWidth',2)%��������
axis([0,rm,-2,rm])                     %�������귶Χ
legend('\ity','\ity\prime','\ity\prime\prime',0)%��ͼ��
pause                                  %��ͣ
syms x y                               %������ű���
f=y^x-x^y;                             %��Ԫ���ź���
ezplot(f)                              %�ü��׻�ͼָ�����������

%�������.��Ⱥ�����
