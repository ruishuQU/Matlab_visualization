%����ʽ�ļ��޵ĺ����ļ�
function fun(y,xl,t)
syms x                                 %������ű���
l=limit(y,x,xl)                        %����ż���
l=double(l);                           %����ֵ����
f=inline(y);                           %���ź�����Ϊ���ߺ���
dx=0.01;                               %���
x=xl-1:dx:xl+1;                        %�Ա�������
y=f(x);                                %����ֵ
figure                                 %����ͼ�δ���
plot(x,y,'LineWidth',2)                %����������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title(['(',t,')�Ͳ���ʽ�ļ���'],'FontSize',16)%�ӱ���
grid on                                %������
hold on                                %��������
plot(xl,l,'o','LineWidth',2)           %������
text(xl,l,num2str(l),'FontSize',16)    %��ʾ�����ı�

%�������.��Ⱥ�����
