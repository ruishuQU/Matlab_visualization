%���������֮���ƽ���ƺ�����ת������ͱ�����ĺ����ļ�
function fun(z,xm,tit)
syms x                                 %������ű���
dvx=pi*z^2;                            %��x����ת��Բ�����
vx=int(dvx,0,x)                        %��x����ת������
% dz=diff(z)                             %��������΢��
% dl=sqrt(1+dz^2)                        %����΢��
% dl=simplify(dl)                        %������ű�������
% dsx=2*pi*z*dl;                         %��x��ת�Ļ����΢��
% sx=int(dsx,0,x)                        %��x����ת��ı����
% fsx=inline(sx);                        %����������ߺ���

f=inline(z);                           %ĸ��ת��Ϊ���ߺ���
fvx=inline(vx);                        %��������ߺ���
dx=0.01;                               %��������
x=0:dx:xm;                             %����������
z=f(x);                                %������������ĸ������
vx=fvx(x);                             %�������
% sx=fsx(x);                             %���������
dz=diff(z)/dx;                         %ͨ�������������Ժ��������ֵ����
dz=[dz(1),(dz(1:end-1)+dz(2:end))/2,dz(end)];%��ƽ��ֵ
dl=sqrt(1+dz.^2);                      %������ֵ΢��
dsx=2*pi*z.*dl;                        %��x��ת�Ļ����΢��
sx=cumtrapz(dsx)*dx;                   %�����η������
figure                                 %����ͼ�δ���
plot(x,z,x,vx,'--',x,sx,'-.','LineWidth',2)%��ĸ��,����ͱ����
fs=20;                                 %�����С
title([tit,'�����֮���ƽ���ƺ�����ת������ͱ����'],'FontSize',fs)%�ӱ���
xlabel('\itx/a','FontSize',fs)         %�Ӻ�����
grid on                                %������
legend('\itz/a','\itV_x/a\rm^3','\itS_x/a\rm^2',2)%��ͼ��

[X,Y,Z]=cylinder(z);                   %ȡ��ά��������
Z=Z*xm;                                %�Ŵ�������
figure                                 %����ͼ�δ���
surf(Z,Y,X)                            %����ת��
title([tit,'�ƺ�����ת������'],'FontSize',fs)%�ӱ���
xlabel('\itx/a','FontSize',fs)         %�Ӻ�����
ylabel('\ity/a','FontSize',fs)         %��������
zlabel('\itz/a','FontSize',fs)         %��������
grid on                                %������
box on                                 %�ӿ�
axis equal                             %ʹ���������
shading interp                         %Ⱦɫ
alpha(0.5)                             %�����͸��
rr=[x,xm,0];                           %������󼫾�
oo=zeros(size(rr));                    %ȫ0����
hold on                                %��������
h=fill3(rr,oo,[z,0,0],'y');            %����
pause                                  %��ͣ
p=linspace(0,2*pi,101);                %Oyzƽ��Բ�ܽ�����
for i=1:length(p)                      %��Բ�ܽ�ѭ��
    t=p(i);                            %ȡԲ�ܽ�
    zz=[z,0,0]*cos(t);                 %��ת������
    yy=[z,0,0]*sin(t);                 %��ת������
    set(h,'YData',yy,'ZData',zz)       %��������
    drawnow                            %ˢ����Ļ
end                                    %����ѭ��

%�������.��Ⱥ�����
