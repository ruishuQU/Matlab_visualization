%�༶�����ߵ�����ͳ��ȵĺ����ļ�
function fun(n)
syms t                                 %������ż��Ǳ���
r=2*cos(t/n)^n;                        %���ż���
s=int(r^2/2,0,pi*n)                    %����Ż���
s=double(s);                           %��Ϊ��ֵ
dl=sqrt(r^2+diff(r)^2);                %���ű�������
l=int(dl,0,pi*n)                       %����Ż���
l=double(l);                           %��Ϊ��ֵ

x=r*cos(t);                            %���ź�����
y=r*sin(t);                            %����������
fx=inline(x);                          %���������ߺ���
fy=inline(y);                          %���������ߺ���
t=linspace(0,n*pi,500);                %��������
x=fx(t);                               %����������
y=fy(t);                               %����������
figure                                 %����ͼ�δ���
fill(x,y,'y')                          %����ɫͼ
title(['�����ߵ�����ͳ���(\itn\rm=',num2str(n),')'],'FontSize',16)%����
xlabel('\itx/a','FontSize',16)         %������
ylabel('\ity/a','FontSize',16)         %������
grid on                                %������
axis equal                             %ʹ���������
text(0,0,['\itS_n/a\rm^2=',num2str(s),...
    ',\itL_n/a\rm=',num2str(l)],'FontSize',16)%��ʾ����ͳ���

%�������.��Ⱥ�����
