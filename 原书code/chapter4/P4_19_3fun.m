%��Բ�Ƹ�����ת��������ĺ����ļ�
function fun(b)
e=sqrt(1-b^2);                         %ƫ����
vz=b;                                  %��������ת�����
sz=(1+b^2/e*log((1+e)/(1-e))/2)/2;     %��������ת�ı����
figure                                 %����ͼ�δ���
ellipsoid(0,0,0,1,1,b,50)              %��������
title(['��Բ�Ƹ�����ת��������(\itb/a\rm=',num2str(b),...
    ',\ite\rm=',num2str(e),')'],'FontSize',16)%�ӱ���
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
zlabel('\itz/a','FontSize',16)         %�Ӹ�����
axis equal                             %ʹ���������
shading interp                         %Ⱦɫ
alpha(0.5)                             %�����͸��
box on                                 %�ӿ�
text(0,0,['\itV_z/V\rm_0=',num2str(vz),...
    ',\itS_z/S\rm_0=',num2str(sz)],'FontSize',16)%��˵��

%�������.��Ⱥ�����
