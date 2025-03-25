#!/bin/lua
y,n,t,l,m,i,x=io.write,arg[1]or"untitled.txt",{},1,1,0,table.concat
y("MTEd v1.0\t\t"..n.."\n")
h=io.open(n,"a+")
h:seek("set",0)
z=1
for v in h:read("*a"):gmatch"([^\n]+)\n?"do
t[z]=v
z=z+1
end
h:close()
while""do
y(m and l or"?",">")
i=io.read()
if i=="\27"then
m=not m
elseif m then
t[l]=i
l=l+1
else
if i=="q"then
break
elseif i=="s"then
h=io.open(n,"w")
h:write(x(t,"\n"))
h:close()
elseif i=="d"then
y("\t",x(t,"\n\t"),"\nline ",l,"/",#t,"\n")
else
l=0+i or l
end
end
end
