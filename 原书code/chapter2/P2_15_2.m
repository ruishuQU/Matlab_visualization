%��������ָ�������ļ���
clear                                  %�������
syms x a                               %������ű���
fc={(a^x-x^a)/(x-a),(x^x-a^a)/(x-a)};  %����Ԫ��
tc={'ָ�����ݺ���','��ָ����'};        %����Ԫ��
aa=0.1:0.3:1.9;                        %��������
xm=2;                                  %��������
xx=0.05:0.001:xm;                       %�Ա�������
[A,X]=meshgrid(aa,xx);                 %�������Ա������� 
a0=0.05:0.01:2;                        %���ܵĲ�������
for i=1:2                              %ѭ��
    f=fc{i};                           %ȡ����
    t=tc{i};                           %ȡ����(����)
    l=limit(f,x,a)                     %����ż���
    l=simplify(l)                      %����
    f=inline(f);                       %ת��Ϊ���ߺ���
    F=f(A,X);                          %��������
    figure                             %����ͼ�δ���
    plot(xx,F,'LineWidth',2)           %��������
    title(['�������ĺ����ļ���(',t,')'],'FontSize',16)%�ӱ���
    xlabel('\itx','FontSize',16)       %�Ӻ�����
    ylabel('\itf','FontSize',16)       %��������
    grid on                            %������
    legend([repmat('\ita\rm=',length(aa),1),num2str(aa')],0)%��ͼ��
    ll=subs(l,a,aa);                   %����ֵ
    hold on                            %��������
    plot(aa,ll,'o')                    %�����޵�
    ll=subs(l,a,a0);                   %����ֵ
    plot(a0,ll,'-.','LineWidth',2)     %�����޷ֲ���
end                                    %����ѭ��

%�������.��Ⱥ�����
