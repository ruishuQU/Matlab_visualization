%���εĻ���
clear                                  %�������
a=input('��������ε�a��:');           %��������a�ߵı߳�
b=input('��������ε�b��:');           %��������b�ߵı߳�
% a=4;                                   %a�ߵĲο�ֵ
% b=3;                                   %b�ߵĲο�ֵ
% b=4;                                   %b�ߵĲο�ֵ
x=[1,-1,-1,1,1]*a/2;                   %���ζ��������
y=[1,1,-1,-1,1]*b/2;                   %���ζ���������
figure                                 %����ͼ�δ���
plot(x,y,'LineWidth',2)                %������ͼ
xlabel('\itx','FontSize',16)           %�Ӻ�����
ylabel('\ity','FontSize',16)           %��������
if a==b                                %����������
    title(['������(\ita\rm=',num2str(a),')'],'FontSize',16)%�ӱ���
else                                   %����
    title(['������(\ita\rm=',num2str(a),...
        ',\itb\rm=',num2str(b),')'],'FontSize',16)%�ӱ���
end                                    %��������
% title(['������(\ita\rm=',num2str(a),...
%     ',\itb\rm=',num2str(b),')'],'FontSize',16)%�ӱ���
% if a==b                                %����������
%     title(['������(\ita\rm=',num2str(a),')'],'FontSize',16)%�޸ı���
% end                                    %��������
grid on                                %������
axis equal                             %ʹ���������
s=a*b;                                 %�������
l=2*(a+b);                             %�����ܳ�
text(0,0,['\itL\rm=',num2str(l),',\itS\rm=',num2str(s)],...
    'FontSize',16)                     %����ܳ������

%�������.��Ⱥ�����
