%���Ϻ���
clear                                  %�������
xm=3;                                  %����Ա���
x=-xm:0.01:xm;                         %�Ա�������
f=sign(1-abs(x));                      %��������
f(abs(x)==1)=NaN;                      %�Ա����ľ���ֵΪ1�ĺ�����Ϊ����
figure                                 %����ͼ�δ���
subplot(2,1,1)                         %ȡ��ͼ
plot(x,f,'LineWidth',3)                %����
title('���Ⱥ���','FontSize',16)        %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity\rm=\itf\rm(\itx\rm)','FontSize',16)%��������
grid on                                %������
hold on                                %��������
plot([-1,1],[1,1],'o',[-1,1],[-1,-1],'o')%���ϵ�
plot([-1,1],[0,0],'.','MarkerSize',20) %���ϵ�ĺ���
subplot(2,1,2)                         %ȡ��ͼ
plot(x,exp(x),'LineWidth',3)           %����
title('���Ⱥ���','FontSize',16)        %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity\rm=\itg\rm(\itx\rm)','FontSize',16)%��������
grid on                                %������

y=sign(1-exp(x));                      %��������
y(x==0)=NaN;                           %�Ա���Ϊ0�ĺ�����Ϊ����
figure                                 %����ͼ�δ���
subplot(2,1,1)                         %ȡ��ͼ
plot(x,y,'LineWidth',3)                %����
title('���Ϻ���','FontSize',16)        %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf\rm(\itg\rm(\itx\rm))','FontSize',16)%��������
grid on                                %������
hold on                                %��������
plot([0,0],[-1,1],'o')                 %�������ϵ�
plot(0,0,'.','MarkerSize',20)          %���ϵ�ĺ���

y=exp(sign(1-abs(x)));                 %��������
y(abs(x)==1)=NaN;                      %�Ա����ľ���ֵΪ1�ĺ�����Ϊ����
subplot(2,1,2)                         %ȡ��ͼ
plot(x,y,'LineWidth',3)                %����
title('���Ϻ���','FontSize',16)        %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itg\rm(\itf\rm(\itx\rm))','FontSize',16)%��������
grid on                                %������
e=exp(1);                              %eֵ
hold on                                %��������
plot([-1,1],[e,e],'o',[-1,1],[1/e,1/e],'o')%���ϵ�
plot([-1,1],[1,1],'.','MarkerSize',20) %���ϵ�ĺ���

%�������.��Ⱥ�����
