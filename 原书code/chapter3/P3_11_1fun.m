%�ݺ����뷴�����Һ����˻��͵����������Եĺ����ļ�
function fun(n,xm,ym,dym)
syms x                                 %������ű���
y=x^n*sin(1/x);                        %���ű��ʽ
dy_dx=diff(y)                          %����ŵ���
simplify(dy_dx)                        %����
l=limit(y,x,0)                         %�����ķ��ż���
l=double(l)                            %��Ϊ��ֵ����
f=inline(y);                           %���ź���ת��Ϊ���ߺ���
df=inline(dy_dx);                      %���ŵ���ת��Ϊ���ߺ���
dx=0.005;                              %��ֵ���
x=-xm:dx:xm;                           %�Ա�������
y=f(x);                                %ȡ����ֵ
y(imag(y)~=0)=nan;                     %������Ϊ����
dy=df(x);                              %ȡ����ֵ
dy(imag(dy)~=0)=nan;                   %������Ϊ����
figure                                 %����ͼ�δ���
subplot(2,1,1)                         %ȡ��ͼ
plot(x,y,'LineWidth',2)                %������
title(['�ݺ����뷴�����Һ����˻���������(\itn\rm=',num2str(n),')'],...
    'FontSize',16)                     %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
axis([-xm,xm,-ym,ym])                  %�������߷�Χ
hold on                                %��������
plot(0,l,'o')                          %�����޵�
text(0,l,num2str(l),'FontSize',16)     %��Ǽ���ֵ
subplot(2,1,2)                         %ȡ��ͼ
plot(x,dy,'--','LineWidth',2)          %������
title(['�ݺ����뷴�����Һ����˻��ĵ�����������(\itn\rm=',num2str(n),')'],...
    'FontSize',16)                     %�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
axis([-xm,xm,-dym,dym])                %�������߷�Χ
if n>2                                 %��n>2ʱ
    dl=limit(dy_dx,'x',0)              %�������ż���
    dl=double(dl)                      %��Ϊ��ֵ����
    hold on                            %��������
    plot(0,dl,'s')                     %�������ļ��޵�
    text(0,dl,num2str(dl),'FontSize',16)%��Ǽ���ֵ
end                                    %��������

%�������.��Ⱥ�����
