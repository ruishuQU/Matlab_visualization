%��������������ֱ����ת�������ͱ�����ĺ����ļ�
function fun(r,t1,t2,x0,tit)                 
syms t                                 %������ű���
dvz=pi*r^2*(2/3*r*cos(t)-x0);          %��������
fdvz=inline(dvz);                      %ת��Ϊ���ߺ���
vz=quad(fdvz,t1,t2)                    %����ֵ����
dl=sqrt(r^2+diff(r)^2);                %����΢��
dsz=2*pi*(r*cos(t)-x0)*dl;             %��������
fdsz=inline(dsz);                      %ת��Ϊ���ߺ���
sz=quad(fdsz,t1,t2)                    %����ֵ����

fr=inline(r);                          %ת��Ϊ���ߺ���
t=linspace(t1,t2);                     %��������
p=linspace(0,2*pi);                    %Բ�ܽ�����
[T,P]=meshgrid(t,p);                   %���Ǻ�Բ�ܽ�������Ϊ����
X=(fr(T).*cos(T)-x0).*cos(P);          %���������
Y=(fr(T).*cos(T)-x0).*sin(P);          %���������
Z=fr(T).*sin(T);                       %���������
figure                                 %����ͼ�δ���
surf(X,Y,Z)                            %����ת��
if x0==0                               %���������
    title([tit,'�Ƹ�����ת����Χ������ͱ����'],'FontSize',20)%�ӱ���
    xlabel('\itx/a','FontSize',16)     %�Ӻ�����
    text(0,0,0,['\itV_z/a\rm^3=',num2str(vz),...
        ',\itS_z/a\rm^2=',num2str(sz)],'FontSize',16)%���ı�
else                                   %����
    title([tit,'��\itx\rm_0/\ita\rm=',num2str(x0),...
        '����ת����Χ������ͱ����'],'FontSize',20)%�ӱ���
    xlabel('\itX/a','FontSize',16)     %�Ӻ�����
    text(0,0,0,['\itV_Z/a\rm^3=',num2str(vz),...
        ',\itS_Z/a\rm^2=',num2str(sz)],'FontSize',16)%���ı�
end                                    %��������
ylabel('\ity/a','FontSize',16)         %��������
zlabel('\itz/a','FontSize',16)         %�Ӹ�����
grid on                                %������
axis equal                             %ʹ���������
alpha(0.5)                             %�����͸��
shading interp                         %Ⱦɫ
box on                                 %�ӿ�

x=fr(t).*cos(t)-x0;                    %����������
z=fr(t).*sin(t);                       %����������
rr=[x,x(end),x(1)];                    %���Ӽ���
oo=zeros(size(rr));                    %ȫ0����
hold on                                %��������
h=fill3(rr,oo,[z,0,0],'y');            %����
pause                                  %��ͣ
for i=1:length(p)                      %��Բ�ܽ�ѭ��
    pp=p(i);                           %ȡԲ�ܽ�
    xx=rr*cos(pp);                     %��ת������
    yy=rr*sin(pp);                     %��ת������
    set(h,'XData',xx,'YData',yy)       %��������
    drawnow                            %ˢ����Ļ
end                                    %����ѭ��
%����ͼ��
% x=fr(t).*cos(t);                       %����������
% y=fr(t).*sin(t);                       %����������
% o=zeros(size(t));                      %ȫ0����
% hold on                                %��������
% fill3(x-x0,o,y,'b')                    %����

%�������.��Ⱥ�����
