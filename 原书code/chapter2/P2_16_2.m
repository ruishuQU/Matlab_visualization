%�ɻ�Ϊ��һ�����Ķ��������Ǹ��Ϻ����ļ���
clear                                  %�������
syms x a b                             %������ű���
fc1={log(cos(a*x))/log(cos(b*x)),log(tan(pi/4+a*x))/sin(b*x)};%˫�������ź���Ԫ��
fc2={log(cos(a*x))/log(cos(x)),log(tan(pi/4+a*x))/sin(x)};%���������ź���Ԫ��
xm=0.5;                                %��������
xm=1;                                  %��������
xx=-xm:0.01:xm;                        %�Ա�������
a=0.5:0.5:3;                           %��������
[A,X]=meshgrid(a,xx);                  %�������Ա�������
for i=1:length(fc1)                    %��Ԫ��ѭ��
    f=fc1{i}                           %ȡ���ź���
    l=limit(f,x,0)                     %���ż���
    f=fc2{i}                           %ȡ���ź���
    l=limit(f,x,0)                     %���ż���
    f=inline(f);                       %���ź���ת��Ϊ���ߺ���
    F=f(A,X);                          %��������
    F(imag(F)~=0)=nan;                 %������Ϊ����
    figure                             %����ͼ�δ���
    plot(xx,F,'LineWidth',2)           %��������
    title('�ɻ�Ϊ��һ�����Ķ��������Ǹ��Ϻ����ĵļ���','FontSize',16)%�ӱ���
    xlabel('\itbx','FontSize',16)      %�Ӻ�����
    ylabel('\itf','FontSize',16)       %��������
    legend([repmat('\ita/b\rm=',length(a),1),num2str(a')])%��ͼ��
    grid on                            %������
    l=subs(l,'a',a);                   %�������滻Ϊ��������
    hold on                            %����ͼ��
    plot(0,l,'or','LineWidth',2)       %�����޵�
    text(zeros(size(l)),l,num2str(l'),'FontSize',16)%��Ǽ���ֵ
    axis([-xm,xm,0,10])                %�������߷�Χ
end                                    %����ѭ��

%�������.��Ⱥ�����
