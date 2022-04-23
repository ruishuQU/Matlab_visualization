%���Ϻ���
clear                                  %�������
syms x                                 %������ű���
f=atan(x)                              %���ų��Ⱥ���f(x)
g=2.^(-x)                              %���ų��Ⱥ���g(x)
fg=subs(f,x,g)                         %���Ÿ��Ϻ���f(g(x))
gf=subs(g,x,f)                         %���Ÿ��Ϻ���g(f(x))
f=inline(f);                           %���߳��Ⱥ���f
g=inline(g);                           %���߳��Ⱥ���g
% f=inline('atan(x)');                   %���Ⱥ���f
% g=inline('2.^(-x)');                   %���Ⱥ���g
xm=20;                                 %��������
x=-xm:0.1:xm;                          %�Ա�������
figure                                 %����ͼ�δ���
plot(x,f(x),'--',x,g(x),'-.',x,f(g(x)),x,g(f(x)),':','LineWidth',2)%����������
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
title('���Ϻ���','FontSize',16)        %�ӱ���
axis([-xm,xm,-2,3])                    %�������߷�Χ
legend('\itf\rm(\itx\rm)','\itg\rm(\itx\rm)',...
    '\itf\rm(\itg\rm(\itx\rm))','\itg\rm(\itf\rm(\itx\rm))')%ͼ��
ym=2^(pi/2);                           %ֵ������
hold on                                %��������
plot(-xm,ym,'o',xm,1/ym,'s','LineWidth',2)%��������
text(-xm,ym,num2str(ym),'FontSize',16) %������˵��
text(xm,1/ym,num2str(1/ym),'FontSize',16)%������˵��

%�������.��Ⱥ�����
