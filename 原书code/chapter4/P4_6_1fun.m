%�����Ǳ����Ķ����ֵĺ����ļ�
function fun(y,a,b)
s=int(y,a,'x')                         %�����ķ��Ż���
f=inline(y)                            %���ߺ���
x=linspace(a,b,50);                    %����������
dx=x(2)-x(1);                          %��������
y=f(x);                                %����������
figure                                 %����ͼ�δ���
fill([x,b,a],[y,0,0],'y')              %����ɫͼ
title(['�����Ǳ����Ķ�����(\ita\rm=',num2str(a),')'],'FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
grid on                                %������
s=subs(s,'x',x);                       %�滻���������ֵ
hold on                                %��������
plot(x,s,'*-')                         %����������
text(b,s(end),['\itS\rm=',num2str(s(end))],'FontSize',16)%��ʾ�����ֽ��
s=cumtrapz(y)*dx;                      %���ۻ����η������
%s=cumsum(y)*dx;                        %���ۻ����η������(���ϴ�)
plot(x,s,'or')                         %�ٻ���������
legend('����������Χ��','���Ż���','���η����',0)%��ͼ��

%�������.��Ⱥ�����
