%����ʽ������Զ���ļ��޵ĺ����ļ�
function fun(y,xm,t)
syms x                                 %������ű���
l=limit(y,x,Inf)                        %����ż���
l=double(l);                           %����ֵ����
f=inline(y);                           %���ź�����Ϊ���ߺ���
dx=0.01;                               %���
x=1:dx:xm;                             %�Ա�������
y=f(x);                                %����ֵ
figure                                 %����ͼ�δ���
plot(x,y,'LineWidth',2)                %����������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title(['(',t,')�Ͳ���ʽ������Զ���ļ���'],'FontSize',16)%�ӱ���
grid on                                %������
hold on                                %��������
plot(xm,l,'o','LineWidth',2)           %������
text(xm,l,num2str(l),'FontSize',16)    %��ʾ�����ı�

%�������.��Ⱥ�����
