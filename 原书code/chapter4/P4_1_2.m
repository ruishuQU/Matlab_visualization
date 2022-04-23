%�������ҵ���������������η��Ľ��Ƽ���
clear                                  %�������
syms x                                 %������ű���
y=sqrt(x);                             %�������ҵķ���������
%y=x^2;                                 %�������ϵķ���������
s=int(y,0,1)                           %�������������µ����
s=double(s)                            %��Ϊ��ֵ
f=inline(y)                            %���ߺ���
x=linspace(0,1);                       %����������
figure                                 %����ͼ�δ���
plot(x,f(x),'LineWidth',2)             %��������
title('�������ҵ��������µ���������η����Ƽ���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
text(0,0.8,['\itS\rm=',num2str(s)],'FontSize',16)%��ʾ���
ht=text(0,0.7,'','FontSize',16);       %ȡ���
grid on                                %������
hold on                                %��������
hf=fill(0,0,'y');                      %�����ͼ��ȡ���
sn1=[];                                %���η���������ÿ�
sn2=[];                                %���η���������ÿ�
mm=10;                                 %���ָ��
for m=1:mm                             %ѭ��
    n=2^m;                             %ȡ2����
    x=linspace(0,1,n+1);               %����������
    y=f(x);                            %����������
    dx=1/n                             %ȡ���
    sn=trapz(y)*dx;                    %�����η������
    set(ht,'String',['\itn\rm=',num2str(n),',\itS_n\rm=',num2str(sn)])%������ֵ
    set(hf,'XData',[x,1],'YData',[y,0])%����������µ����ͼ
    stem(x,y,'.')                      %������
    alpha(0.5)                         %ƽ���͸��
    sn1=[sn1,sn];                      %�������
    pause                              %��ͣ
    sn=sum(y(1:end-1)*dx)              %����η������
    sn2=[sn2,sn];                      %�������
end                                    %����ѭ��
m=1:mm;                                %ָ������
figure                                 %����ͼ�δ���
plot(m,sn1,'-*',m,sn2,'--+','LineWidth',2)%������仯����
title('�������ҵ��������µ���������ַ����ıȽ�','FontSize',16)%�ӱ���
xlabel('\itm','FontSize',16)           %�Ӻ�����
ylabel('\itS_n','FontSize',16)         %��������
legend('���η�','���η�',4)            %��ͼ��
grid on                                %������
hold on                                %��������
plot([1,mm],[s,s],'-.o','LineWidth',2) %��������
text(1,s,['\itS\rm=',num2str(s)],'FontSize',16)%��ʾ���

%�������.��Ⱥ�����
