%ָ�������ĵ���
clear                                  %�������
syms x a                               %������ű���
y=a^x                                  %���ź���
dy_dx=diff(y)                          %��y��x�ĵ���
f=inline(y);                           %���������ߺ���
df=inline(dy_dx)                       %���������ߺ���
xm=3;                                  %����Ա���
dx=0.1;                                %���
x=-xm:dx:xm;                           %�Ա�������
e=exp(1);                              %��Ȼ������
a=[1/e,0.5:0.5:2.5,e];                 %��������
[A,X]=meshgrid(a,x);                   %�������Ա�������
Y=f(A,X);                              %ָ����������
figure                                 %����ͼ�δ���
plot(x,Y,'LineWidth',2)                %������������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('ָ������������','FontSize',16)  %�ӱ���
grid on                                %������
legend([repmat('\ita\rm=',length(a),1),num2str(a')],0)%��ͼ��
axis([-xm,xm,0,6])                     %�������귶Χ

DY=df(A,X);                            %�ݺ���������ֵ
figure                                 %����ͼ�δ���
plot(x,DY,'-*','LineWidth',2)          %��������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity\prime','FontSize',16)     %��������
title('ָ�������ĵ���','FontSize',16)  %�ӱ���
grid on                                %������
legend([repmat('\ita\rm=',length(a),1),num2str(a')],0)%��ͼ��
axis([-xm,xm,-3,3])                    %�������귶Χ

dY=diff(Y)/dx;                         %����
dY=[dY(1,:);(dY(1:end-1,:)+dY(2:end,:))/2;dY(end,:)];%��ƽ��ֵ��ʾ��ֵ����
hold on                                %����ͼ��
plot(x,dY,'o','LineWidth',2)            %��������
text(-xm,2,'�Ǻ��ǽ�����,Բ����ֵ��','FontSize',16)%��˵��

%�������.��Ⱥ�����
