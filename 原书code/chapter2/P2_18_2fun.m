%���������еļ��޷ֶκ����ĺ����ļ�
function fun(fn,xm)
fn=inline(fn);                         %��Ϊ���ߺ���
x=0:0.01:xm;                           %�Ա�������
nm=6;                                  %�����
n=0:nm-1;                              %��������
[X,N]=meshgrid(x,2.^n);                %�Ա�����������������Ϊ����
figure                                 %����ͼ�δ���
plot(x,fn(N,X),'LineWidth',2)          %��������
title('���������кͼ��޷ֶκ���','FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf_n','FontSize',16)         %��������
grid on                                %������
legend([repmat('\itn\rm=',length(n),1),num2str(2.^n')],0)%ͼ��
hold on                                %��������

%�������.��Ⱥ�����
