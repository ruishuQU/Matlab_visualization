%�����Ǻ����ĵ����ĺ����ļ�
function fun(y,t,xm,ym)
dy_dx=diff(y)                          %��y��x�ĵ���
d2y_dx2=diff(y,2)                      %��y��x�Ķ��׵���
f=inline(y);                           %���������ߺ���
df=inline(dy_dx)                       %���������ߺ���
d2f=inline(d2y_dx2)                    %���������ߺ���
x=-xm:0.05:xm;                         %����������
y=f(x);                                %����ֵ
y(imag(y)~=0)=NaN;                     %������Ϊ����
dy=df(x);                              %���׵�������ֵ
dy(imag(dy)~=0)=NaN;                   %������Ϊ����
d2y=d2f(x);                            %���׵�������ֵ
d2y(imag(d2y)~=0)=NaN;                 %������Ϊ����
figure                                 %����ͼ�δ���
plot(x,y,x,dy,'--o',x,d2y,'-.s','LineWidth',2)%������
xlabel('\itx','FontSize',16)           %�Ӻ�����
title(['��',t,'�����͵���'],'FontSize',16)%�ӱ���
grid on                                %������
axis([-xm,xm,-ym,ym])                  %�������귶Χ
legend('\ity','\ity\prime','\ity\prime\prime',0)%ͼ��

%�������.��Ⱥ�����
