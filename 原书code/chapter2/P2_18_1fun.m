%���������еļ��޺����ĺ����ļ�
function fun(fn)
f=limit(fn,'n',inf)                    %���ż���
fn=inline(fn);                         %��Ϊ���ߺ���
xm=2;                                  %��������
x=-xm:0.01:xm;                         %�Ա�������
nm=6;                                  %�����
n=0:nm-1;                              %��������
[X,N]=meshgrid(x,2.^n);                %�Ա�����2����ָ��������Ϊ����
f=subs(f,'x',x);                       %����������
figure                                 %����ͼ�δ���
plot(x,fn(N,X),x,f,'--','LineWidth',2) %��������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf_n','FontSize',16)         %��������
title('���������еļ��޺���','FontSize',16)%�ӱ���
grid on                                %������
legend(char([repmat('\itn\rm=',length(n),1),num2str(2.^n')],...
    '���޺���'),0)                     %��ͼ��

%�������.��Ⱥ�����
