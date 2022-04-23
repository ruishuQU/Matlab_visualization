%��z����ת�ı�׼������
%----------------------------------------------------------
clear                                  %�������
f=inline('sqrt(2*x)');                 %�����ߵ��ں���
%f=inline('x.^2/2');                    %�����ߵ��ں���
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
view(0,0)                              %�������ӽ�
pause                                  %��ͣ
p=linspace(0,2*pi);                    %��������
[P,R]=meshgrid(p,x);                   %����������Ϊ����
Z=f(R);                                %������
[X,Y]=pol2cart(P,R);                   %�����껯Ϊֱ������
surf(X,Y,Z)                            %����ת������
surf(X,Y,-Z)                           %����ת������
axis equal                             %ʹ���������
title('��\itz\rm����ת��������','FontSize',fs)%�޸ı���
shading interp                         %Ⱦɫ
alpha(0.8)                             %�����͸��
view(3)                                %������ά�ӽ�
pause                                  %��ͣ
zm=2.4;                                %���������
z=-zm:0.1:zm;                          %����������
xx=z.^2/2;                             %������ĸ��
[X,Y,Z]=cylinder(xx,40);               %ȡ��ά��ת����
Z=Z*2*zm-zm;                           %���������귶Χ
mesh(X,Y,Z)                            %����ת��������
pause                                  %��ͣ
for i=1:length(p)                      %������ѭ��
    t=p(i);                            %ȡ����
    xx=x*cos(t);                       %��ת������
    yy=x*sin(t);                       %��ת������
    set(h1,'XData',xx,'YData',yy)      %��������
    set(h2,'XData',xx,'YData',yy)      %��������
    drawnow                            %ˢ����Ļ
end                                    %����ѭ��

%�������.��Ⱥ�����
