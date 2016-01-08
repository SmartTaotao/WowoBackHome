print("hello lua!");

--全局变量不需要声明
i = 1
print(i)

--没有初始化的全局变量是会输出nil
print(j)

--如果你想删除一个全局变量，只需要将变量付志伟nil
a = nil
print(a)

-- 不要以_G _L _F 因为lua的一些保留字也是这样命名的
--[[
~~~~~~~~~~~~~~~~~~~lua类中的数据类型~~~~~~~~~~~~~~~~~~~~
number  string  function  nil  userdata  boolean  table  thread
--]]

num = 1
print(type(num)) --number
str1 = "mama"
print(type(str1))--string
str2 = true
print(type(str2)) --boolean  除了nil和false为假 其他都为真
str3 = nil0
print(type(str3)) --nil
print(type(print)) --function   print是个函数
print(type(_G)) -- table(表)

--函数
a = "one string"
-- 把要替换掉得放前面，换掉的字符串换到后面
b = string.gsub(a, "one", "other") 
print(b)

--print("hello lua");
--str='taotao';
--print(type(str));
--print(type(i));
--print(type(true));
--print(type(print));
--print(type(_G));//table 表
--函数

a="one string"
b=string.gsub(a,"one","another")
print(a)
print(b)
--+不在是链接字符串的符号， ..才是
print("10"..1);
print("10"+1);
print("taotao"..10);
print(10 ..1);--对于前面有数字的需要在..前加空格
print("1"..2 ..3);

--[[
line=io.read()--io.read 表示等待用户输入
n=tonumber(line)--视图将line装换为number类型
if n==nil then error(line.."is not a valid number");
else
	print("this value is"..n)
end
--]]

print("taotao ya");
print(10 ..""=="10");--??


a=1
b=false
--print(a and b)--b,and 是直到找到false为止 否则返回最后一个操作数
--print(a or b)--a or直到找到ture为止，否则返回最后一个操作数
c=3
print((a and b) or c)--b and优先级高于or  --a?b:c<a=true b=false 不符合这个条件>

x=100
m,n=10,2*x
print("m= "..m)
print("n="..n)
m,n,z=10,2*x
print(c);
m,n=10,2*x,100--多出的100自动忽略

local j = 199 ---j只能在本文件中访问
print(j)

if j==199 then print("j is 199")
else  print("j is not 199")
end

for i=1,10,2 do  --第一个参数表示控制量 第二个参数表示条件 第三个参数表示步进
	print(i)
end

---函数
--定义函数的一般格式
--[[
function methodName(args)
	-- body
end
--]]

--匿名函数
methodName=function(args)
end

--]]
function testMethod(name)
	print("testMethod   "..name)
end

testMethod("taotao")


testMethod1=function(name)
	print("testMethod1   "..name[2])
end
testMethod1({"taotao","xiaotaotao"})


--带返回值的函数
function func (args)
	print("hellp");
	return args[1],args[2]--返回值可以有多个
end

local var1,var2=func({"one","two"})
print(var1,var2); 
	
--TableL
--表用来模拟数组的时候，元素的下标是从1开始
days={"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"};
days[1]=nil;--“删除”第一个元素
print(days[1]);

--不以下标开始？？？？？？？？？？？？？？？？？？？？？？
a={x=0,5,3,y=1,2}
print(a.x)
print(a["x"]);--a.某字符＝a["某字符"]
--lua中table中元素没有指定key。那么就以下标形式作为标识，当出现第一个没有key的元素。
--其下标就为一，以此类推，第n个没有key的元素，那么他的下标就是n
print("~~!!!"..a[3])


--表的遍历，
print("------------------")--先遍历带下标的，在遍历带key的元素
for k,v in pairs(a) do  --pairs两种迭代器
	print(k,v)
end

print("----------------")--只遍历带下标的，只遍历不带key的元素，
for i,v in ipairs(a) do
	print(i,v)
end

arr={1000,k=12}
for i=1,100 do
	table.insert(arr,1,i)--第一个参数代表插入元素的表，第二个参数代表插入位置，第三个参数
	     --代表插入的值
end

print("~~~~~~")
for k,v in pairs(arr) do--
	print(k,v)
end


--table.remove(arr,1);


--[[

--删除精灵。两个for
for k,v in pairs(table_name) do
	print(k,v)
end
]]


print(table.maxn(arr))--最大的下标值
print("---"..#arr)--＃表名，返回一个表的不带key的元素个数

--＃在lua中意义
--#取表长，在缓存中读取数据

-- 如何获取一个表的所有元素，包括表中表

print("**********")


l=10
print(l)




