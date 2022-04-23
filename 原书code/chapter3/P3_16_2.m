%�����������ߺ͵���
clear                                  %�������
rm=6;                                  %�������
r=-rm:0.1:rm;                          %��������
[X,Y]=meshgrid(r);                     %�������
F=X.*Y-exp(Y)+exp(X);                  %��Ԫ����
figure                                 %����ͼ�δ���
C=contour(X,Y,F,[0,0],'r');            %����ֵ�߲�ȡ�������
title('���������ߺ͵�������','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
hold on                                %��������
i=1;                                   %��1�������������λ��
while 1                                %����ѭ��
    n=C(2,i);                          %ȡ�������
    x=C(1,i+1:i+n);                    %ȡ������
    y=C(2,i+1:i+n);                    %ȡ������
    dy_dx=(exp(x)+y)./(exp(y)-x);      %���㵼��
    d2y_dx2=(2*dy_dx+exp(x)-exp(y).*dy_dx.^2)./(exp(y)-x);%������׵���
    plot(x,dy_dx,'--',x,d2y_dx2,'-.','LineWidth',2)%����������
    i=i+n+1;                           %��һ�������������λ��
    if i>length(C),break,end           %�������ȡ�����˳�ѭ��
end                                    %����ѭ��
legend('\ity','\ity\prime','\ity\prime\prime',2)%��ͼ��
pause                                  %��ͣ
syms x y                               %������ű���
f=x*y-exp(y)+exp(x);                   %��Ԫ���ź���
ezplot(f)                              %�ü��׻�ͼָ�����������

%�������.��Ⱥ�����
