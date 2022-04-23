%���һ����Һ����Ķ�����覻���
clear                                  %�������
syms x                                 %������ű���
y1=log(sin(x))                         %���Ҷ��������ķ��ű��ʽ
y2=log(cos(x))                         %���Ҷ��������ķ��ű��ʽ
xm1=0;                                 %��������
xm2=pi/2;                              %��������
s1=int(y1,xm1,xm2)                     %��1�������ķ��Ż���
s1=double(s1)                          %��Ϊ��ֵ
s2=int(y2,xm1,xm2)                     %��2�������ķ��Ż���
s2=double(s2)                          %��Ϊ��ֵ

f1=inline(y1)                          %��1�����ߺ���
f2=inline(y2)                          %��2�����ߺ���
x=linspace(xm1,xm2,1e4);               %����������
x(1)=eps;                              %��һ��ֵ0��ΪС��
figure                                 %����ͼ�δ���
fill([x,xm2,xm1],[f1(x),0,0],'y')      %����ɫͼ
title('���һ����Һ����Ķ�����覻���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
text(xm1,-1,['\itS_s\rm=',num2str(s1)],'FontSize',16)%��ʾ���
hold on                                %��������
fill([x,xm2,xm1],[f2(x),0,0],'c')      %����ɫͼ
legend('���Ҷ���������覻���','���Ҷ���������覻���',0)%��ͼ��
text(xm2*3/4,-1,['\itS_c\rm=',num2str(s2)],'FontSize',16)%��ʾ���
alpha(0.5)                             %ƽ���͸��
axis([xm1,xm2,-5,0])                   %�������߷�Χ

%�������.��Ⱥ�����
