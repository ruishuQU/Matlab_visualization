%ҷ���ߵ����
clear                                  %�������
syms y                                 %������ű���
x=log((1+sqrt(1-y^2))/y)-sqrt(1-y^2);  %���ŷ�����
s=2*int(x,0,1)                         %����Ż���
f=inline(x);                           %ת��Ϊ���ߺ���

syms t                                 %������ű���
x=log(cot(t/2))-cos(t);                %��1��������̵ĺ�����
y=sin(t);                              %��1��������̵�������
ds=y*diff(x);                          %��������
s=int(ds,pi,0)                         %����

x=t-tanh(t);                           %��2��������̵ĺ�����
y=sech(t);                             %��2��������̵�������
ds=(x*diff(y)-y*diff(x))/2;            %��������
s=int(ds,Inf,-Inf)                     %����
s=double(s);                           %��Ϊ��ֵ

dy=0.01;                               %��ֵ���
y=0:dy:1;                              %����������
y(1)=eps;                              %0��ΪС��
x=f(y);                                %����������
figure                                 %����ͼ�δ���
fill([x,-fliplr(x)],[y,fliplr(y)],'y') %����ɫͼ
title('ҷ���ߵ����','FontSize',16)    %�ӱ���
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
grid on                                %������
text(0,0,['\itS/a\rm^2=',num2str(s)],'FontSize',16)%��ʾ���
axis([-3,3,0,1])                       %�������߷�Χ
axis equal                             %ʹ���������

%�������.��Ⱥ�����
