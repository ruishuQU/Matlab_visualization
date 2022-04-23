%��֤����������ֵ����
clear                                  %�������
a=0;                                   %��������
b=1;                                   %�յ������
syms x                                 %������ű���
y=x^3+2*x                              %���ź���
f=inline(y)                            %�������ߺ���
ya=f(a);                               %���������
yb=f(b);                               %�յ�������
k=(yb-ya)/(b-a);                       %б��
dy_dx=diff(y)                          %����
x0=solve(dy_dx-k)                      %��ͬб�ʵĵ�ĺ�����
x0=double(x0);                         %��Ϊ��ֵ
y0=f(x0);                              %����ֵ
dx=0.1;                                %���
x=a-1:dx:b+0.5;                        %����������
y=f(x);                                %����������
figure                                 %����ͼ�δ���
plot(x,f(x),[a,b],[ya,yb],'--*',x0,y0,'o','LineWidth',2)%������
xlabel('\itx','FontSize',16)           %�Ӻ�����
title('��֤����������ֵ����','FontSize',16)%�ӱ���
text(x0,y0,[num2str(x0),repmat(',',length(x0),1),num2str(y0)],...
    'FontSize',16)                     %��˵��
grid on                                %������
x0=x0(x0>=a&x0<=b);                    %ȡ�����ĺ�����
y=f(x0)+k*(x-x0);                      %��������
hold on                                %��������
plot(x,y,':','LineWidth',2)            %��ƽ����
axis tight                             %��������

%�������.��Ⱥ�����
