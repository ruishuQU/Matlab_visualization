%���Է�ʽ�����ͷ������ĺ����ļ�
function fun(a,b,c,d)
if a+d~=0,return,end                   %�����������ͬ���򷵻�
xm=8;                                  %��������
x=-xm:0.1:xm;                          %�Ա�������
y=(a*x+b)./(c*x+d);                    %����ֵ
%y=a/c+(a^2+b*c)/c./(c*x-a);            %����ֵ
figure                                 %����ͼ�δ���
plot(x,y,y,x,'.','LineWidth',2)        %�������ͷ���������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
title('���Է�ʽ�����ͷ�����','FontSize',16)%�ӱ���
grid on                                %������
axis equal                             %ʹ���������
axis([-xm-2,xm+2,-xm,xm])              %�������߷�Χ
legend('����','������',2)              %ͼ��
hold on                                %��������
plot(x,x,'-.','LineWidth',2)           %���Գ���
r0=a/c;                                %����������
plot([-xm,xm],[r0,r0],':',[r0,r0],[-xm,xm],':','LineWidth',2)%��������
text(-xm,0,['\ita\rm=-\itd\rm=',num2str(a),...
    ',\itb\rm=',num2str(b),',\itc\rm=',num2str(c)],'FontSize',16)%��ǲ���

%�������.��Ⱥ�����
