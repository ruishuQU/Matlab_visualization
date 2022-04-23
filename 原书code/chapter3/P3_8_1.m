%��ָ�����͵���
clear                                  %�������
syms x                                 %������ű���
y=x^sin(x)                             %���ź���
dy_dx=diff(y)                          %����
d2y_dx2=diff(y,2)                      %����Ŷ��׵���
f=inline(y)                            %�������ߺ���
df=inline(dy_dx)                       %�������ߺ���
d2f=inline(d2y_dx2)                    %���Ŷ��׵�����Ϊ���ߺ���

xm=6;                                  %��������
dx=0.1;                                %���
x=0:dx:xm;                             %����������
y=f(x);                                %����������
figure                                 %����ͼ�δ���
plot(x,y,x,df(x),'--+',x,d2f(x),'-.x','LineWidth',2)%������
xlabel('\itx','FontSize',16)           %�Ӻ�����
title('��ָ�����͵���','FontSize',16)      %�ӱ���
grid on                                %������
legend('\ity','\ity\prime','\ity\prime\prime',0)%ͼ��
dy=(cos(x).*log(x)+sin(x)./x).*x.^sin(x);
d2y=(sin(x).^2-sin(x)+2*x.*cos(x)-x.^2.*sin(x).*log(x)+...
    x.^2.*cos(x).^2.*log(x).^2+x.*sin(2*x).*log(x))...
    .*x.^sin(x)./x.^2;
hold on                                %��������
plot(x,dy,'o',x,d2y,'s')               %�ػ�����
text(0,5,'Ȧ��ʾ�����Ľ�����,���α�ʾ���׵����Ľ�����.',...
    'FontSize',16)                     %��˵��

%�������.��Ⱥ�����
