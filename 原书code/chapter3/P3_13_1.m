%��֤�޶���ֵ����
clear                                  %�������
syms x                                 %������ű���
y=log(sin(x))                          %���ź���
dy=diff(y)                             %����
x0=solve(dy)                           %����������
f=inline(y);                           %��Ϊ���ߺ���
x0=double(x0);                         %��Ϊ��ֵ
y0=f(x0);                              %����ֵ
xm1=pi/6;                              %��С������
xm2=5*pi/6;                            %��������
x=linspace(xm1,xm2);                   %����������
figure                                 %����ͼ�δ���
plot(x,f(x),x0,y0,'o','LineWidth',2)   %������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('��֤�޶���ֵ����','FontSize',16)%�ӱ���
grid on                                %������
text(x0,y0,[num2str(x0),',',num2str(y0)],'FontSize',16)%��˵��
hold on                                %��������
x=[xm1,xm2];                           %�����յ������
y=f(x);                                %�����յ�������
stem(x,y,'--')                         %������
text(x,y,num2str(y'),'FontSize',16)    %���������

%�������.��Ⱥ�����
