%��ָͬ����������������Զ���ļ���
clear                                  %�������
xm=10;                                 %��������
xx=0:0.01:xm;                          %�Ա�������
syms x                                 %������ű���
pn=x+1;                                %n=1�ķ��ź���
l=1;                                   %n=1�ļ���
Fn=ones(size(xx));                     %ȫ1����
nm=3;                                  %�������
for n=2:nm                             %������ѭ��
    pn=pn*(x^n+1);                     %����ź����ķ���
    fn=pn/((n*x)^n+1)^((n+1)/2)        %�γ���һ������
    l=[l,limit(fn,x,inf)];             %��������Ӽ���
    fn=inline(fn);                     %ת��Ϊ���ߺ���
    Fn=[Fn;fn(xx)];                    %���������ɾ���
end                                    %����ѭ��
figure                                 %����ͼ�δ���
plot(xx,Fn,'LineWidth',2)              %��������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\itf_n','FontSize',16)         %��������
title('��ָͬ����������������Զ���ļ���','FontSize',16)%�ӱ���
grid on                                %������
legend([repmat('\itn\rm=',nm,1),num2str((1:nm)')])%��ͼ��
l=double(l);                           %���Ż�Ϊ��ֵ
hold on                                %����ͼ��
plot(xm,l,'or','LineWidth',2)          %�����޵�
text(xm*ones(1,nm),l,num2str(l'),'FontSize',16)%��Ǽ���ֵ
%�޷�����
% syms n x
% sn=symprod((x^n+1),n,1,n)
% fn=sn/((n*x)^n+1)^((n+1)/2)
% limit(fn,x,inf)

%�������.��Ⱥ�����
