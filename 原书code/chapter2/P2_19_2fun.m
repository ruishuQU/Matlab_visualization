%�̲��շ��̵Ľ��ƽ�ĺ����ļ�
function fun(e,n)
x=linspace(-pi,pi);                    %�Ա�������
yn=x;                                  %��һ����������
Yn=yn;                                 %�����һ������
for i=1:n-1                            %������ѭ��
    yn=x+e*sin(yn);                    %������һ������
    Yn=[Yn;yn];                        %���������ɾ���
end                                    %����ѭ��
figure                                 %����ͼ�δ���
plot(x,Yn,'LineWidth',2)               %����
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity_n','FontSize',16)         %��������
title('�̲��շ��̵Ľ��ƽ�','FontSize',16)%����
grid on                                %������
y=linspace(-pi,pi);                    %���޺���
x=y-e*sin(y);                          %������
hold on                                %��������
plot(x,y,'k--','LineWidth',2)          %��������
axis tight                             %��������
legend(char([repmat('\itn\rm=',n,1),num2str((1:n)')],'��������'),4)%ͼ��
text(0,0,['\it\epsilon\rm=',num2str(e)],'FontSize',16)%��ǳ���

%�������.��Ⱥ�����
