%�α����������������֮���ƽ���ƺ�����ת������ͱ�����ĺ����ļ�
function fun(x,z,z0,t1,t2,tit)
z=z-z0;                                %������ƽ��
dx=diff(x);                            %x��t�ķ��ŵ���
dvx=pi*(z0^2-z^2)*dx;                  %��X����ת�ı�Բ�����
vx=int(dvx,t1,t2)                      %��X����ת������
vx=abs(double(vx));                    %�����Ż�����ֵ
dz=diff(z);                            %z��t�ķ��ŵ���
dl=sqrt(dx^2+dz^2);                    %����΢��
dsx=2*pi*z*dl;                         %��X��ת�Ļ����΢��
fdsx=inline(dsx);                      %ת��Ϊ���ߺ���
sx=abs(quad(fdsx,t1,t2))               %����X����ת��ı����

fx=inline(x);                          %���ź�����ת��Ϊ���ߺ���
fz=inline(z);                          %����������ת��Ϊ���ߺ���
t=linspace(t1,t2);                     %�α�������
p=linspace(0,2*pi,101);                %Oyzƽ��Բ�ܽ�����
[P,T]=meshgrid(p,t);                   %����������Ϊ����
X=fz(T).*cos(P);                       %���������
Y=fz(T).*sin(P);                       %���������
Z=fx(T);                               %���������
figure                                 %����ͼ�δ���
surf(Z,Y,X+z0)                         %����ת��
fs=24;                                 %�����С
if z0==0                               %�����ת������������0
    title([tit,'�ƺ�����ת������'],'FontSize',fs)%�ӱ���
    text(0,0,z0,['\itV_x/a\rm^3=',num2str(vx),...
        ',\itS_x/a\rm^2=',num2str(sx)],'FontSize',16)%���ı�
else                                   %����
    title([tit,'��\itz\rm_0/\ita\rm=',num2str(z0),'����ת������'],...
        'FontSize',fs)                 %�ӱ���
    text(0,0,z0,['\itV_X/a\rm^3=',num2str(vx),...
        ',\itS_X/a\rm^2=',num2str(sx)],'FontSize',16)%���ı�
end                                    %��������
xlabel('\itx/a','FontSize',fs)         %�Ӻ�����
ylabel('\ity/a','FontSize',fs)         %��������
zlabel('\itz/a','FontSize',fs)         %��������
grid on                                %������
axis equal                             %ʹ���������
shading interp                         %Ⱦɫ
alpha(0.5)                             %�����͸��
box on                                 %�ӿ�
x=fx(t);                               %����������
z=fz(t);                               %����������
rr=[x,x(end),x(1)];                    %���Ӽ���
oo=zeros(size(rr));                    %ȫ0����
hold on                                %��������
h=fill3(rr,oo,[z,z(end),z(1)]+z0,'y'); %����
pause                                  %��ͣ
for i=1:length(p)                      %��Բ�ܽ�ѭ��
    t=p(i);                            %ȡԲ�ܽ�
    zz=[z,z(end),z(1)]*cos(t)+z0;      %��ת������
    yy=[z,z(end),z(1)]*sin(t);         %��ת������
    set(h,'YData',yy,'ZData',zz)       %��������
    drawnow                            %ˢ����Ļ
end                                    %����ѭ��

%�������.��Ⱥ�����
