%������ֵ�������
clear                                  %�������
y=sym('1/(1+x^2)')                     %�����ķ��ű��ʽ
i1=2*int(y,0,Inf)                      %�����ķ��Ż���
i1=double(i1)                          %��Ϊ��ֵ
f=inline(y)                            %���ߺ���
i2=2*quad(f,0,1/eps)                   %����ֵ����
dx=0.001;                              %��������
xm=15;                                 %��������
x=0:dx:xm;                             %����������
yn=f(x);                               %����������
i3=2*trapz(yn)*dx                      %�����η������
% figure                                 %����ͼ�δ���
% fill([-fliplr(x),x,xm,-xm],[fliplr(yn),yn,0,0],'y')%����ɫͼ
% title('�������','FontSize',16)        %�ӱ���
% xlabel('\itx','FontSize',16)           %�Ӻ�����
% ylabel('\ity','FontSize',16)           %��������
% grid on                                %������
% text(0,0,['\itI\rm_0=',num2str(i1)],'FontSize',16)%��ʾ���

P4_5_1fun(-1)                          %���ú����ļ�
axis([0,10,0,2])                       %�������߷�Χ
P4_5_1fun(0)                           %���ú����ļ�
P4_5_1fun(1)                           %���ú����ļ�
P4_5_1fun(2)                           %���ú����ļ�
syms x n                               %������ű���
yn=x^(n/2)/(1+x^(n+2));                %��������
jn=int(yn,0,Inf)                       %����Ż���(�޾�ȷ�Ľ�����)
nn=-1:10;                              %��������
jn=subs(jn,n,nn);                      %�滻����
figure                                 %����ͼ�δ���
plot(nn,jn,'x-','LineWidth',2)         %����������
xlabel('\itn','FontSize',16)           %�Ӻ�����
ylabel('\itJ_n','FontSize',16)         %��������
title('�����������','FontSize',16)    %�ӱ���
grid on                                %������
syms t                                 %������ű���
yn=2/(n+2)/(1+t^2);                    %��������
jn=int(yn,0,Inf)                       %����Ż���
jn=subs(jn,n,nn);                      %�滻����
hold on                                %��������
plot(nn,jn,'o','LineWidth',2)          %�ٻ�����
legend('�任ǰ�Ļ���','�任��Ļ���')  %��ͼ��
text(nn,jn,num2str(jn'),'FontSize',12) %�ӻ���ֵ

%�������.��Ⱥ�����
