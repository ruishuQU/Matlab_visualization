%覻���
clear                                  %�������
y=sym('1/sqrt(x*(1-x))')               %���������ķ��ű��ʽ
xm1=0;                                 %��������
xm2=1;                                 %��������
s=int(y,xm1,xm2)                       %�����ķ��Ż���
s=double(s)                            %��Ϊ��ֵ
f=inline(y)                            %���ߺ���
dx=0.01;                               %��������
x=xm1:dx:xm2;                          %����������
x(1)=eps;                              %��һ��ֵ0��ΪС��
x(end)=xm2-eps;                         %���һ��ֵ1��Сһ��
figure                                 %����ͼ�δ���
fill([x,xm2,xm1],[f(x),0,0],'y')       %����ɫͼ
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('覻���','FontSize',16)          %�ӱ���
grid on                                %������
text(xm1,2,['\itS\rm=',num2str(s)],'FontSize',16)%��ʾ���
axis([xm1,xm2,0,10])                   %�������߷�Χ

%�������.��Ⱥ�����
