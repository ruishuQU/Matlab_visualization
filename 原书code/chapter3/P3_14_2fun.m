%������̩��չ��ʽ�ĺ����ļ�
function fun(y,xx0,aa,bb,ym1,ym2,tit)
f=inline(y);                           %���ź�����Ϊ���ߺ���
x0=xx0*pi/180;                         %չ����Ķ�����Ϊ������
a=aa*pi/180;                           %���������޵Ķ�����Ϊ������
b=bb*pi/180;                           %���������޵Ķ�����Ϊ������
x=linspace(a,b);                       %����������
xx=x*180/pi;                           %������������Ϊ����
figure                                 %����ͼ�δ���
plot(xx,f(x),'LineWidth',2)            %����������
xlabel('\itx\rm/\circ','FontSize',16)  %��Ǻ�����
ylabel('\ity','FontSize',16)           %���������
title([tit,'�����ĸ���̩��չ��ʽ'],'FontSize',16)%��Ǳ���
axis([aa,bb,ym1,ym2])                  %���߷�Χ
grid on                                %������
hold on                                %����ͼ��
n=1;                                   %��߼���
while 1                                %����ѭ��
%    t=taylor(y,'x',x0,n)               %����̩��չ��ʽ(�ɰ���÷�)
    t=taylor(y,'x',x0,'Order',n)       %����̩��չ��ʽ
    yn=subs(t,'x',x);                  %��ֵ̩��չ��ʽ
    plot(xx,yn,'--','LineWidth',2,'Color',rand(3,1))%����������
    yn=input('��Ҫ��(y/n)?','s');      %����ѡ��
    if lower(yn)=='n',break,end        %�����Ҫ�˾��˳�ѭ��
    n=n+1;                             %��һ��
end                                    %����ѭ��
leg=[repmat('\itn\rm=',n,1) num2str((1:n)')];%ͼ���ַ���
legend(char('����',leg),0)             %��ͼ��
plot(xx0,f(x0),'*')                    %����
text(xx0,f(x0),[num2str(xx0),',',num2str(f(x0))],'FontSize',16)%���չ����

%�������.��Ⱥ�����
