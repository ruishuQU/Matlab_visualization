%��֤������ֵ����
clear                                  %�������
a=0;                                   %��1�������
b=pi/2;                                %��2�������
syms x                                 %������ű���
y1=sin(x)                              %��1�����ź���
y2=x+cos(x)                            %��2�����ź���
f1=inline(y1);                         %��1�����ź�����Ϊ���ߺ���
f2=inline(y2);                         %��2�����ź�����Ϊ���ߺ���
k1=(f1(b)-f1(a))/(b-a);                %���1��б��
k2=(f2(b)-f2(a))/(b-a);                %���2��б��
dy1=diff(y1)                           %���1�����ŵ���
dy2=diff(y2)                           %���2�����ŵ���
s=dy1/dy2-k1/k2                        %���ŷ���
%s=dy1/k1-dy2/k2                        %���ŷ���(����)
x0=solve(s)                            %����������
x0=double(x0);                         %��Ϊ��ֵ
df1=inline(dy1);                       %���1�����ŵ�����Ϊ���ߺ���
df2=inline(dy2);                       %���2�����ŵ�����Ϊ���ߺ���
dx=0.01;                               %���
x=a:dx:b;                              %����������
figure                                 %����ͼ�δ���
plot(x,f1(x),x,f2(x),'--',x,df1(x)/k1,'-.',x,df2(x)/k2,':',...
    'LineWidth',2)                     %������
title('��֤������ֵ����','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
legend('\itf\rm_1','\itf\rm_2',...
    '\itf\rm_1\prime/\itk\rm_1','\itf\rm_2\prime/\itk\rm_2')%��ͼ��
text(a,f1(a),['\itk\rm_1=',num2str(k1)],'FontSize',16)%�ӵ�1��б��б�ʱ�ע
text(a,f2(a),['\itk\rm_2=',num2str(k2)],'FontSize',16)%�ӵ�2��б��б�ʱ�ע
xx=[a,b,b,a];                          %����������
y1a=f1(a);                             %��1�����ߵ����������
y1b=f1(b);                             %��1�����ߵ��յ�������
y2a=f2(a);                             %��2�����ߵ����������
y2b=f2(b);                             %��2�����ߵ��յ�������
hold on                                %��������
plot(xx,[y1a,y1a,y1b,y1a],'-.',xx,[y2a,y2a,y2b,y2a],':','LineWidth',2)%��������
y0=df1(x0)/k1;                         %���б��
plot(x0,y0,'o')                        %����
text(x0,y0,[num2str(x0),',',num2str(y0)],'FontSize',16)%�ӱ�ע

%�������.��Ⱥ�����
