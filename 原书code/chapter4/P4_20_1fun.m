%�����������Ƽ�����ת����Χ������ͱ�����ĺ����ļ�
function fun(r,tm,tit)                 
syms t                                 %������ű���
dvr=2*pi/3*r^3*sin(t);                 %��������
vr=int(dvr,0,tm)                       %����r����ת�����
vr=double(vr)                          %�����Ż�����ֵ
dl=sqrt(r^2+diff(r)^2);                %����΢��
dsr=2*pi*r*sin(t)*dl;                  %��������
sr=int(dsr,0,tm)                       %����r����ת�ı����
sr=double(sr)                          %�����Ż�����ֵ

fr=inline(r);                          %ת��Ϊ���ߺ���
t=linspace(-tm,tm);                    %Oxz��������
p=linspace(0,2*pi,101);                %OyzԲ�ܽ�����
[T,P]=meshgrid(t,p);                   %���Ǻ�Բ�ܽ�������Ϊ����
X=fr(T).*sin(T).*cos(P);               %���������
Y=fr(T).*sin(T).*sin(P);               %���������
Z=fr(T).*cos(T);                       %���������
figure                                 %����ͼ�δ���
surf(Z,Y,X)                            %����ת��
title([tit,'�Ƽ�����ת������'],'FontSize',24)%�ӱ���
xlabel('\itx/a','FontSize',16)         %�Ӻ�����
ylabel('\ity/a','FontSize',16)         %��������
zlabel('\itz/a','FontSize',16)         %�Ӹ�����
grid on                                %������
axis equal                             %ʹ���������
alpha(0.5)                             %�����͸��
shading interp                         %Ⱦɫ
box on                                 %�ӿ�
text(0,0,0,['\itV_r/a\rm^3=',num2str(vr),...
    ',\itS_r/a\rm^2=',num2str(sr)],'FontSize',16)%���ı�
rr=fr(t);                              %����
x=rr.*cos(t);                          %����������
z=rr.*sin(t);                          %����������
oo=zeros(size(rr));                    %ȫ0����
hold on                                %��������
h=fill3(x,oo,z,'y');                   %����
pause                                  %��ͣ
for i=1:length(p)                      %��Բ�ܽ�ѭ��
    t=p(i);                            %ȡԲ�ܽ�
    zz=z*cos(t);                       %��ת������
    yy=z*sin(t);                       %��ת������
    set(h,'YData',yy,'ZData',zz)       %��������
    drawnow                            %ˢ����Ļ
end                                    %����ѭ��

%�������.��Ⱥ�����
