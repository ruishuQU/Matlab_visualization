%������������кͼ��޺���
clear                                  %�������
x=0:0.1:1;                             %�Ա�������
fn=x/2;                                %��һ����������
n=6;                                   %�������
figure                                 %����ͼ�δ���
hold on                                %��������
c='v+oxs*';                            %�����ַ���
for i=1:n                              %������ѭ��
    plot(x,fn,[c(i),'-'])              %����
    fn=x/2-fn.^2/2;                    %������һ������
end                                    %����ѭ��
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf_n','FontSize',16)         %��������
title('������������кͼ��޺���','FontSize',16)%�ӱ���
grid on                                %������
fn=sqrt(1+x)-1;                        %���޺���
plot(x,fn,'k--','LineWidth',2)         %��������
legend(char([repmat('\itn\rm=',n,1),num2str((1:n)')],'��������'),2)%ͼ��

%�������.��Ⱥ�����
