%���������֮���ƽ������ֱ����ת������ͱ�����ĺ����ļ�
function fun(z,xm,tit)
syms x                                 %������ű���
dvz=2*pi*x*z;                          %Բ����ı�����
vz=int(dvz,0,x)                        %��z����ת������
% dz=diff(z)                             %��������΢��
% dl=sqrt(1+dz^2)                        %����΢��
% dl=simplify(dl)                        %������ű�������
% dsz=2*pi*x*dl;                         %��z��ת�Ļ����΢��
% sz=int(dsz,0,x)                        %��z����ת��ı����
% fsz=inline(sz);                        %����������ߺ���

f=inline(z);                           %ĸ��ת��Ϊ���ߺ���
fvz=inline(vz);                        %��������ߺ���
dx=0.01;                               %��������
x=0:dx:xm;                             %����������
z=f(x);                                %������������ĸ������
vz=fvz(x);                             %�������
%sz=fsz(x);                             %���������
dz=diff(z)/dx;                         %ͨ�������������Ժ��������ֵ����
dz=[dz(1),(dz(1:end-1)+dz(2:end))/2,dz(end)];%��ƽ��ֵ
dl=sqrt(1+dz.^2);                      %������ֵ΢��
dsz=2*pi*x.*dl;                        %��z��ת�Ļ����΢��
sz=cumtrapz(dsz)*dx;                   %�����η������
figure                                 %����ͼ�δ���
plot(x,z,x,vz,'--',x,sz,'-.','LineWidth',2)%��ĸ��,����ͱ����
fs=20;                                 %�����С
title([tit,'�����֮���ƽ���Ƹ�����ת������ͱ����'],'FontSize',fs)%�ӱ���
xlabel('\itx/a','FontSize',fs)         %�Ӻ�����
grid on                                %������
legend('\itz/a','\itV_z/a\rm^3','\itS_z/a\rm^2',2)%��ͼ��

p=linspace(0,2*pi,101);                %Oxyƽ��Բ�ܽ�
[P,R]=meshgrid(p,x);                   %����������Ϊ����
Z=f(R);                                %������
[X,Y]=pol2cart(P,R);                   %�����껯Ϊֱ������
figure                                 %����ͼ�δ���
surf(X,Y,Z)                            %������
title([tit,'�Ƹ�����ת������'],'FontSize',fs)%�ӱ���
xlabel('\itx/a','FontSize',fs)         %�Ӻ�����
ylabel('\ity/a','FontSize',fs)         %��������
zlabel('\itz/a','FontSize',fs)         %�Ӹ�����
grid on                                %������
box on                                 %�ӿ�
shading interp                         %Ⱦɫ
alpha(0.5)                             %�����͸��
rr=[x,xm,x(1)];                        %���Ӽ���
oo=zeros(size(rr));                    %ȫ0����
hold on                                %��������
h=fill3(rr,oo,[z,0,0],'y');            %����
axis equal                             %ʹ���������
pause                                  %��ͣ
for i=1:length(p)                      %��Բ�ܽ�ѭ��
    t=p(i);                            %ȡԲ�ܽ�
    xx=rr*cos(t);                      %��ת������
    yy=rr*sin(t);                      %��ת������
    set(h,'XData',xx,'YData',yy)       %��������
    drawnow                            %ˢ����Ļ
end                                    %����ѭ��

%�������.��Ⱥ�����
