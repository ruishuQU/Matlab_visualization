%���Ǻ����ĵ����ĺ����ļ�
function fun(y,t,xm,ym)
dy_dx=diff(y)                          %��y��x�ĵ���
d2y_dx2=diff(y,2)                      %��y��x�Ķ��׵���
f=inline(y);                           %���������ߺ���
df=inline(dy_dx)                       %���������ߺ���
d2f=inline(d2y_dx2)                    %���׵��������ߺ���
x=linspace(-xm,xm);                    %����������
figure                                 %����ͼ�δ���
plot(x,f(x),x,df(x),'--o',x,d2f(x),'-.s','LineWidth',2)%������
title([t,'�����͵���'],'FontSize',16)   %�ӱ���
grid on                                %������
xlabel('\itx','FontSize',16)           %�Ӻ�����
axis([-xm,xm,-ym,ym])                  %�������귶Χ
legend('\ity','\ity\prime','\ity\prime\prime',0)%ͼ��

%�������.��Ⱥ�����
