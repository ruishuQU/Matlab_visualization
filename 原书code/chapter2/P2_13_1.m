%�������ı����Ǻ����ļ���
clear                                  %�������
syms x a                               %������ű���
fc={(sin(x)-sin(a))/(x-a),(cos(x)-cos(a))/(x-a),...
    (tan(x)-tan(a))/(x-a),(cot(x)-cot(a))/(x-a),...
    (sec(x)-sec(a))/(x-a),(csc(x)-csc(a))/(x-a)};%����Ԫ��
tc={'����sin','����cos','����tan','����cot','����sec','���csc'};%����Ԫ��
a1=-3:3;                               %��������
xm=6;                                  %��������
xx=-xm:0.05:xm;                        %�Ա�������
[A,X]=meshgrid(a1,xx);                 %�������Ա������� 
a2=-4:0.1:4;                           %���ܵĲ�������
for i=1:6                              %ѭ��
    f=fc{i};                           %ȡ����
    t=tc{i};                           %ȡ����(����)
    l=limit(f,x,a)                     %����ż���
    f=inline(f);                       %ת��Ϊ���ߺ���
    F=f(A,X);                          %��������
    figure                             %����ͼ�δ���
    plot(xx,F,'LineWidth',2)           %��������
    xlabel('\itx','FontSize',16)       %�Ӻ�����
    ylabel('\itf','FontSize',16)       %��������
    title(['�������ı����Ǻ����ļ���(',t,')'],'FontSize',16)%�ӱ���
    grid on                            %������
    legend([repmat('\ita\rm=',length(a1),1),num2str(a1')])%��ͼ��
    ll=subs(l,a,a1);                   %����ֵ
    hold on                            %��������
    plot(a1,ll,'o')                    %�����޵�
%    stem(a1,ll,'--')                   %������
    ll=subs(l,a,a2);                   %����ֵ
    plot(a2,ll,'-.','LineWidth',2)     %�����޷ֲ���
    if i>2,axis([-xm,xm,-6,6]),end     %�������߷�Χ
end                                    %����ѭ��

%�������.��Ⱥ�����
