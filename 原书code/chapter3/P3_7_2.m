%���������Ĵζ���ʽ�ڹյ�����ߺͷ���
clear                                  %�������
syms x k                               %������ű���
y=k*(x^2-3)^2;                         %���ź���
d2y_dx2=diff(y,2)                      %����Ŷ��׵���
xc=solve(d2y_dx2)                      %����׵����������
xc=double(xc(1))                       %ȡ��һ��ֵ
yc=subs(y,x,xc)                        %��յ�ĺ���ֵ
dy_dx=diff(y)                          %�����һ�׵���
kc=subs(dy_dx,x,xc)                    %��յ�ķ���б��
s=yc+xc/kc                             %��ԭ��ķ��߷���
k=solve(s)                             %��ϵ��
k=double(k(1))                         %ȡ��һ��ֵ

y=k*(x^2-3)^2;                         %�ؽ����ź���
dy_dx=diff(y)                          %������ŵ���
d2y_dx2=diff(y,2)                      %������Ŷ��׵���
f=inline(y)                            %���ź�����Ϊ���ߺ���
df=inline(dy_dx)                       %���ŵ�����Ϊ���ߺ���
d2f=inline(d2y_dx2)                    %���Ŷ��׵�����Ϊ���ߺ���

dx=0.01;                               %���
xm=3;                                  %��������
x=-xm:dx:xm;                           %����������
figure                                 %����ͼ�δ���
plot(x,f(x),x,df(x),'--',x,d2f(x),'-.','LineWidth',2)%����������
title('�Ĵζ���ʽ�ڹյ�����ߺͷ���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
legend('\ity','\ity\prime','\ity\prime\prime',4)%��ͼ��
axis([-1,1,-1,1]*xm)                   %�������߷�Χ
axis equal                             %ʹ���������
text(0,-1,['\itk\rm=\pm',num2str(k)],'FontSize',16)%���ϵ��

yc=f(xc);                              %�յ�ĺ���ֵ
hold on                                %��������
stem(xc,yc,'--d')                      %���ұ߸���
text(xc,yc,[num2str(xc),',',num2str(yc)],'FontSize',16)%����ұ߹յ�
stem(-xc,yc,'--d')                     %����߸���
text(-xc,yc,[num2str(-xc),',',num2str(yc)],'FontSize',16)%�����߹յ�

kc=df(xc)                              %�е��б��
x=[xc-1.5,xc+1];                       %����������
y1=yc+kc*(x-xc);                       %��������������
y2=yc-(x-xc)/kc;                       %��������������
plot(x,y1,x,y2,'LineWidth',2)          %���ұ����ߺͷ���
plot(-x,y1,-x,y2,'LineWidth',2)        %��������ߺͷ���

%�������.��Ⱥ�����
