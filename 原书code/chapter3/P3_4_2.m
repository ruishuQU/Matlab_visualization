%��˫�������͵���
clear                                  %�������
syms x                                 %������ű���
xm=3;                                  %����Ա���
yc={asinh(x),acosh(x),atanh(x),acoth(x)};%��˫����������Ԫ��
tc={'����','����','���к�����','���к�����'};%��˫����������Ҫ����
for i=1:length(yc)                     %��Ԫ��ѭ��
    y=yc{i}                            %ȡ���ź���
    t=tc{i};                           %ȡ��Ҫ����
    dy_dx=diff(y)                      %��y��x�ĵ���
    d2y_dx2=diff(y,2)                  %��y��x�Ķ��׵���
    f=inline(y);                       %���������ߺ���
    df=inline(dy_dx)                   %���������ߺ���
    d2f=inline(d2y_dx2)                %���׵��������ߺ���
    x=-xm:0.05:xm;                     %����������
    if i==2                            %���ڷ�˫�����Һ���
        x=1:0.05:xm;                   %����������
    end                                %��������
    y=f(x);                            %����ֵ
    dy=df(x);                          %��������ֵ
    d2y=d2f(x);                        %���׵�������ֵ
    figure                             %����ͼ�δ���
    plot(x,y,x,dy,'--o',x,d2y,'-.s','LineWidth',2)%������
    axis([-xm,xm,-2,2])                %�������귶Χ
    if i==2                            %���ڷ�˫�����Һ���
        hold on                        %����ͼ��
        axis([1,xm,-3,3])              %�������귶Χ
        plot(x,-y,x,-dy,'--+',x,-d2y,'-.x','LineWidth',2)%������
    end                                %��������
    xlabel('\itx','FontSize',16)       %�Ӻ�����
    title(['��˫��',t,'�����͵���'],'FontSize',16)%�ӱ���
    grid on                            %������
    legend('\ity','\ity\prime','\ity\prime\prime',0)%��ͼ��
end                                    %����ѭ��

%�������.��Ⱥ�����
