%�Ա��������Ҹ��Ϻ����˻��Ķ����ֵĺ����ļ�
function fun(n)
syms x                                 %������ű���
yn=sin(x)^n/(2-sin(x)^2);              %���Ҹ��Ϻ���
%yn=sin(x)^n/(1+cos(x)^2);             %���Ҹ��Ϻ���
y1=x*yn                                %��1�������ķ��ű��ʽ
y2=pi/2*yn                             %��2�������ķ��ű��ʽ
xm1=0;                                 %��������
xm2=pi;                                %��������
i1=int(y1,xm1,xm2)                     %��1�������ķ��Ż���
i1=double(i1)                          %��Ϊ��ֵ
i2=int(y2,xm1,xm2)                     %��2�������ķ��Ż���
i2=double(i2)                          %��Ϊ��ֵ

f1=inline(y1)                          %��1�����ߺ���
f2=inline(y2)                          %��2�����ߺ���
x=linspace(xm1,xm2);                   %����������
figure                                 %����ͼ�δ���
fill([x,xm2,xm1],[f1(x),0,0],'y')      %����ɫͼ
title(['�Ա��������Ҹ��Ϻ����˻��Ķ�����(\itn\rm=',num2str(n),')'],...
    'FontSize',16)                     %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity_n','FontSize',16)         %��������
grid on                                %������
hold on                                %��������
fill([x,xm2,xm1],[f2(x),0,0],'c')      %����ɫͼ
legend('����ǰ�Ķ�����','�����Ķ�����')%��ͼ��
text(0,1,['\itI_n\rm=',num2str(i2)],'FontSize',16)%��ʾ���
alpha(0.5)                             %ƽ���͸��
 
%�������.��Ⱥ�����
