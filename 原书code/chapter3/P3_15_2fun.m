%����ʽ�ļ��޵ĺ����ļ�
function fun(y,xl,t)
syms x                                 %������ű���
l=limit(y,x,xl,'Right')                %����ż���
l=double(l);                           %����ֵ����
f=inline(y);                           %��Ϊ���ߺ���
dx=0.001;                              %���
x=0:dx:xl+1;                           %�Ա�������
y=f(x);                                %����
figure                                 %����ͼ�δ���
plot(x,y,'LineWidth',2)                %����������
title(['(',t,')�Ͳ���ʽ�ļ���'],'FontSize',16)%�ӱ���
grid on                                %������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
hold on                                %��������
plot(xl,l,'o','LineWidth',2)           %������
text(xl,l,num2str(l),'FontSize',16)    %��ʾ�����ı�

%�������.��Ⱥ�����
