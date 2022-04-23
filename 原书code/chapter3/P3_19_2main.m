%��Բ�����ʰ뾶�ͽ����ߵ�������
clear                                  %�������
syms t b                               %������ű���
x=cos(t);                              %���ź�����
y=b*sin(t);                            %����������
x_t=diff(x)                            %x��t�ķ��ŵ���dx/dt
y_t=diff(y)                            %y��t�ķ��ŵ���dy/dt
x_tt=diff(x,2)                         %x��t�ķ��ŵ���d2x/dt2
y_tt=diff(y,2)                         %y��t�ķ��ŵ���d2y/dt2

rho=(x_t^2+y_t^2)^(3/2)/abs(x_t*y_tt-y_t*x_tt)%���ʰ뾶
%simplify(rho)
fr=inline(rho);                        %���ʰ뾶�����ߺ���
t=linspace(-pi,pi);                    %�α�������
b=0.5:0.5:2;                           %�ݰ�������
[B,T]=meshgrid(b,t);                   %�α������ݰ������
R=fr(B,T);                             %���ʰ뾶��ֵ
figure                                 %����ͼ�δ���
plot(t,R,'LineWidth',2)                %��������
legend([repmat('\itb/a\rm=',length(b),1),num2str(b')],0)%ͼ��
title('��Բ��α����仯�����ʰ뾶','FontSize',16)%�ӱ���
grid on                                %������
xlabel('\itt','FontSize',16)           %�Ӻ�����
ylabel('\it\rho/a','FontSize',16)      %��������

fx=inline(x);                          %x�����ߺ���
x=fx(t);                               %x��ֵ
x(t<0)=NaN;                            %�α���С��0�ĺ������Ϊ����
figure                                 %����ͼ�δ���
plot(x,R,'LineWidth',2)                %��������
legend([repmat('\itb/a\rm=',length(b),1),num2str(b')],0)%ͼ��
title('��Բ������仯�����ʰ뾶','FontSize',16)%�ӱ���
grid on                                %������
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\itR/a','FontSize',16)         %��������

e=0.5;                                 %ƫ����
P3_19_2fun(e)                          %���ú����ļ���ʾ����
P3_19_2fun(0.4)                        %���ú����ļ���ʾ����
P3_19_2fun(0.8)                        %���ú����ļ���ʾ����

%�������.��Ⱥ�����
