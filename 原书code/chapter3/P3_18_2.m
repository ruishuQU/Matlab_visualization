%ҷ���ߵ����ʰ뾶�ͽ�����
clear                                  %�������
syms y                                 %������ű���
x=log((1+sqrt(1-y^2))/y)-sqrt(1-y^2);  %���ű��ʽ
dx_dy=diff(x);                         %��x��y�ķ���һ�׵���
dy_dx=1/dx_dy;                         %��y��x�ķ���һ�׵���
d2x_dy2=diff(x,2);                     %��x��y�ķ��Ŷ��׵���
d2y_dx2=-d2x_dy2/dx_dy^3;              %��y��x�ķ��Ŷ��׵���
rho=(1+dy_dx^2)^(3/2)/d2y_dx2          %���ʰ뾶
simplify(rho)                          %����
xc=x-dy_dx*(1+dy_dx^2)/d2y_dx2         %�����ߺ�����
simplify(xc)                           %����
yc=y+(1+dy_dx^2)/d2y_dx2               %������������
simplify(yc)                           %����

f=inline(x);                           %���ź�����ת��Ϊ���ߺ���
fr=inline(rho);                        %�������ʰ뾶ת��Ϊ���ߺ���
fxc=inline(xc);                        %�����߷��ź�����ת��Ϊ���ߺ���
fyc=inline(yc);                        %�����߷���������ת��Ϊ���ߺ���
dy=0.01;                               %��������
y=1:-dy:0.1;                           %����������
x=f(y);                                %ȡ������ֵ
rho=abs(fr(y));                        %ȡ���ʰ뾶ֵ
xc=fxc(y);                             %ȡ�����ߺ�����ֵ
yc=fyc(y);                             %ȡ������������ֵ
figure                                 %����ͼ�δ���
plot(x,y,xc,yc,'--',x,rho,'-.','LineWidth',2)%������
hold on                                %��������
plot(-x,y,-xc,yc,'--',-x,rho,'-.','LineWidth',2)%������
title('ҷ���ߺͽ�����','FontSize',16)  %�ӱ���
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
legend('ҷ����','������','���ʰ뾶',0)  %��ͼ��
grid on                                %������
pause                                  %��ͣ
rho=sqrt(1-y.^2)./y;                   %���ʰ뾶����ʽ
y=cosh(x);                             %����������
plot(x,y,'g+',-x,y,'g+',x,rho,'rx',-x,rho,'rx')%�����ʰ뾶�ͽ�����

%�������.��Ⱥ�����
