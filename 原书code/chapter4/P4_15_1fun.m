%�α������̵�����ͳ��ȵĺ����ļ�
function fun(x,y,t1,t2,tit)
ds=(x*diff(y)-y*diff(x))/2;            %���ű�������
%ds=y*diff(x);                          %���ű�������
%ds=x*diff(y);                          %���ű�������
s=abs(int(ds,t1,t2))                   %����Ż���
s=double(s);                           %��Ϊ��ֵ
dl=sqrt(diff(x)^2+diff(y)^2);          %���ű�������
dl=simplify(dl)                        %����
fl=inline(dl);                         %���������ߺ���
l=quad(fl,t1,t2)                       %��ֵ�����󻡳�
% l=int(dl,t1,t2)                        %����Ż���
% l=double(l)                            %��Ϊ��ֵ
fx=inline(x);                          %����������ߺ���
fy=inline(y);                          %����������ߺ���
t=linspace(t1,t2);                     %��������
x=fx(t);                               %������
y=fy(t);                               %������
figure                                 %����ͼ�δ���
if x(1)==x(end)&y(1)==y(end)           %����Ǳպ�����
    fill(x,y,'y')                      %����ɫͼ
else                                   %����
    fill([x,x(end),x(1)],[y,0,0],'y')  %����ɫͼ
end                                    %��������
title([tit,'������ͳ���'],'FontSize',16)%�ӱ���
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
grid on                                %������
axis equal                             %ʹ���������
text(0,0,['\itS/a\rm^2=',num2str(s),...
    ',\itL/a\rm=',num2str(l)],'FontSize',16)%��ʾ����ͳ���

%�������.��Ⱥ�����
