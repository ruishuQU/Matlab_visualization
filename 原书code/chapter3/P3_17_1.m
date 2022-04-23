%�����ߵ����ʰ뾶
clear                                  %�������
syms x                                 %������ű���
y=x^2/2                                %���ź���
dy_dx=diff(y)                          %����ŵ���
d2y_dx2=diff(y,2)                      %����׷��ŵ���
rho=(1+dy_dx^2)^(3/2)/abs(d2y_dx2)     %�����ʰ뾶
xc=x-dy_dx*(1+dy_dx^2)/d2y_dx2;        %�����ߺ�����
yc=y+(1+dy_dx^2)/d2y_dx2;              %������������

f=inline(y)                            %���ź�����Ϊ���ߺ���
fr=inline(rho)                         %�������ʰ뾶��Ϊ���ߺ���
xm=2;                                  %��������
x=-xm:0.01:xm;                         %����������
figure                                 %����ͼ�δ���
plot(x,f(x),x,fr(x),'--','LineWidth',2)%�������Ͱ뾶����
title('�������ϵ������ߺ����ʰ뾶�Լ�������','FontSize',16)%�ӱ���
xlabel('\itx/p','FontSize',16)         %�Ӻ�����
grid on                                %������
xxc=subs(xc,'x',x);                    %�滻�����ߺ�����ֵ
yyc=subs(yc,'x',x);                    %�滻������������ֵ
hold on                                %��������
plot(xxc,yyc,'-.r','LineWidth',2)      %��������
legend('\ity/p','\it\rho/p','\ity_C/p-x_C/p',4)%��ͼ��

dr_dx=diff(rho)                        %��뾶�ĵ���
xcm=solve(dr_dx)                       %�����
xcm=double(xcm)                        %��Ϊ��ֵ
xcm(imag(xcm)~=0)=[]                   %ɾ������
ycm=subs(yc,'x',xcm);                  %�滻������������ֵ
rcm=subs(rho,'x',xcm)                  %��ֵ
rcm=double(rcm)                        %��Ϊ��ֵ
text(xcm,ycm,[num2str(xcm),',',num2str(rcm)],'FontSize',16)%��Ǽ�ֵ
t=linspace(0,2*pi);                    %�Ƕ�����
plot(xcm+rcm*cos(t),ycm+rcm*sin(t),':','LineWidth',2)%����С����Բ
axis equal                             %ʹ���������
axis([-xm,xm,0,3])                     %�������߷�Χ

%�������.��Ⱥ�����
