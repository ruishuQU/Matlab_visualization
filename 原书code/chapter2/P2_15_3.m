%˫����ָ�������ļ���
clear                                  %�������
syms x a b                             %������ű���
f=(a^(x^2)-b^(x^2))/(a^x-b^x)^2        %���ź���
l=limit(f,x,0)                         %���ż���

f=inline(vectorize(f))                 %���ź���ת��Ϊ���ߺ���
b=input('���������bֵ֮(����2):');   %�����������
%b=2;                                   %�����ο�ֵ
a=0.5:0.5:3;                           %��������
xm=0.5;                                %��������
x=-xm:0.01:xm;                         %�Ա�������
[A,X]=meshgrid(a,x);                   %�������Ա�������
%F=(A.^(X.^2)-b.^(X.^2))./(A.^X-b.^X).^2;%��������
F=f(A,b,X);                            %��������
figure                                 %����ͼ�δ���
plot(x,F,'LineWidth',2)                %��������
title(['˫����ָ�������ļ���(\itb\rm=',num2str(b),')'],'FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf','FontSize',16)           %��������
legend([repmat('\ita\rm=',length(a),1),num2str(a')],0)%��ͼ��
grid on                                %������
ll=subs(l,{'a','b'},{a,b});            %�������滻Ϊ��������
hold on                                %����ͼ��
plot(0,ll,'or','LineWidth',2)          %�����޵�
text(zeros(size(a)),ll,num2str(ll',4),'FontSize',16)%��Ǽ���ֵ

%F=(b.^(X.^2)-A.^(X.^2))./(b.^X-A.^X).^2;%��������
F=f(b,A,X);                            %��������
figure                                 %����ͼ�δ���
plot(x,F,'LineWidth',2)                %��������
title(['˫����ָ�������ļ���(\ita\rm=',num2str(b),')'],'FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf','FontSize',16)           %��������
legend([repmat('\itb\rm=',length(a),1),num2str(a')],0)%��ͼ��
grid on                                %������
ll=subs(l,{'a','b'},{b,a});            %�������滻Ϊ��������
hold on                                %����ͼ��
plot(0,ll,'or','LineWidth',2)          %�����޵�
text(zeros(size(a)),ll,num2str(ll',4),'FontSize',16)%��Ǽ���ֵ

%�������.��Ⱥ�����
