%��ʽ֮�����еļ��޵ĺ����ļ�
function fun(an,nm,tit)
syms n                                 %������ű���
l=limit(an,n,inf)                      %����ż���
l=double(l)                            %��Ϊ��ֵ
fn=inline(an)                          %�������л�Ϊ���ߺ���
n=1:nm;                                %��������
figure                                 %����ͼ�δ���
plot(n,fn(n),'LineWidth',2)            %����������
xlabel('\itn','FontSize',16)           %�Ӻ�����
ylabel('\ita_n','FontSize',16)         %��������
title([tit,'���еļ���'],'FontSize',16)%�ӱ���
grid on                                %������
hold on                                %����ͼ��
plot(nm,l,'or')                        %������Զ��������ֵ
text(nm,l,num2str(l),'FontSize',16)    %��Ǽ���

%�������.��Ⱥ�����
