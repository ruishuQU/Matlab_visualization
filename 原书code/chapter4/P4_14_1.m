%�����ߵ�����ͻ���
clear                                  %�������
syms x real                            %������ű���
y=cosh(x);                             %���ź���
s=int(y,0,x)                           %������ķ��Ŷ�����
f=inline(y)                            %�����ߵ����ߺ���
xm=2;                                  %��������
dx=0.1;                                %��������
x=0:dx:xm;                             %����������
y=f(x);                                %�����ߵ�����������
s=subs(s,'x',x);                       %�����ߵ��������
dy=diff(y)/dx;                         %ͨ���������ֵ����
dy=[dy(1),(dy(1:end-1)+dy(2:end))/2,dy(end)];%��ƽ��ֵ
dl=sqrt(1+dy.^2);                      %��������
l=cumtrapz(dl)*dx;                     %�����η��󻡳�
figure                                 %����ͼ�δ���
plot(x,y,x,s,'x--',x,l,'o-.','LineWidth',2)%������
title('�����ߵ�����ͻ���','FontSize',16)%�ӱ���
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
grid on                                %������
hold on                                %��������
fill([x,xm,0],[y,0,0],'y')             %����ɫͼ
alpha(0.5)                             %ƽ���͸��
legend('\ity/a','\itS/a\rm^2','\itL/a',0)%��ͼ��

%�������.��Ⱥ�����
