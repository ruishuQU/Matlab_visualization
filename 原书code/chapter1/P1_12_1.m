%��Բ
clear                                  %�������
b=input('b/a=');                       %���������ݰ���
%b=0.8;                                 %�ݰ���ο�ֵ
%b=2;                                   %�ݰ���ο�ֵ
%b=1.5;                                 %�ݰ���ο�ֵ
x=-1:0.01:1;                           %����������
y=b*sqrt(1-x.^2);                      %����������
figure                                 %����ͼ�δ���
plot(x,y,x,-y,'LineWidth',2)           %������
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
title(['��Բ(\itb/a\rm=',num2str(b),')'],'FontSize',16)%�ӱ���
grid on                                %������
axis equal                             %ʹ���������
hold on                                %��������
if b<1                                 %���b<a
    c=sqrt(1-b^2);                     %����뽹��
    plot([-c,c],[0,0],'.','MarkerSize',20)%����������
    text(c,0,num2str(c),'FontSize',16) %��ǰ뽹��
else                                   %����
    c=sqrt(b^2-1);                     %����뽹��
    plot([0,0],[-c,c],'.','MarkerSize',20) %����������
    text(0,c,num2str(c),'FontSize',16) %��ǰ뽹��
end                                    %��������
%���α�������
% t=linspace(0,2*pi);                    %��������
% x=cos(t);                              %����������
% y=b*sin(t);                            %����������
% plot(x,y,'+','LineWidth',2)            %����������

%�������.��Ⱥ�����
