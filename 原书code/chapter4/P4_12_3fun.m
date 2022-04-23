%含有f的不定积分的函数文件
function fun(f)
syms x positive                        %定义符号变量
yc={1/f,1/f^3,x/f,x/f^3,x^2/f,x^2/f^3,1/x/f,...
    1/x^2/f,f,f^3,x*f,x^2*f,f/x,f/x^2};%被积函数原胞
for i=1:length(yc)                     %按原胞循环
    i                                  %显示编号
    y=yc{i}                            %取被积函数
    s=int(y)                           %积分
end                                    %结束循环

%程序结束.周群益设计
