%�������ķֶκ����͵���
clear                                  %�������
x0=1;                                  %���ӵ�
y1=sym('x^2')                          %��1�����ź���
y2=sym('a*x+b')                        %��2���������ķ��ź���
y=y2-y1;                               %������֮��
dy_dx=diff(y)                          %��y��x�ĵ���
s1=subs(y,'x',x0)                      %���ӵ㴦�ĺ���
s2=subs(dy_dx,'x',x0)                  %���ӵ㴦�ĵ���
[a,b]=solve(s1,s2,'a','b')             %����

y2=subs(y2,{'a','b'},{a,b})            %��2�����������ķ��ź���
dy1_dx=diff(y1)                        %��y1��x�ĵ���
f1=inline(y1);                         %��1�����������ߺ���
f2=inline(y2);                         %��2�����������ߺ���
df1=inline(dy1_dx)                     %��1�����������ߺ���
xm=2;                                  %��������
dx=0.05;                               %���
x1=0:dx:1;                             %����������
x2=1:dx:xm;                            %����������
xx=[x1,x2];                            %���Ӻ�����
yy=[(f1(x1)),f2(x2)];                  %���Ӻ���
dyy=[df1(x1),double(a)*ones(size(x2))];%���ӵ���
figure                                 %����ͼ�δ���
plot(xx,yy,xx,dyy,'--','LineWidth',2)  %������
title('�ֶκ����͵��������Ĳ���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
legend('\ity','\ity\prime',2)          %��ͼ��
text(0,1,['\ita\rm=',num2str(double(a)),...
    ',\itb\rm=',num2str(double(b))],'FontSize',16)%��˵��

%�������.��Ⱥ�����
