%�ڶ�����ָ�����ͼ��޵ĺ����ļ�
function fun(f,t)
l=limit(f,'x',0)                       %���ż���
l=double(l)                            %��Ϊ��ֵ
xm=0.5;                                %��������
x=-xm:0.01:xm;                         %�Ա�������
%f=inline(vectorize(f));                %���ź���ת��Ϊ���ߺ���
f=inline(f);                           %���ź���ת��Ϊ���ߺ���
y=f(x);                                %����ֵ
y(imag(y)~=0)=NaN;                     %������Ϊ����
figure                                 %����ͼ�δ���
plot(x,y,'LineWidth',2)                %������
title(['�ڶ���',t,'��ָ�����ͼ���'],'FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf','FontSize',16)           %��������
grid on                                %������
hold on                                %��������
plot(0,l,'or','LineWidth',2)           %�����޵�
text(0,l,num2str(l),'FontSize',16)     %��Ǽ���

%�������.��Ⱥ�����
