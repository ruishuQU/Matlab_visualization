%�������������չ��ʽ�ĺ����ļ�
function fun(y,yn,a,b,ym1,ym2,tit)
f=inline(y);                           %���ź�����Ϊ���ߺ���
fn=inline(yn);                         %ͨ��ķ��ź�����Ϊ���ߺ���
x=linspace(a,b);                       %�Ա�������
y=f(x);                                %����
n=1:7;                                 %��������
[X,N]=meshgrid(x,n);                   %�Ա�������������
Yn=fn(N,X);                            %�����ֵ֮
Y=cumsum(Yn);                          %�ۻ�����ֵ
figure                                 %����ͼ�δ���
plot(x,y,x,Y,'--','LineWidth',2)       %����������
fs=16;                                 %�����С
title([tit,'�������������չ��'],'FontSize',fs)%�ӱ���
xlabel('\itx','FontSize',fs)           %��x��ǩ
ylabel('\ity','FontSize',fs)           %��y��ǩ
grid on                                %������
axis([a,b,ym1,ym2])                    %���߷�Χ
legend(char('����',[repmat('\itn\rm=',length(n),1),num2str(n')]),0)%��ͼ��

%�������.��Ⱥ�����
