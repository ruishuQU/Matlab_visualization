%����Ĳ���ѭ���ṹ
clear                                  %�������
l=(sqrt(5)-1)/2;                       %����
e=input('�����뾫��:');                %�������뾫��
%e=1e-4;                                %���Ȳο�ֵ
%e=1e-6;                                %���Ȳο�ֵ
%e=1e-10;                               %���Ȳο�ֵ
x1=1;                                  %��1��ֵ
x2=1;                                  %��2��ֵ
yn=[];                                 %�����ÿ�
while 1                                %����ѭ��
    y2=x1/x2;                          %�������������ı�ֵ
    yn=[yn,y2];                        %���Ӵ�ֵ
    if abs(y2-l)<e break,end           %�ﵽ��ȷ���˳�ѭ��
    if length(yn)>1000 break,end       %��ֵ̫�����˳�ѭ��(���Գ�����)
    x3=x1+x2;                          %������һ��ֵ
    x1=x2;                             %ת����ֵ
    x2=x3;                             %��ת����ֵ
end                                    %����ѭ��
n=2:length(yn)+1;                      %��������
figure                                 %����ͼ�δ���
plot(n,yn,'*-','LineWidth',2)          %����ֵ��
title(['�Ʋ��������б�ֵ�ļ���(\it\epsilon\rm=',num2str(e),')'],...
    'FontSize',16)                     %�ӱ���
xlabel('\itn','FontSize',16)           %�Ӻ�����
ylabel('\itx_n\rm_-_1/\itx_n','FontSize',16)%��������
grid on                                %������
hold on                                %��������
plot([2,n(end)],[l,l],'--','LineWidth',2)%��������
text(n(end),l,num2str(l),'FontSize',12)%��ʾ�����ı�

%�������.��Ⱥ�����
