%�������ϵ�����������ľ��η��Ľ��Ƽ���
clear                                  %�������
syms x                                 %������ű���
y=x^2;                                 %�������ϵķ���������
s=int(y,0,1)                           %�������������µ����
s=double(s)                            %��Ϊ��ֵ
f=inline(y)                            %���ߺ���
x=linspace(0,1);                       %����������
figure                                 %����ͼ�δ���
plot(x,f(x),'LineWidth',2)             %��������
title('�������ϵ��������µ�����;��η����Ƽ���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
text(0,0.8,['\itS\rm=',num2str(s)],'FontSize',16)%��ʾ���
h=text(0,0.5,'','FontSize',16);        %ȡ���
grid on                                %������
hold on                                %��������
for m=1:10                             %ѭ��
    n=2^m;                             %ȡ2����
    x=linspace(0,1,n+1);               %����������
    y=f(x);                            %����������
    stem(x,y,'.')                      %������
    stairs(x,y,'r')                    %��������
    dx=1/n                             %ȡ���
    sn=sum(y(1:end-1)*dx)              %�����
    set(h,'String',['\itn\rm=',num2str(n),',\itS_n\rm=',num2str(sn)])%������ֵ
    pause                              %��ͣ
end                                    %����ѭ��

%�������.��Ⱥ�����
