%x^n/(ax-b)�Ĳ������ֵ���֤�ĺ����ļ�
function fun(yn,n,b)
yn=subs(yn,{'n','b'},{n,b});           %���������滻ָ���ͳ���
sn=int(yn)                             %�������Ż���
f=inline(yn);                          %�������ź��������ߺ���
fs=inline(sn);                         %�������Ż��ֵ����ߺ���
xm=3;                                  %��������
dx=0.1;                                %�Ա������
x=1:dx:xm;                             %�Ա�������
if n==1                                %�������Ϊ1
    kn=x+b*log(abs(x-b));              %���
%    kn=x-b*log(abs(x+b));              %���
else                                   %����
    i=1:n;                             %��������
    [X,I]=meshgrid(x,i);               %�Ա�������������
     Yn=X.^(n-I+1).*b.^(I-1)./(n-I+1); %ͨ��
     kn=sum(Yn)+b^n*log(abs(x-b));     %���
%    Yn=(-1).^(I-1).*X.^(n-I+1).*b.^(I-1)./(n-I+1);%ͨ��
%    kn=sum(Yn)+(-1)^n*b^n*log(abs(x+b));%���
end                                    %��������
kn=kn-kn(1);                           %ʹ��ֵΪ0
yn=f(x);                               %��������ֵ
sn=fs(x);                              %�������ֺ���ֵ
sn=sn-sn(1);                           %ʹ��ֵΪ0
ss=cumtrapz(yn)*dx;                    %���η��ۻ����
figure                                 %����ͼ�δ���
plot(x,yn,x,kn,'x--',x,sn,'o',x,ss,'sg','LineWidth',2)%��ԭ�����ͻ�������
title(['\itx^n\rm/(\itax-b\rm)�������ֵ���֤(\itn\rm=',num2str(n),...
    ',\itb\rm=',num2str(b),')'],'FontSize',16)%�ӱ���
xlabel('\itax','FontSize',16)          %�Ӻ�����
grid on                                %������
legend('��������','�ֹ���','���Ž�','���η���',0)%��ͼ��

%�������.��Ⱥ�����
