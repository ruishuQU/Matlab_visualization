%Բ������ĺ����ļ�
function fun(x,y,tit)
a=linspace(0,2*pi,2000);               %�Ƕ�����
x=subs(x,'a',a);                       %�滻����������
y=subs(y,'a',a);                       %�滻����������
figure                                 %����ͼ�δ���
fill(x,y,'y')                          %����ɫԲ
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
title([tit,'���Ƶ�Բ'],'FontSize',16)  %�ӱ���
axis equal                             %ʹ���������
grid on                                %������
hold on                                %��������
comet(x,y)                             %������ʽ���߶���

%�������.��Ⱥ�����
