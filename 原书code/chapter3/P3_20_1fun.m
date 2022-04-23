%�����귽�̺ͽ����ߵĺ����ļ�
function fun(thm,r,tit)
syms t                                 %������ż���
dr_dt=diff(r);                         %��r��t�ķ��ŵ���dr/dt
d2r_dt2=diff(r,2);                     %��r��t�ķ��Ŷ��׵���d2r/dt2
r1=r^2+dr_dt^2;                        %���ӵ�һ����
r2=r^2+2*dr_dt^2-r*d2r_dt2;            %��ĸ
rho=r1^(3/2)/abs(r2)                   %���ʰ뾶
rho=simplify(rho)                      %����
x=r*cos(t);                            %ֱ�Ǻ�����
y=r*sin(t);                            %ֱ��������
% dx_dt=diff(x);                         %��x��t�ķ��ŵ���dx/dt
% dy_dt=diff(y);                         %��y��t�ķ��ŵ���dy/dt
% xc=r*cos(t)-dy_dt*r1/r2;               %�����ߺ�����
% yc=r*sin(t)+dx_dt*r1/r2;               %�����ߺ�����
xc=r*cos(t)-(dr_dt*sin(t)+r*cos(t))*r1/r2;%�����ߺ�����
xc=simplify(xc)                        %����
yc=r*sin(t)+(dr_dt*cos(t)-r*sin(t))*r1/r2;%������������
yc=simplify(yc)                        %����
rc=sqrt(xc^2+yc^2);                    %�����ߵļ����귽��
rc=simplify(rc)                        %����

fx=inline(x);                          %������ת��Ϊ���ߺ���
fy=inline(y);                          %������ת��Ϊ���ߺ���
fr=inline(rho);                        %���ʰ뾶ת��Ϊ���ߺ���
fxc=inline(xc);                        %�����ߺ�����ת��Ϊ���ߺ���
fyc=inline(yc);                        %������������ת��Ϊ���ߺ���
t=linspace(0,thm);                     %��������
x=fx(t);                               %ȡ��������ֵ
y=fy(t);                               %ȡ��������ֵ
rho=fr(t);                             %ȡ���ʰ뾶ֵ
xc=fxc(t);                             %ȡ�����ߺ�����ֵ
yc=fyc(t);                             %ȡ������������ֵ
figure                                 %����ͼ�δ���
plot(x,y,xc,yc,'--',x,rho,'-.','LineWidth',2)%������
title([tit,'�ͽ������Լ����ʰ뾶'],'FontSize',16)%�ӱ���
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
legend(tit,'������','���ʰ뾶',3)      %��ͼ��
hold on                                %����ͼ��
hc=plot(xc(1)+rho(1)*cos(t),yc(1)+rho(1)*sin(t),'r--');%����1������Բ��ȡ���
hr=plot([x(1),xc(1)],[y(1),yc(1)],'r--.','LineWidth',2);%���뾶��ȡ���
grid on                                %������
axis equal                             %ʹ���������
pause                                  %��ͣ
for i=2:length(t)                      %������ѭ��
    set(hc,'XData',xc(i)+rho(i)*cos(t),'YData',yc(i)+rho(i)*sin(t))%��������Բ
    set(hr,'XData',[x(i),xc(i)],'YData',[y(i),yc(i)])%���ð뾶
%    plot([xc(i-1),xc(i)],[yc(i-1),yc(i)],'LineWidth',2)%��Բ�Ĺ켣
    pause(0.1)                         %��ʱ
end                                    %����ѭ��

%�������.��Ⱥ�����
