%���������ߵ�������ܳ��ĺ����ļ�
function fun(r,t1,t2,tit)
syms t                                 %������ż��Ǳ���
s=int(r^2/2,t1,t2)                     %����Ż���
s=double(s)                            %��Ϊ��ֵ
dl=sqrt(r^2+diff(r)^2);                %���ű�������
fl=inline(dl);                         %���������ߺ���
l=quad(fl,t1,t2)                       %��ֵ�����󻡳�
% l=int(dl,t1,t2)                        %����Ż���
% l=double(l)                            %��Ϊ��ֵ(����)
%----------------------------------------------------------
x=r*cos(t);                            %���ź�����
y=r*sin(t);                            %����������
fx=inline(x);                          %������ת��Ϊ���ߺ���
fy=inline(y);                          %������ת��Ϊ���ߺ���
t=linspace(t1,t2);                     %��������
x=fx(t);                               %������
y=fy(t);                               %������
figure                                 %����ͼ�δ���
fill(x,y,'y')                          %����ɫͼ
title([tit,'��������ܳ�'],'FontSize',16)%�ӱ���
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
grid on                                %������
axis equal                             %ʹ���������
text(0,0,['\itS/a\rm^2=',num2str(s),...
    ',\itL/a\rm=',num2str(l)],'FontSize',16)%��ʾ����ͳ���

%�������.��Ⱥ�����
