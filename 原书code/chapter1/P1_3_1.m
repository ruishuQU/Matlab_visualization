%ȡ������
clear                                  %�������
xm=4;                                  %����Ա���
x=-xm:0.1:xm;                         %�Ա�������
y=floor(x);                            %��������
y(x==y)=nan;                           %������Ϊ����
figure                                 %����ͼ�δ���
plot(x,x,'--',x,y,'LineWidth',2)       %����
xx=-xm:xm-1;                           %��������
hold on                                %��������
plot(xx,xx,'.',xm,xm,'.','MarkerSize',24)%����
plot(xx+1,xx,'o')                      %��Ȧ
title('����ȡ������','FontSize',16)    %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
axis([-xm-1,xm+1,-xm-1,xm+1])          %�������߷�Χ

y=ceil(x);                             %��������
y(x==y)=nan;                           %������Ϊ����
figure                                 %����ͼ�δ���
plot(x,x,'--',x,y,'LineWidth',2)       %����
xx=-xm+1:xm;                           %��������
hold on                                %��������
plot(xx,xx,'.',-xm,-xm,'.','MarkerSize',24)%����
plot(xx-1,xx,'o')                      %��Ȧ
title('����ȡ������','FontSize',16)    %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
axis([-xm-1,xm+1,-xm-1,xm+1])          %�������߷�Χ

x=0:0.01:xm;                           %�Ա�������
y=fix(x);                              %��������
y(x==y)=nan;                           %������Ϊ����
figure                                 %����ͼ�δ���
plot(-x,-x,'--',x,x,'b--',-x,-y,x,y,'LineWidth',2)%����
xx=0:xm-1;                             %��������
hold on                                %��������
plot(xx+1,xx+1,'.',-xx-1,-xx-1,'.',0,0,'.','MarkerSize',24)%����
plot(xx+1,xx,'o',-xx-1,-xx,'o')        %��Ȧ
title('����ȡ������','FontSize',16)    %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
axis([-xm-1,xm+1,-xm-1,xm+1])          %�������߷�Χ

%�������.��Ⱥ�����
