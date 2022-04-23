%�����ʽ�����Ĺ���
clear                                  %�������
syms x                                 %������ű���
y=x^2/(1+x);                           %���ź���
k=double(limit(y/x,x,Inf))             %������б��
b=double(limit(y-k*x,x,Inf))           %�ؾ�
dy_dx=diff(y)                          %����ŵ���
d2y_dx2=diff(y,2)                      %����Ŷ��׵���
f=inline(y)                            %��Ϊ���ߺ���
df=inline(dy_dx)                       %��Ϊ���ߺ���
d2f=inline(d2y_dx2)                    %��Ϊ���ߺ���
xm=4;                                  %��������
x=-xm:0.01:xm;                         %����������
figure                                 %����ͼ�δ���
plot(x,f(x),x,df(x),'--',x,d2f(x),'-.','LineWidth',2)%����������
title('�����ʽ�����ĵ����ԺͰ�͹���Լ���ֵ�ͽ�����','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
legend('\ity','\ity\prime','\ity\prime\prime',4)%ͼ��
axis([-xm,xm,-6,4])                    %�������߷�Χ
dx0=solve(dy_dx)                       %��������
dx0=double(dx0)                        %��Ϊ��ֵ
dy0=f(dx0);                            %��ֵ
hold on                                %��������
stem(dx0,dy0,'--')                     %������
text(dx0,dy0,[num2str(dx0),repmat(',',length(dx0),1),num2str(dy0)],...
    'FontSize',16)                     %��Ǽ�ֵ
x=[-xm,xm];                            %����������
y=k*x+b;                               %����������
plot(x,y,':',[-1,-1],[-6,4],':','LineWidth',2)%��������

%�������.��Ⱥ�����
