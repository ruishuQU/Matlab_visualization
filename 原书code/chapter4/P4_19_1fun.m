%������ĺ����ļ�
function fun(a,b,c)
v=4/3*pi*a*b*c;                        %���
figure                                 %����ͼ�δ���
ellipsoid(0,0,0,a,b,c)                 %��������ԭ���������
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
zlabel('\itz','FontSize',16)           %�Ӹ�����
title('������','FontSize',24)          %�ӱ���
if a==b&b==c,title('����','FontSize',24),end%
grid on                                %������
axis equal                             %ʹ���������
shading interp                         %Ⱦɫ
box on                                 %�ӿ�
text(0,0,['\ita\rm=',num2str(a),',\itb\rm=',num2str(b),...
    ',\itc\rm=',num2str(c),',\itV\rm=',num2str(v)],'FontSize',16)%��˵��
x=-a:0.05:a;                           %����������
t=linspace(0,2*pi);                    %Բ�ܽ�����
o=ones(size(t));                       %ȫ1����
hold on                                %��������
h=fill3(0,0,0,'y');                    %����
alpha(0.5)                             %�����͸��
pause                                  %��ͣ
for i=1:length(x)                      %��������ѭ��
    xx=x(i);                           %ȡ������
    yy=b*sqrt(1-xx^2/a^2)*cos(t);      %����������
    zz=c*sqrt(1-xx^2/a^2)*sin(t);      %���������
    set(h,'XData',xx*o,'YData',yy,'ZData',zz)%��������
    drawnow                            %ˢ����Ļ
    if xx==a/2,pause,end               %��ͣ�ж�
end                                    %����ѭ��

%�������.��Ⱥ�����
