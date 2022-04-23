%ָ�����������Ǻ����˻��ĸ߽׵�����������
clear                                  %�������
syms x a n p                           %������ű���
%y=exp(a*x)*sin(x);                     %���ź���
dny=(a^2+1)^(n/2)*exp(a*x)*sin(x+n*p); %���ŵ���
dfn=inline(dny)                        %���ŵ���ת��Ϊ���ߺ���
xm=2*pi;                               %��������
x=linspace(-xm,xm);                    %����������
a=-0.2:0.1:0.2;                        %��������
[A,X]=meshgrid(a,x);                   %�������Ա�������
P=atan2(1,A);                          %������
nm=5;                                  %�������
for n=0:nm-1                           %ѭ��
    dYn=dfn(A,n,P,X);                  %��������
    figure                             %����ͼ�δ���
    plot(x,dYn,'x-','LineWidth',2)     %��������������
    title(['ָ�����������Һ����˻���',num2str(n),'�׵���'],'FontSize',16)%�ӱ���
    xlabel('\itbx','FontSize',16)      %�Ӻ�����
    grid on                            %������
    axis tight                         %����
    legend([repmat('\ita/b\rm=',length(a),1),num2str(a')],0)%��ͼ��
%�÷��ŵ�����֤���������ȷ��
%     dny=diff(y,n)                      %����ŵ���
%     dny=simplify(dny)                  %����
%     hold on                            %��������
%     plot(x,subs(dny,{'a','x'},{A,X}),'o')%������
%     text(-xm,0,'����ǽ�����,Ȧ�Ƿ��Ž�.','FontSize',16)%��˵��
end                                    %����ѭ��
a=0.2;                                 %����
syms x                                 %������ű���
y=exp(a*x)*sin(x);                     %���ź���
P3_10_2fun(y,a,'����')                 %���ú����ļ�
P3_10_2fun(exp(-a*x)*cos(x),-a,'����') %���ú����ļ�

%�������.��Ⱥ�����
