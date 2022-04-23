%�ݺ����뺬������ָ���˻���������
clear                                  %�������
a=-3:3;                                %����
xm=8;                                  %��������
x=-xm:0.01:xm;                         %����������
[A,X]=meshgrid(a,x);                   %�����ͺ��������
Y=X.*exp(-X./A);                       %���������
figure                                 %����ͼ�δ���
plot(x,Y,'LineWidth',2)                %��������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('�ݺ����뺬������ָ���˻���������','FontSize',16)%�ӱ���
grid on                                %������
legend([repmat('\ita\rm=',length(a),1),num2str(a')],4)%��ͼ��
axis([-xm,xm,-2,2])                    %�������귶Χ
hold on                                %��������
plot(x,x,':','LineWidth',2)            %������
yM=a/exp(1);                           %��ֵ������
stem(a,yM,'--')                        %����ֵ����
plot(x,x/exp(1),'-.','LineWidth',2)    %����ֵ�ֲ���
yC=2*a/exp(1)^2;                       %�յ�������
plot(2*a,yC,'s')                       %���յ�
plot(2*x,2*x/exp(1)^2,'-.','LineWidth',2)%���յ�ֲ���

y=sym('x*exp(-x)');                    %������ź���
dy_dx=diff(y)                          %����ŵ���
d2y_dx2=diff(y,2)                      %����Ŷ��׵���
f=inline(y);                           %���ź���ת��Ϊ���ߺ���
df=inline(dy_dx);                      %���ŵ���ת��Ϊ���ߺ���
d2f=inline(d2y_dx2);                   %���Ŷ��׵���ת��Ϊ���ߺ���
figure                                 %����ͼ�δ���
plot(x,f(x),x,df(x),'--',x,d2f(x),'-.','LineWidth',2)%������
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
title('Լ�������͵�������','FontSize',16)%�ӱ���
grid on                                %������
axis([-1,xm,-1,1])                     %�������귶Χ
legend('\ity/a','\ity\prime','\itay\prime\prime')%��ͼ��
xM=solve(dy_dx)                        %�����ķ������
xM=double(xM)                          %��Ϊ��ֵ
yM=f(xM);                              %��ֵ������
hold on                                %��������
stem(xM,yM,'--')                       %����ֵ����
text(xM,yM,[num2str(xM),',',num2str(yM)],'FontSize',16)%��Ǽ�ֵ
xC=solve(d2y_dx2)                      %����׵����ķ������
xC=double(xC)                          %��Ϊ��ֵ
yC=f(xC);                              %��յ�������
plot(2,yC,'s')                         %���յ�
text(xC,yC,[num2str(xC),',',num2str(yC)],'FontSize',16)%��ǹյ�

%�������.��Ⱥ�����
