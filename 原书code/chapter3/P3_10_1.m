%�����к����ĸ߽׵���
clear                                  %�������
syms x                                 %������ű���
y=atan(x);                             %���ź���
f=inline(y);                           %���ź���ת��Ϊ���ߺ���
xm=3;                                  %��������
dx=0.05;                               %��ֵ���
x=-xm:dx:xm;                           %�Ա�������
nm=4;                                  %�������
n=1:nm;                                %��������
[N,X]=meshgrid(n,x);                   %�������Ա�������
Y=acot(X);                             %�����к���
Y(X<0)=Y(X<0)+pi;                      %������pi
dY=(-1).^(N-1).*factorial(N-1).*sin(N.*Y)./(1+X.^2).^(N/2);%��������
figure                                 %����ͼ�δ���
plot(x,f(x),x,dY,'x-','LineWidth',2)   %��������������
legend([repmat('\itn\rm=',nm+1,1),num2str([n'-1;nm])],2)%��ͼ��
title('�����к����ĸ߽׵���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
hold on                                %��������
for n=1:nm                             %ѭ��
    dy=diff(y,n)                       %����ŵ���
    plot(x,subs(dy,'x',x),'o')         %������
end                                    %����ѭ��
text(-xm,-4,'����ǽ�����,Ȧ�Ƿ��Ž�.','FontSize',16)%��˵��

%�������.��Ⱥ�����
