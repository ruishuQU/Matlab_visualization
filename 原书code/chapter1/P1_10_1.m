%˫���������ʽ����֤
clear                                  %�������
xm=2;                                  %��������
x=-xm:0.1:xm;                          %�Ա�������
figure                                 %����ͼ�δ���
plot(x,cosh(x).^2,'+-',x,sinh(2*x),'x--','LineWidth',2)%����������
hold on                                %��������
plot(x,1+sinh(x).^2,'o',x,2*sinh(x).*cosh(x),'s','LineWidth',2)%����������
title('˫�������ĺ��ʽ','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
legend('˫������ƽ��','����˫������')   %ͼ��
text(-xm,15,'ʵ�ߺ����߱�ʾ��ߵĺ���,Ȧ�ͷ��α�ʾ�ұߵĺ���.',...
    'FontSize',16)                    %��˵��

syms x                                 %������ű���
y=1+sinh(x)^2                          %���ʽ�ұ�
simplify(y)                            %����
y=cosh(x)^2-(1+sinh(x)^2)              %����ĺ��ʽ 
simplify(y)                            %����
y=cosh(x)^2                            %˫������ƽ���ķ��ź���
simple(y)                              %����
y=2*sinh(x)*cosh(x)                    %���ʽ�ұ�
simplify(y)                            %����
y=sinh(2*x)-2*sinh(x)*cosh(x)          %����ĺ��ʽ 
simplify(y)                            %����
y=sinh(2*x)                            %������˫�����ҵķ��ź��� 
simple(y)                              %����

%�������.��Ⱥ�����
