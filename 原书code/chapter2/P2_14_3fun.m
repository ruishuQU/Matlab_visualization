%��������ָ�������ͼ��޵ĺ����ļ�
function fun(f,t,x0)
l=limit(f,'x',x0)                      %���ż���
l=double(l)                            %��Ϊ��ֵ
x=linspace(x0-0.5,x0+0.5);             %�Ա�������
%f=inline(vectorize(f));                %���ź���ת��Ϊ���ߺ���
f=inline(f);                           %���ź���ת��Ϊ���ߺ���
y=f(x);                                %����ֵ
y(imag(y)~=0)=NaN;                     %������Ϊ����
figure                                 %����ͼ�δ���
plot(x,y,'LineWidth',2)                %������
title(['������',t,'��ָ�������ͼ���'],'FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf','FontSize',16)           %��������
grid on                                %������
hold on                                %��������
plot(x0,l,'or','LineWidth',2)          %�����޵�
text(x0,l,[num2str(x0),',',num2str(l)],'FontSize',16)%��Ǽ���

%�������.��Ⱥ�����
