%��Բ�ƺ�����ת��������ĺ����ļ�
function fun(b)
e=sqrt(1-b^2);                         %ƫ����
vx=b^2;                                %�ƺ�����ת�����
sx=b*(b+asin(e)/e)/2;                  %�ƺ�����ת�ı����
figure                                 %����ͼ�δ���
ellipsoid(0,0,0,1,b,b)                 %��������
title(['��Բ�ƺ�����ת��������(\itb/a\rm=',num2str(b),...
    ',\ite\rm=',num2str(e),')'],'FontSize',20)%�ӱ���
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
zlabel('\itz/a','FontSize',16)         %�Ӹ�����
axis equal                             %ʹ���������
shading interp                         %Ⱦɫ
alpha(0.5)                             %�����͸��
box on                                 %�ӿ�
text(0,0,['\itV_x/V\rm_0=',num2str(vx),...
    ',\itS_x/S\rm_0=',num2str(sx)],'FontSize',16)%��˵��

%�������.��Ⱥ�����
