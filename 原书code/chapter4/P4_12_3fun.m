%����f�Ĳ������ֵĺ����ļ�
function fun(f)
syms x positive                        %������ű���
yc={1/f,1/f^3,x/f,x/f^3,x^2/f,x^2/f^3,1/x/f,...
    1/x^2/f,f,f^3,x*f,x^2*f,f/x,f/x^2};%��������ԭ��
for i=1:length(yc)                     %��ԭ��ѭ��
    i                                  %��ʾ���
    y=yc{i}                            %ȡ��������
    s=int(y)                           %����
end                                    %����ѭ��

%�������.��Ⱥ�����
