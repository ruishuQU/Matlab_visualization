%��һ����ָ�����ͼ��޵ĺ����ļ�
function fun(f,t)
l1=limit(f,'x',Inf)                    %���ż���
l2=limit(f,'x',-Inf)                   %���ż���
l1=double(l1)                          %��Ϊ��ֵ
l2=double(l2)                          %��Ϊ��ֵ

xm=20;                                 %��������
x=-xm:0.1:xm;                          %�Ա�������
f=inline(vectorize(f));                %���ź���ת��Ϊ���ߺ���
y=f(x);                                %����ֵ
y(imag(y)~=0)=NaN;                     %������Ϊ����
figure                                 %����ͼ�δ���
plot(x,y,'LineWidth',2)                %������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf','FontSize',16)           %��������
title(['��һ��',t,'��ָ�����ͼ���'],'FontSize',16)%�ӱ���
grid on                                %������
hold on                                %��������
plot([xm,-xm],[l1,l2],'--or','LineWidth',2)%�����޵�
text([xm,-xm],[l1,l2],num2str([l1;l2]),'FontSize',16)%��Ǽ���

%�������.��Ⱥ�����
