%������ֵĺ����ļ�
function fun(n)
syms x                                 %������ű���
yn=x^(n/2)/(1+x^(n+2));                %��������
jn=int(yn,0,Inf)                       %����Ż���
jn=double(jn);                         %��Ϊ��ֵ
f=inline(yn);                          %ת��Ϊ���ߺ���
xm=10;                                 %��������
dx=0.1;                                %��ֵ���
x=0:dx:xm;                             %����������
x(1)=eps;                              %0��ΪС��
yn=f(x);                               %����������
figure                                 %����ͼ�δ���
fill([x,xm,0],[yn,0,0],'y')            %����ɫͼ
%plot(x,yn,'LineWidth',2)               %������
title(['�������(\itn\rm=',num2str(n),')'],'FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
text(0,0,['\itJ_n\rm=',num2str(jn)],'FontSize',16)%��ʾ��ʼ����

%�������.��Ⱥ�����
