%��������б����ת�������ͱ�����ĺ����ļ�
function fun(x,z,t0)
x0=x*cos(t0)+z*sin(t0);                %��ת��ĺ�����
z0=-x*sin(t0)+z*cos(t0);               %��ת���������
dx0=diff(x0);                          %x0��t�ķ��ŵ���
dvx0=pi*z0^2*dx0;                      %��������
vx0=2*int(dvx0,3*t0,t0)                %����z=x����ת�����
vx0=double(vx0)                        %�����Ż�����ֵ
%f=inline(dvx0);                        %���Ԫת��Ϊ���ߺ���
%vx0=quad(f,5*t0,t0)                    %����z=x����ת�����(ͬ��)
dz0=diff(z0);                          %z0��t�ķ��ŵ���
dl=sqrt(dx0^2+dz0^2);                  %����΢��
dsx0=2*pi*z0*dl;                       %��������
f=inline(dsx0);                        %���Ԫת��Ϊ���ߺ���
sx0=quad(f,t0,5*t0)                    %����z=x����ת�ı����

fx0=inline(x0);                        %���ź�����x0ת��Ϊ���ߺ���
fz0=inline(z0);                        %����������z0ת��Ϊ���ߺ���
t=linspace(0,2*pi);                    %�α�������
[P,T]=meshgrid(t);                     %������Ϊ����
X=fz0(T).*cos(P);                      %���������
Y=fz0(T).*sin(P);                      %���������
Z=fx0(T);                              %���������
X0=X*cos(t0)+Z*sin(t0);                %��ʱ����ת�ĺ�����
Z0=-X*sin(t0)+Z*cos(t0);               %��ʱ����ת��������
figure                                 %����ͼ�δ���
surf(Z0,Y,X0)                          %����ת��
if t0>0                                %�����ĽǶȴ���0
    tit='\itz\rm=\itx\rm';             %z=x��ı���
    text(-1,0,-1,['\itV_z_=_x/a\rm^3=',num2str(vx0),...
        ',\itS_z_=_x/a\rm^2=',num2str(sx0)],'FontSize',16)%���ı�
else                                   %����
    tit='\itz\rm=-\itx\rm';            %z=-x��ı���
    text(-1,0,-1,['\itV_z_=_-_x/a\rm^3=',num2str(vx0),...
        ',\itS_z_=_-_x/a\rm^2=',num2str(sx0)],'FontSize',16)%���ı�
end                                    %��������
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
zlabel('\itz/a','FontSize',16)         %��������
title(['��������',tit,'����ת����Χ������ͱ����'],'FontSize',24)%�ӱ���
grid on                                %������
axis equal                             %ʹ���������
alpha(0.5)                             %�����͸��
shading interp                         %Ⱦɫ
box on                                 %�ӿ�
hold on                                %��������
plot3([-1,1],[0,0],[-1,1]*sign(t0),'--','LineWidth',2)%������

x=fx0(t);                              %ĸ�ߺ���������
z=fz0(t);                              %ĸ������������
o=zeros(size(t));                      %ȫ0����
xx=x*cos(t0)+z*sin(t0);                %��ʱ����ת�ĺ�����
zz=-x*sin(t0)+z*cos(t0);               %��ʱ����ת��������
h=fill3(xx,o,zz,'b');                  %����
pause                                  %��ͣ
for i=1:length(t)                      %��Բ�ܽ�ѭ��
    pp=t(i);                           %ȡԲ�ܽ�
    x=fx0(t)*cos(pp);                  %����������
    yy=fx0(t)*sin(pp);                 %����������
    z=fz0(t);                          %����������
    xx=x*cos(t0)+z*sin(t0);            %��ʱ����ת�ĺ�����
    zz=-x*sin(t0)+z*cos(t0);           %��ʱ����ת��������
    set(h,'XData',xx,'YData',yy,'ZData',zz)%��������
    drawnow                            %ˢ����Ļ
end                                    %����ѭ��

%�������.��Ⱥ�����
