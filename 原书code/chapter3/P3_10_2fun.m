%ָ�����������Ǻ����˻��ĸ߽׵����ĺ����ļ�
function fun(y,a,tit)
p=atan2(1,a);                          %������
xm=6;                                  %��������
dx=0.1;                                %��ֵ���
x=-xm:dx:xm;                           %�Ա�������
dY=[];                                 %�����ÿ�
nm=5;                                  %�������
for n=0:nm-1                           %ѭ��
    dy=diff(y,n)                       %����ŵ���
    dY=[dY;subs(dy,'x',x)];            %���Ӿ���
end                                    %����ѭ��
n=0:nm-1;                              %��������
figure                                 %����ͼ�δ���
plot(x,dY,'LineWidth',2)               %��������������
legend([repmat('\itn\rm=',nm,1),num2str(n')],0)%��ͼ��
title(['ָ�������뺯��',tit,'�����˻��ĸ߽׵���'],'FontSize',16)%�ӱ���
xlabel('\itbx','FontSize',16)          %�Ӻ�����
grid on                                %������
text(0,min(dY(:)),['\ita/b\rm=',num2str(a)],'FontSize',16)%�Ӳ���˵��

%�������.��Ⱥ�����
