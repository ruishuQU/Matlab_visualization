%��x����ת�ı�׼������
%----------------------------------------------------------
clear                                  %�������
f=inline('sqrt(2*x)');                 %�����ߵ��ں���
xm=3;                                  %��󼫾�
x=0:0.01:xm;                           %��������
z=f(x);                                %������
y=zeros(size(x));                      %ȫ0����
figure                                 %����ͼ�δ���
h1=plot3(x,y,z,'LineWidth',2);         %����ĸ�߲�ȡ���
hold on                                %��������
h2=plot3(x,y,-z,'r','LineWidth',2);    %����ĸ�߲�ȡ���
fs=24;                                 %�����С
title('��׼������','FontSize',fs)      %�ӱ���
xlabel('\itx/p','FontSize',fs)         %�Ӻ�����
ylabel('\ity/p','FontSize',fs)         %��������
zlabel('\itz/p','FontSize',fs)         %��������
grid on                                %������
box on                                 %�ӿ�
%----------------------------------------------------------
pause                                  %��ͣ
[Z,Y,X]=cylinder(z,40);                %ȡ��ά��������
X=X*xm;                                %�Ŵ�X����
surf(X,Y,Z)                            %����ת��
axis equal                             %ʹ���������
shading interp                         %Ⱦɫ
alpha(0.8)                             %�����͸��
title('��\itx\rm����ת��������','FontSize',fs)%�޸ı���
pause                                  %��ͣ
zm=2.4;                                %���������
zz=-zm:0.1:zm;                         %����������
p=linspace(0,2*pi);                    %��������
[P,R]=meshgrid(p,zz);                  %����������Ϊ����
X=R.^2/2;                              %���������
[Y,Z]=pol2cart(P,R);                   %�����껯Ϊֱ������
mesh(X,Y,Z)                            %����ת������
pause                                  %��ͣ
for i=1:length(p)                      %������ѭ��
    t=p(i);                            %ȡ����
    zz=z*cos(t);                       %��ת������
    yy=z*sin(t);                       %��ת������
    set(h1,'YData',yy,'ZData',zz)      %��������
    set(h2,'YData',-yy,'ZData',-zz)    %��������
    drawnow                            %ˢ����Ļ
end                                    %����ѭ��

%�������.��Ⱥ�����
