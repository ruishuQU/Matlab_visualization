%���������֮���ƽ����������ת������ͱ�����ĺ����ļ�
function fun(x,z,t1,t2,tit)
dx=diff(x);                            %x��t�ķ��ŵ���
dvz=2*pi*x*z*dx;                       %Բ����ı����
vz=int(dvz,t1,t2)                      %����z����ת������
vz=abs(double(vz));                    %�����Ż�����ֵ
dz=diff(z);                            %z��t�ķ��ŵ���
dl=sqrt(dx^2+dz^2);                    %����΢��
dsz=2*pi*x*dl;                         %��z��ת�Ļ����΢��
fdsz=inline(dsz);                      %ת��Ϊ���ߺ���
sz=quad(fdsz,t1,t2)                    %����z����ת��ı����

fx=inline(x);                          %���ź�����ת��Ϊ���ߺ���
fz=inline(z);                          %����������ת��Ϊ���ߺ���
t=linspace(t1,t2);                     %��������
p=linspace(0,2*pi,101);                %Oxyƽ��Բ�ܽ�����
[P,T]=meshgrid(p,t);                   %����������Ϊ����
X=fx(T).*cos(P);                       %���������
Y=fx(T).*sin(P);                       %���������
Z=fz(T);                               %���������
figure                                 %����ͼ�δ���
surf(X,Y,Z)                            %����ת��
fs=24;                                 %�����С
title([tit,'��������ת������'],'FontSize',fs)%�ӱ���
xlabel('\itx/a','FontSize',fs)         %�Ӻ�����
ylabel('\ity/a','FontSize',fs)         %��������
zlabel('\itz/a','FontSize',fs)         %��������
grid on                                %������
axis equal                             %ʹ���������
shading interp                         %Ⱦɫ
alpha(0.5)                             %�����͸��
box on                                 %�ӿ�
text(0,0,0,['\itV_z/a\rm^3=',num2str(vz),...
    ',\itS_z/a\rm^2=',num2str(sz)],'FontSize',16)%���ı�
x=fx(t);                               %����������
z=fz(t);                               %����������
rr=[x,x(end),x(1)];                    %���Ӽ���
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
