%һ���������޲����ĸ������ļ���
clear                                  %�������
syms x a                               %������ű���
f=(sqrt(x)-sqrt(a)+sqrt(x-a))/sqrt(x^2-a^2);%���ź���
l=limit(f,x,a,'Right')                 %���ż���
aa=0.5:0.5:3;                          %��������
xm=4;                                  %��������
xx=0:0.002:xm;                         %�Ա�������
[A,X]=meshgrid(aa,xx);                 %�������Ա������� 
f=inline(f);                           %ת��Ϊ���ߺ���
F=f(A,X);                              %��������
F(imag(F)~=0)=NaN;                     %������Ϊ����
figure                                 %����ͼ�δ���
plot(xx,F,'LineWidth',2)               %��������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf','FontSize',16)           %��������
title('�������ĸ������ļ���','FontSize',16)%�ӱ���
grid on                                %������
legend([repmat('\ita\rm=',length(aa),1),num2str(aa')])%��ͼ��
ll=subs(l,a,aa);                       %����ֵ
hold on                                %��������
plot(aa,ll,'o')                        %�����޵�
text(aa,ll,num2str(ll'),'FontSize',16) %��ʾ�����ı�
a0=0.3:0.1:4;                          %���ܵĲ�������
ll=subs(l,a,a0);                       %����ֵ
plot(a0,ll,'-.','LineWidth',2)         %�����޷ֲ���
f=(sqrt(x)-1+sqrt(x-1))/(sqrt(x^2-1))  %���ź���
x0=1;                                  %���޵ĺ�����
l=limit(f,x,x0)                        %���ż���
l=double(l)                            %��Ϊ��ֵ
x=x0:0.001:x0+1;                       %�Ա�������
f=inline(f);                           %ת��Ϊ���ߺ���
%f=(sqrt(x)-1+sqrt(x-1))./(sqrt(x.^2-1));%����
figure                                 %����ͼ�δ���
plot(x,f(x),'LineWidth',2)             %������
title('Լ���ĸ������ļ���','FontSize',16)%�ӱ���
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ita\rm^{1/2}\itf','FontSize',16)%��������
grid on                                %������
hold on                                %��������
plot(x0,l,'o')                         %������
text(x0,l,num2str(l),'FontSize',16)    %��Ǽ���

%�������.��Ⱥ�����
