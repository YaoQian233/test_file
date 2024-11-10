
--1.1
--标识符
--字母/数字/下划线组成，但不能以数字开头
--下划线+大写字母通常被用作特殊用途，如_VRESION
--下划线+小写字母通常被用作哑变量（Dummy Variable）
--lua对大小写敏感

--[[
--保留字
and break do else elseif
end false goto for function
if in local nil not
or repeat return then true 
until while
--]]

--1.2
---[[
--三个-即可取消注释
--]]


--1.3
--[[
以下等价
a = b
b = a * 2


a = 1;
b = a * 2

a = 1; b = a * 2

a = 1 b = a * 2
--]]


--1.4
--全局变量（Global Variable）无需声明即可使用
--未初始化时，全局变量的结果为nil
--把nil赋值给全局变量时，lua语言会回收该变量占用的内存

--1.5
--Lua是动态类型语言
--[[
nil     >>   type(nil)  --> nil
boolean  >> type(ture)  --boolean
userdata  >> type(io.std)  --userdata
function  >> type(print)
thread   >> type(type) --thread
table   >> type({})
number
string
--]]



--1.6
--逻辑运算符
--[[
短路求值原则，只在必要时对第第二个操作数进行运算
and  第一个操作数false时返回第一个操作数
or   第一个操作数为true时返回第一个操作数
not  永远返回Boolean类型的值，如not nil >> true
--]]
--[[
惯用写法
x = x or v 等价于 if not x then x = v end
即当X未被初始化时，将其默认值设为v

a and b or c,当b不为false时等价于C语言的三目运算符a?b:c

注: 
(x>y) and x or y  >>可选出数值X和Y中较大的一个     
--]]


