%��Խ���̵Ľ�
clear                                  %�������
xm=12;                                 %����Ա���
x=0:0.01:xm;                           %�Ա���
f=inline('10*log10(x)-x');             %�������ߺ���
figure                                 %����ͼ�δ���
plot(x,f(x),'LineWidth',2)             %����
fs=16;                                 %�����С
xlabel('\itx','FontSize',fs)           %�Ӻ�����
ylabel('\ity','FontSize',fs)           %��������
title('��Խ���̵Ľ�','FontSize',fs)    %�ӱ���
grid on                                %������
x1=fzero(f,1)                          %���1�����
x2=fzero(f,10)                         %���2�����
hold on                                %��������
plot(x1,0,'o',x2,0,'o')                %�����
axis([0,xm,-5,5])                      %�������߷�Χ
text([x1,x2],[0,0],num2str([x1;x2]),'FontSize',fs)%������

f=inline('10*log10(x)');               %�������ߺ���
figure                                 %����ͼ�δ���
plot(x,x,x,f(x),'LineWidth',2)         %����
xlabel('\itx','FontSize',fs)           %�Ӻ�����
ylabel('\ity','FontSize',fs)           %��������
title('��Խ���̵Ľ�','FontSize',fs)    %�ӱ���
grid on                                %������
y1=f(x1);                              %��1������������
y2=f(x2);                              %��2������������
hold on                                %��������
plot(x1,y1,'o',x2,y2,'o')              %������
axis([0,xm,0,xm])                      %�������߷�Χ
text([x1,x2],[y1,y2],num2str([x1;x2]),'FontSize',fs)%��ǽ���

%�������.��Ⱥ�����
