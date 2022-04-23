%����ʽ�������ԺͰ�͹���Լ���ֵ�͹յ�ĺ����ļ�
function fun(y,xm1,xm2,t)
dy_dx=diff(y)                          %����ŵ���
d2y_dx2=diff(y,2)                      %����Ŷ��׵���
f=inline(y)                            %���ź���ֱ�ӻ�Ϊ���ߺ���
df=inline(dy_dx)                       %���ŵ���ֱ�ӻ�Ϊ���ߺ���
d2f=inline(d2y_dx2)                    %���Ŷ��׵���ֱ�ӻ�Ϊ���ߺ���
%�������͵�������
x=xm1:0.01:xm2;                        %����������
figure                                 %����ͼ�δ���
plot(x,f(x),x,df(x),'--g',x,d2f(x),'-.r','LineWidth',2)%�������͵�������
title([t,'�������ԺͰ�͹���Լ���ֵ�͹յ�'],'FontSize',16)%�ӱ���
xlabel('\itx','FontSize',16)           %�Ӻ�����
grid on                                %������
legend('ԭ����\ity','����\ity\prime','���׵���\ity\prime\prime',0)%��ͼ��
%����ͱ�����
x0=solve(y)                            %��ԭ�����ķ������
x0=double(x0)                          %��Ϊ��ֵ
x0(imag(x0)~=0)=[]                     %ɾ������
y0=f(x0);                              %���������
hold on                                %��������
plot(x0,y0,'*')                        %�����
text(x0,y0,num2str(x0),'FontSize',16)  %������
%���㵼������㲢��Ǽ�ֵ
dx0=solve(dy_dx)                       %�����ķ������
dx0=double(dx0)                        %��Ϊ��ֵ
dy0=f(dx0);                            %��ֵ
stem(dx0,dy0,'--')                     %������
text(dx0,dy0,[num2str(dx0),repmat(',',length(dx0),1),num2str(dy0)],...
    'FontSize',16)                     %��Ǽ�ֵ
%������׵�������㲢��ǹյ�
d2x0=solve(d2y_dx2)                    %����׵����ķ������
d2x0=double(d2x0)                      %��Ϊ��ֵ
d2y0=f(d2x0);                          %�յ�ĺ���ֵ
stem(d2x0,d2y0,'--d')                  %������
text(d2x0,d2y0,[num2str(d2x0),repmat(',',length(d2x0),1),num2str(d2y0)],...
    'FontSize',16)                     %��ǹյ�
 
%�������.��Ⱥ�����
