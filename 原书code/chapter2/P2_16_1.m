%����������ԭ��ļ���
clear                                  %�������
syms x                                 %������ű���
fc={log(1+x)/x,log(1+x*exp(x))/log(x+sqrt(1+x^2))};%���ź���Ԫ��
xx=-1:0.01:1;                          %�Ա�������
for i=1:length(fc)                     %��Ԫ��ѭ��
    f=fc{i};                           %ȡ���ź���
    l=limit(f,x,0)                     %���ż���
    l=double(l)                        %��Ϊ��ֵ
    f=inline(f);                       %ת��Ϊ���ߺ���
    figure                             %����ͼ�δ���
    plot(xx,f(xx),'LineWidth',2)       %������
    title('�ȶ���������ԭ��ļ���','FontSize',16)%�ӱ���
    xlabel('\itx','FontSize',16)       %�Ӻ�����
    ylabel('\itf','FontSize',16)       %��������
    grid on                            %������
    hold on                            %��������
    plot(0,l,'o')                      %������
    text(0,l,num2str(l),'FontSize',16) %��Ǽ���
end                                    %����ѭ��

%�������.��Ⱥ�����
