%����Ļ���
clear                                  %�������
rm=3;                                  %��󼫾�
r=0:0.1:rm;                            %��������
t=(0:5:360)*pi/180;                    %��������
[T,R]=meshgrid(t,r);                   %���Ǻͼ�������
[X,Y]=pol2cart(T,R);                   %ֱ���������
%X=R.*cos(T);                           %���������
%Y=R.*sin(T);                           %���������
Z=X.^2-Y.^2;                           %������
%----------------------------------------------------------
figure                                 %����ͼ�δ���
surf(X,Y,Z)                            %������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
zlabel('\itz','FontSize',16)           %��������
title('������ϵ�еİ�����','FontSize',24)%�ӱ���
grid on                                %������
box on                                 %�ӿ�
pause                                  %��ͣ
view(2)                                %���ø��ӽ�
title('������ĸ���ͼ','FontSize',24)  %�޸ı���
pause                                  %��ͣ
z=-8:2:8;                              %�ȸ��ߵ�ֵ
hold on                                %��������
contour3(X,Y,Z,z,'k')                  %����ά�ȸ���
shading interp                         %Ⱦɫ
alpha(0.5)                             %�����͸��
view(3)                                %������ά�ӽ�
title('�������ߵİ�����͵ȸ���','FontSize',24)%�޸ı���
pause                                  %��ͣ
view(2)                                %���ø��ӽ�
title('�������ߵİ�����ĸ���ͼ','FontSize',24)%�޸ı���
axis equal                             %ʹ���������
pause                                  %��ͣ
view(0,0)                              %�������ӽ�
title('�����������ͼ','FontSize',24)  %�޸ı���
pause                                  %��ͣ
view(90,0)                             %���ò��ӽ�
title('������Ĳ���ͼ','FontSize',24)  %�޸ı���
return
figure                                 %����ͼ�δ���
surf(X,Y,Z)                            %��ƽ��
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
zlabel('\itz','FontSize',16)           %��������
title('������','FontSize',16)          %�ӱ���
grid on                                %������
box on                                 %�ӿ�
pause                                  %��ͣ
z=-8:2:8;                              %�ȸ��ߵ�ֵ
hold on                                %��������
contour3(X,Y,Z,z,'k')                  %����ά�ȸ���
shading interp                         %Ⱦɫ
alpha(0.5)                             %�����͸��
title('������͵ȸ���','FontSize',16)  %�޸ı���
pause                                  %��ͣ
view(2)                                %���ø��ӽ�
title('������ĸ���ͼ','FontSize',16)   %�޸ı���
pause                                  %��ͣ
view(0,0)                              %�������ӽ�
title('�����������ͼ','FontSize',16)   %�޸ı���
pause                                  %��ͣ
view(90,0)                             %���ò��ӽ�
title('������Ĳ���ͼ','FontSize',16)   %�޸ı���

%�������.��Ⱥ�����
