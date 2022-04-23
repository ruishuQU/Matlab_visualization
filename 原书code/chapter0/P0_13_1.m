%乘法口诀表和程序的双重循环结构
clear                                  %清除变量
display('乘法口诀表')                  %显示表头
for i=1:9                              %按行循环
    s=[];                              %变量清空
    for j=1:i                          %按列循环
        s=[s,num2str(j),'x',num2str(i),'=',num2str(j*i),'  '];%连接口诀
    end                                %结束内循环
    disp(s)                            %显示一行口诀
%    display(s)                         %显示一行口诀(会显示变量)
end                                    %结束外循环

%程序结束.周群益设计
