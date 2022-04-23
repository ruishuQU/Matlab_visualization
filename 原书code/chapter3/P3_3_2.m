%���������ĵ���
clear                                  %�������
syms x a                               %������ű���
y=log(x)/log(a)                        %���ź���
dy_dx=diff(y)                          %��y��x�ĵ���
f=inline(y);                           %���������ߺ���
df=inline(dy_dx)                       %���������ߺ���
xm=3;                                  %����Ա���
x=0.1:0.1:xm;                          %�Ա�������
a=[1/exp(1),0.5:0.5:2,exp(1),10];      %��������
[A,X]=meshgrid(a,x);                   %�������Ա�������
Y=log(X)./log(A);                      %������������
%Y(isinf(Y))=0;                         %������Ϊ0
figure                                 %����ͼ�δ���
plot(x,Y,'LineWidth',2)                %������������
title('��������������','FontSize',16)  %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
legend([repmat('\ita\rm=',length(a),1),num2str(a')],4)%����ͼ��

DY=df(A,X);                            %��������������ֵ
figure                                 %����ͼ�δ���
plot(x,DY,'LineWidth',2)               %��������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity\prime','FontSize',16)     %��������
title('���������ĵ���','FontSize',16)  %�ӱ���
grid on                                %������
axis([0,xm,-3,3])                      %�������귶Χ
legend([repmat('\ita\rm=',length(a),1),num2str(a')],0)%��ͼ��

%�������.��Ⱥ�����
