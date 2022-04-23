%������������������
clear                                  %�������
a=5;                                   %�����
b=4;                                   %�ݰ���
c=3;                                   %�߰���
P4_19_1fun(a,b,c)                      %���ú����ļ�
P4_19_1fun(a,a,a)                      %���ú����ļ�

b=0:0.1:2;                             %b��������
c=0:0.1:1.5;                           %c��������
[B,C]=meshgrid(b,c);                   %�������
V=B.*C;                                %���
figure                                 %����ͼ�δ���
surf(b,c,V)                            %���������
xlabel('\itb/a','FontSize',16)         %�Ӻ�����
ylabel('\itc/a','FontSize',16)         %��������
zlabel('\itV/V\rm_0','FontSize',16)    %��������
title('����������','FontSize',24)    %�ӱ���
grid on                                %������
box on                                 %�ӿ�
alpha(0.5)                             %�����͸��
b=0.8;                                 %����ݰ���
c=0.6;                                 %��Ը߰���
v=b.*c;                                %������
hold on                                %��������
plot3(b,c,v,'or')                      %����
text(b,c,v,['\itb\rm=',num2str(b),'\ita\rm,\itc\rm=',num2str(c),...
    '\ita\rm,\itV\rm=',num2str(v),'\itV\rm_0'],'FontSize',16)%��˵��
v0=4*pi*a^3/3;                         %��������
text(0,0,0,'\itV\rm_0=4\pi\ita\rm^3/3','FontSize',16)%��˵��

%�������.��Ⱥ�����
