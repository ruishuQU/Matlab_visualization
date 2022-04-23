%����˫Ŧ����z=x���z=-x����ת������ͱ�����ĺ����ļ�
function fun(t0)                 
tm=pi/4;                               %��Ҷ�����Ƕ�
syms t                                 %������ű���
r=sqrt(cos(2*t));                      %����˫Ŧ�߷��ż���
dvzx=2*pi/3*r^3*sin(tm-t);             %��������
fdvzx=inline(dvzx);                    %ת��Ϊ���ߺ���
vzx=2*quad(fdvzx,-tm,tm)               %����z=x����ת�����
dl=sqrt(r^2+diff(r)^2);                %����΢��
dszx=2*pi*r*sin(tm-t)*dl;              %��������
fdszx=inline(dszx);                    %ת��Ϊ���ߺ���
szx=2*quad(fdszx,-tm,tm)               %����z=x����ת�ı����
%----------------------------------------------------------
fr=inline(r);                          %ת��Ϊ���ߺ���
rr=subs(r,'t',sym(t0)-t)               %��ת�ļ���ʹ��ת��Ϊx��
frr=inline(rr)                         %ת��Ϊ���ߺ���
t=linspace(0,2*t0);                    %oxzƽ�漫������
p=linspace(0,2*pi);                    %Բ�ܽ�����
[T,P]=meshgrid(t,p);                   %����������Ϊ����
X=frr(T).*sin(T).*cos(P);              %���������
Y=frr(T).*sin(T).*sin(P);              %���������
Z=frr(T).*cos(T);                      %���������
XX=X*cos(t0)+Z*sin(t0);                %��ʱ����ת�ĺ�����
ZZ=-X*sin(t0)+Z*cos(t0);               %��ʱ����ת��������
figure                                 %����ͼ�δ���
surf(ZZ,Y,XX)                          %����ת��
hold on                                %��������
surf(-ZZ,Y,-XX)                        %����ת��
fs=20;                                 %�����С
if t0>0                                %�����ĽǶȴ���0
    title('˫Ŧ����\it\theta\rm_0=\pi/4����ת������ͱ����',...
        'FontSize',fs)                 %�ӱ���
    text(-1,0,-1,['\itV_z_=_x/a\rm^3=',num2str(vzx),...
        ',\itS_z_=_x/a\rm^2=',num2str(szx)],'FontSize',fs)%���ı�
else                                   %����
    title('˫Ŧ����\it\theta\rm_0=-\pi/4����ת������ͱ����',...
        'FontSize',fs)                 %�ӱ���
    text(-1,0,-1,['\itV_z_=_-_x/a\rm^3=',num2str(vzx),...
        ',\itS_z_=_-_x/a\rm^2=',num2str(szx)],'FontSize',fs)%���ı�
end                                    %��������
xlabel('\itx/a','FontSize',fs)         %�Ӻ�����
ylabel('\ity/a','FontSize',fs)         %��������
zlabel('\itz/a','FontSize',fs)         %�Ӹ�����
grid on                                %������
axis equal                             %ʹ���������
alpha(0.5)                             %�����͸��
shading interp                         %Ⱦɫ
box on                                 %�ӿ�
plot3([-1,1]*sign(t0),[0,0],[-1,1],'--','LineWidth',2)%����ת��
x=frr(t).*sin(t);                      %����������
z=frr(t).*cos(t);                      %����������
xx=x*cos(t0)+z*sin(t0);                %��ʱ����ת�ĺ�����
zz=-x*sin(t0)+z*cos(t0);               %��ʱ����ת��������
o=zeros(size(t));                      %ȫ0����
h1=fill3(xx,o,zz,'b');                 %����
h2=fill3(-xx,o,zz,'b');                %����
pause                                  %��ͣ
for i=1:length(p)                      %��Բ�ܽ�ѭ��
    pp=p(i);                           %ȡԲ�ܽ�
    x=frr(t).*sin(t).*cos(pp);         %����������
    yy=frr(t).*sin(t).*sin(pp);        %����������
    z=frr(t).*cos(t);                  %����������
    xx=x*cos(t0)+z*sin(t0);            %��ʱ����ת�ĺ�����
    zz=-x*sin(t0)+z*cos(t0);           %��ʱ����ת��������
    set(h1,'XData',xx,'YData',yy,'ZData',zz)%��������
    set(h2,'XData',-xx,'YData',-yy,'ZData',-zz)%��������
    drawnow                            %ˢ����Ļ
end                                    %����ѭ��
%����ͼ��
% t=linspace(-tm,tm);                    %oxzƽ�漫������
% x=fr(t).*cos(t);                       %����������
% z=fr(t).*sin(t);                       %����������
% o=zeros(size(t));                      %ȫ0����
% fill3(x,o,z,'b')                       %����
% fill3(-x,o,z,'b')                      %����
% plot3([-1,1],[0,0],[-1,1],'--','LineWidth',2)%����ת��

%�������.��Ⱥ�����
