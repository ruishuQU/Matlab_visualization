%�������뺯��
clear                                  %�������
xm=4;                                  %����Ա���
x=-xm:0.1:xm;                          %�Ա�������
y=round(x);                            %��������
y(abs(x)==abs(y)-0.5)=nan;             %��������Ϊ����
figure                                 %����ͼ�δ���
plot(x,x,'--',x,y,'LineWidth',2)       %����
xx=0:xm-1;                             %��������
hold on                                %��������
plot(xx+0.5,xx+1,'.',-xx-0.5,-xx-1,'.','MarkerSize',24)%����
plot(xx+0.5,xx,'o',-xx-0.5,-xx,'o')    %��Ȧ
title('�������뺯��','FontSize',16)    %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
axis([-xm-1,xm+1,-xm-1,xm+1])          %�������߷�Χ
pause                                  %��ͣ
%��֤��floor��ʾ���������뺯��
yy=floor(x+0.5);                       %��0.5ȡ��
l=x<=0&floor(x+0.5)==x+0.5;            %���ڸ������Ҽ���0.5������
yy(l)=yy(l)-1;                         %�߼����߼�1
plot(x,yy,'r.')                        %�����������

%�������.��Ⱥ�����
