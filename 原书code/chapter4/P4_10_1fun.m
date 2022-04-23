%(ax^2+c)��ͬ�����Ĳ�ͬ���ֹ�ʽ�ĺ����ļ�
function fun(c)
xm=4;                                  %��������
dx=0.1;                                %��������
x=1:dx:xm;                             %����������
y=1./(x.^2+c);                         %��������
s=cumtrapz(y)*dx;                      %���η�����ֵĽ���ֵ
i1=atan(x/sqrt(c))/sqrt(c);            %�÷����к�����ʾ�Ļ���
i2=log((x-sqrt(-c))./(x+sqrt(-c)))/2/sqrt(-c);%�ö���������ʾ�Ļ���
figure                                 %����ͼ�δ���
plot(x,y,'LineWidth',2)                %��������������
hold on                                %��������
plot(x,i1-i1(1),'x--','LineWidth',2)   %�������к����Ļ�������
plot(x,i2-i2(1),'or-.','LineWidth',2)  %�����������Ļ�������
plot(x,s,'gs','LineWidth',2)           %�����η�����
title('1/(\itax\rm^2+\itc\rm)�������������ֹ�ʽ�ıȽ�',...
    'FontSize',16)                     %�ӱ���
xlabel('\itax','FontSize',16)          %�Ӻ�����
grid on                                %������
legend('��������','�����к����Ļ���','���������Ļ���','���η�����',0)%ͼ��
text(x(1),0,['\itac\rm=',num2str(c)],'FontSize',16)%˵������

%�������.��Ⱥ�����
