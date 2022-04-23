%���������ߵ����ʰ뾶
clear                                  %�������
syms x                                 %������ű���
y=x^3/3                                %���ź���
dy_dx=diff(y)                          %����ŵ���
d2y_dx2=diff(y,2)                      %����׷��ŵ���
rho=(1+dy_dx^2)^(3/2)/abs(d2y_dx2)     %��������ʰ뾶
xc=x-dy_dx*(1+dy_dx^2)/d2y_dx2;        %�����ߺ�����
yc=y+(1+dy_dx^2)/d2y_dx2;              %������������

f=inline(y)                            %���ź�����Ϊ���ߺ���
df=inline(dy_dx)                       %���ŵ�����Ϊ���ߺ���
d2f=inline(d2y_dx2)                    %���׷��ŵ�����Ϊ���ߺ���
fxc=inline(xc);                        %�����ߺ���������ߺ���
fyc=inline(yc);                        %����������������ߺ���
fr=inline(rho)                         %�������ʰ뾶��Ϊ���ߺ���
xm=2.5;                                %��������
x=-xm:0.001:xm;                        %����������
figure                                 %����ͼ�δ���
plot(x,f(x),x,fr(x),'--',fxc(x),fyc(x),'-.','LineWidth',2)%������
title('���������ߺ����ʰ뾶�Լ�������','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
axis([-xm,xm,-2,2.5])                  %�������߷�Χ
axis equal                             %ʹ���������
legend('\ity','\it\rho','\ity_C-x_C',0)%��ͼ��

dr_dx=diff(rho)                        %��뾶�ĵ���
xrm=double(solve(dr_dx))               %�����
xrm(imag(xrm)~=0)=[]                   %ɾ������
xrm=xrm(1)                             %ȡ��1��ֵ
xcm=fxc(xrm);                          %�����߼�������
ycm=fyc(xrm);                          %�����߼��������
rm=subs(rho,'x',xrm)                   %��뾶��ֵ
t=linspace(0,2*pi);                    %�Ƕ�����
hold on                                %��������
plot(xcm+rm*cos(t),ycm+rm*sin(t),':','LineWidth',2)%����С����Բ
stem(xrm,rm,'--')                      %������
text(xrm,rm,[num2str(xrm),',',num2str(rm)],'FontSize',16)%������ʰ뾶��ֵ
plot([xrm,xcm],[f(xrm),ycm],'--o')     %����С�뾶
text(-xcm,-ycm,[num2str(-xcm),',',num2str(-ycm)],...
    'FontSize',16)                     %�����С���ʰ뾶������

%�������.��Ⱥ�����
