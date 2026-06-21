local a=game:GetService"UserInputService"
local b=game:GetService"TweenService"
local c=game:GetService"Players".LocalPlayer
local d=c:GetMouse()
local e=c.PlayerGui
local function MakeDraggable(f,g)
local function CustomPos(h,i)
local j
local k
local l
local m

local function UpdatePos(n)
local o=n.Position-l
local p=UDim2.new(m.X.Scale,m.X.Offset+o.X,m.Y.Scale,m.Y.Offset+o.Y)
local q=b:Create(i,TweenInfo.new(0.2),{Position=p})
q:Play()
end

h.InputBegan:Connect(function(n)
if n.UserInputType==Enum.UserInputType.MouseButton1 or n.UserInputType==Enum.UserInputType.Touch then
j=true
l=n.Position
m=i.Position

n.Changed:Connect(function()
if n.UserInputState==Enum.UserInputState.End then
j=false
end
end)
end
end)

h.InputChanged:Connect(function(n)
if n.UserInputType==Enum.UserInputType.MouseMovement or n.UserInputType==Enum.UserInputType.Touch then
k=n
end
end)

a.InputChanged:Connect(function(n)
if n==k and j then
UpdatePos(n)
end
end)
end
local function CustomSize(h)
local i=false
local j
local k
local l
local m=h.Size.X.Offset
if m<400 then
m=400
end
local n=h.Size.Y.Offset-50
local o=Instance.new"Frame";

o.AnchorPoint=Vector2.new(1,1)
o.BackgroundColor3=Color3.fromRGB(255,255,255)
o.BackgroundTransparency=0.9990000128746033
o.BorderColor3=Color3.fromRGB(0,0,0)
o.BorderSizePixel=0
o.Position=UDim2.new(1,20,1,20)
o.Size=UDim2.new(0,40,0,40)
o.Name="changesizeobject"
o.Parent=h

local function UpdateSize(p)
local q=p.Position-k
local r=l.X.Offset+q.X
local s=l.Y.Offset+q.Y
r=math.max(r,m)
s=math.max(s,n)
local t=b:Create(h,TweenInfo.new(0.2),{Size=UDim2.new(0,r,0,s)})
t:Play()
end

o.InputBegan:Connect(function(p)
if p.UserInputType==Enum.UserInputType.MouseButton1 or p.UserInputType==Enum.UserInputType.Touch then
i=true
k=p.Position
l=h.Size
p.Changed:Connect(function()
if p.UserInputState==Enum.UserInputState.End then
i=false
end
end)
end
end)

o.InputChanged:Connect(function(p)
if p.UserInputType==Enum.UserInputType.MouseMovement or p.UserInputType==Enum.UserInputType.Touch then
j=p
end
end)

a.InputChanged:Connect(function(p)
if p==j and i then
UpdateSize(p)
end
end)
end
CustomSize(g)
CustomPos(f,g)
end
function CircleClick(f,g,h)
spawn(function()
f.ClipsDescendants=true
local i=Instance.new"ImageLabel"
i.Image="rbxassetid://266543268"
i.ImageColor3=Color3.fromRGB(80,80,80)
i.ImageTransparency=0.8999999761581421
i.BackgroundColor3=Color3.fromRGB(255,255,255)
i.BackgroundTransparency=1
i.ZIndex=10
i.Name="Circle"
i.Parent=f

local j=g-i.AbsolutePosition.X
local k=h-i.AbsolutePosition.Y
i.Position=UDim2.new(0,j,0,k)
local l=0
if f.AbsoluteSize.X>f.AbsoluteSize.Y then
l=f.AbsoluteSize.X*1.5
elseif f.AbsoluteSize.X<f.AbsoluteSize.Y then
l=f.AbsoluteSize.Y*1.5
elseif f.AbsoluteSize.X==f.AbsoluteSize.Y then
l=f.AbsoluteSize.X*1.5
end

local m=0.5
i:TweenSizeAndPosition(UDim2.new(0,l,0,l),UDim2.new(0.5,-l/2,0.5,-l/2),"Out","Quad",m,false,nil)
for n=1,10 do
i.ImageTransparency=i.ImageTransparency+0.01
wait(m/10)
end
i:Destroy()
end)
end

local f={}
function f.MakeNotify(g,h)
local i=h or{}
i.Title=i.Title or"Night Hub"
i.Description=i.Description or"Notification"
i.Content=i.Content or""
i.Color=i.Color or Color3.fromRGB(255,255,255)
i.Time=i.Time or 0.5
i.Delay=i.Delay or 5
local j={}
spawn(function()
if not e:FindFirstChild"NotifyGui"then
local k=Instance.new"ScreenGui";
k.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
k.Name="NotifyGui"
k.Parent=e
end
if not e.NotifyGui:FindFirstChild"NotifyLayout"then
local k=Instance.new"Frame";
k.AnchorPoint=Vector2.new(1,1)
k.BackgroundColor3=Color3.fromRGB(255,255,255)
k.BackgroundTransparency=0.9990000128746033
k.BorderColor3=Color3.fromRGB(0,0,0)
k.BorderSizePixel=0
k.Position=UDim2.new(1,-30,1,-30)
k.Size=UDim2.new(0,320,1,0)
k.Name="NotifyLayout"
k.Parent=e.NotifyGui
local l=0
e.NotifyGui.NotifyLayout.ChildRemoved:Connect(function()
l=0
for m,n in e.NotifyGui.NotifyLayout:GetChildren()do
b:Create(
n,
TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,0,1,-((n.Size.Y.Offset+12)*l))}
):Play()
l=l+1
end
end)
end
local k=0
for l,m in e.NotifyGui.NotifyLayout:GetChildren()do
k=-(m.Position.Y.Offset)+m.Size.Y.Offset+12
end
local l=Instance.new"Frame";
local m=Instance.new"Frame";
local n=Instance.new"UICorner";
local o=Instance.new"Frame";
local p=Instance.new"ImageLabel";
local q=Instance.new"Frame";
local r=Instance.new"TextLabel";
local s=Instance.new"UIStroke";
local t=Instance.new"UICorner";
local u=Instance.new"TextLabel";
local v=Instance.new"UIStroke";
local w=Instance.new"TextButton";
local x=Instance.new"ImageLabel";
local y=Instance.new"TextLabel";

l.BackgroundColor3=Color3.fromRGB(0,0,0)
l.BorderColor3=Color3.fromRGB(0,0,0)
l.BorderSizePixel=0
l.Size=UDim2.new(1,0,0,150)
l.Name="NotifyFrame"
l.BackgroundTransparency=1
l.Parent=e.NotifyGui.NotifyLayout
l.AnchorPoint=Vector2.new(0,1)
l.Position=UDim2.new(0,0,1,-(k))

m.BackgroundColor3=Color3.fromRGB(0,0,0)
m.BorderColor3=Color3.fromRGB(0,0,0)
m.BorderSizePixel=0
m.Position=UDim2.new(0,400,0,0)
m.Size=UDim2.new(1,0,1,0)
m.Name="NotifyFrameReal"
m.Parent=l

n.Parent=m
n.CornerRadius=UDim.new(0,8)

o.BackgroundTransparency=1
o.BorderSizePixel=0
o.Size=UDim2.new(1,0,1,0)
o.ZIndex=0
o.Name="DropShadowHolder"
o.Parent=m

p.Image="rbxassetid://6015897843"
p.ImageColor3=Color3.fromRGB(0,0,0)
p.ImageTransparency=0.5
p.ScaleType=Enum.ScaleType.Slice
p.SliceCenter=Rect.new(49,49,450,450)
p.AnchorPoint=Vector2.new(0.5,0.5)
p.BackgroundTransparency=1
p.BorderSizePixel=0
p.Position=UDim2.new(0.5,0,0.5,0)
p.Size=UDim2.new(1,47,1,47)
p.ZIndex=0
p.Name="DropShadow"
p.Parent=o

q.BackgroundColor3=Color3.fromRGB(0,0,0)
q.BackgroundTransparency=0.9990000128746033
q.BorderColor3=Color3.fromRGB(0,0,0)
q.BorderSizePixel=0
q.Size=UDim2.new(1,0,0,36)
q.Name="Top"
q.Parent=m

r.Font=Enum.Font.GothamBold
r.Text=i.Title
r.TextColor3=Color3.fromRGB(255,255,255)
r.TextSize=14
r.TextXAlignment=Enum.TextXAlignment.Left
r.BackgroundColor3=Color3.fromRGB(255,255,255)
r.BackgroundTransparency=0.9990000128746033
r.BorderColor3=Color3.fromRGB(0,0,0)
r.BorderSizePixel=0
r.Size=UDim2.new(1,0,1,0)
r.Parent=q
r.Position=UDim2.new(0,10,0,0)

s.Color=Color3.fromRGB(255,255,255)
s.Thickness=0.30000001192092896
s.Parent=r

t.Parent=q
t.CornerRadius=UDim.new(0,5)

u.Font=Enum.Font.GothamBold
u.Text=i.Description
u.TextColor3=i.Color
u.TextSize=14
u.TextXAlignment=Enum.TextXAlignment.Left
u.BackgroundColor3=Color3.fromRGB(255,255,255)
u.BackgroundTransparency=0.9990000128746033
u.BorderColor3=Color3.fromRGB(0,0,0)
u.BorderSizePixel=0
u.Size=UDim2.new(1,0,1,0)
u.Position=UDim2.new(0,r.TextBounds.X+15,0,0)
u.Parent=q

v.Color=i.Color
v.Thickness=0.4000000059604645
v.Parent=u

w.Font=Enum.Font.SourceSans
w.Text=""
w.TextColor3=Color3.fromRGB(0,0,0)
w.TextSize=14
w.AnchorPoint=Vector2.new(1,0.5)
w.BackgroundColor3=Color3.fromRGB(255,255,255)
w.BackgroundTransparency=0.9990000128746033
w.BorderColor3=Color3.fromRGB(0,0,0)
w.BorderSizePixel=0
w.Position=UDim2.new(1,-5,0.5,0)
w.Size=UDim2.new(0,25,0,25)
w.Name="Close"
w.Parent=q

x.Image="rbxassetid://9886659671"
x.AnchorPoint=Vector2.new(0.5,0.5)
x.BackgroundColor3=Color3.fromRGB(255,255,255)
x.BackgroundTransparency=0.9990000128746033
x.BorderColor3=Color3.fromRGB(0,0,0)
x.BorderSizePixel=0
x.Position=UDim2.new(0.49000001,0,0.5,0)
x.Size=UDim2.new(1,-8,1,-8)
x.Parent=w

y.Font=Enum.Font.GothamBold
y.TextColor3=Color3.fromRGB(255,255,255)
y.TextSize=13
y.Text=i.Content
y.TextXAlignment=Enum.TextXAlignment.Left
y.TextYAlignment=Enum.TextYAlignment.Top
y.BackgroundColor3=Color3.fromRGB(255,255,255)
y.BackgroundTransparency=0.9990000128746033
y.TextColor3=Color3.fromRGB(150.0000062584877,150.0000062584877,150.0000062584877)
y.BorderColor3=Color3.fromRGB(0,0,0)
y.BorderSizePixel=0
y.Position=UDim2.new(0,10,0,27)
y.Parent=m
y.Size=UDim2.new(1,-20,0,13)

y.Size=UDim2.new(1,-20,0,13+(13*(y.TextBounds.X//y.AbsoluteSize.X)))
y.TextWrapped=true

if y.AbsoluteSize.Y<27 then
l.Size=UDim2.new(1,0,0,65)
else
l.Size=UDim2.new(1,0,0,y.AbsoluteSize.Y+40)
end
local z=false
function j.Close(A)
if z then
return false
end
z=true
b:Create(
m,
TweenInfo.new(tonumber(i.Time),Enum.EasingStyle.Back,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,400,0,0)}
):Play()
task.wait(tonumber(i.Time)/1.2)
l:Destroy()
end
w.Activated:Connect(function()
j:Close()
end)
b:Create(
m,
TweenInfo.new(tonumber(i.Time),Enum.EasingStyle.Back,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,0,0,0)}
):Play()
task.wait(tonumber(i.Delay))
j:Close()
end)
return j
end
function f.CreateWindow(g,h)
local i=h or{}
i.NameHub=i.NameHub or"Night Hub"
i.Description=i.Description or"by @luongminhnghia_"
i["Logo Player"]=i["Logo Player"]or"https://www.roblox.com/headshot-thumbnail/image?userId="..game:GetService"Players".LocalPlayer.UserId.."&width=420&height=420&format=png"
i["Name Player"]=i["Name Player"]or tostring(game:GetService"Players".LocalPlayer.Name)
i["Tab Width"]=i["Tab Width"]or 120
i.Scale=i.Scale or UDim2.fromOffset(550,400)
local j={}

local k=Instance.new"ScreenGui";
local l=Instance.new"Frame";
local m=Instance.new"ImageLabel";
local n=Instance.new"Frame";
local o=Instance.new"UICorner";
local p=Instance.new"UIStroke";
local q=Instance.new"Frame";
local r=Instance.new"TextLabel";
local s=Instance.new"UICorner";
local t=Instance.new"TextLabel";
local u=Instance.new"TextButton";
local v=Instance.new"ImageLabel";
local w=Instance.new"TextButton";
local x=Instance.new"ImageLabel";
local y=Instance.new"TextButton";
local z=Instance.new"ImageLabel";
local A=Instance.new"Frame";
local B=Instance.new"UICorner";
local C=Instance.new"Frame";
Instance.new"UIStroke";
local D=Instance.new"Frame";
local E=Instance.new"UICorner";
local F=Instance.new"TextLabel";
local G=Instance.new"Frame";
local H=Instance.new"Folder";
local I=Instance.new"UIPageLayout";

k.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
k.Name="NightGui"
k.Parent=e

l.BackgroundTransparency=1
l.BorderSizePixel=0
l.Size=UDim2.fromOffset(i.Scale.X.Offset+47,i.Scale.Y.Offset+47)
l.ZIndex=0
l.Name="DropShadowHolder"
l.Parent=k
l.Position=UDim2.new(0,(k.AbsoluteSize.X//2-l.Size.X.Offset//2),0,(k.AbsoluteSize.Y//2-l.Size.Y.Offset//2))

m.Image="rbxassetid://6015897843"
m.ImageColor3=Color3.fromRGB(15,15,15)
m.ImageTransparency=0.5
m.ScaleType=Enum.ScaleType.Slice
m.SliceCenter=Rect.new(49,49,450,450)
m.AnchorPoint=Vector2.new(0.5,0.5)
m.BackgroundTransparency=1
m.BorderSizePixel=0
m.Position=UDim2.new(0.5,0,0.5,0)
m.Size=UDim2.new(1,47,1,47)
m.ZIndex=0
m.Name="DropShadow"
m.Parent=l

n.AnchorPoint=Vector2.new(0.5,0.5)
n.BackgroundColor3=Color3.fromRGB(15,15,15)
n.BackgroundTransparency=0.1
n.BorderColor3=Color3.fromRGB(0,0,0)
n.BorderSizePixel=0
n.Position=UDim2.new(0.5,0,0.5,0)
n.Size=UDim2.new(1,-47,1,-47)
n.Name="Main"
n.Parent=m

o.Parent=n

p.Color=Color3.fromRGB(50,50,50)
p.Thickness=1.600000023841858
p.Parent=n

q.BackgroundColor3=Color3.fromRGB(0,0,0)
q.BackgroundTransparency=0.9990000128746033
q.BorderColor3=Color3.fromRGB(0,0,0)
q.BorderSizePixel=0
q.Size=UDim2.new(1,0,0,38)
q.Name="Top"
q.Parent=n

r.Font=Enum.Font.GothamBold
r.Text=i.NameHub
r.TextColor3=Color3.fromRGB(255,255,255)
r.TextSize=14
r.TextXAlignment=Enum.TextXAlignment.Left
r.BackgroundColor3=Color3.fromRGB(255,255,255)
r.BackgroundTransparency=0.9990000128746033
r.BorderColor3=Color3.fromRGB(0,0,0)
r.BorderSizePixel=0
r.Size=UDim2.new(1,-100,1,0)
r.Position=UDim2.new(0,10,0,0)
r.Parent=q

s.Parent=q

t.Font=Enum.Font.GothamBold
t.Text=i.Description
t.TextColor3=Color3.fromRGB(255,255,255)
t.TextSize=14
t.TextXAlignment=Enum.TextXAlignment.Left
t.BackgroundColor3=Color3.fromRGB(255,255,255)
t.BackgroundTransparency=0.9990000128746033
t.BorderColor3=Color3.fromRGB(0,0,0)
t.BorderSizePixel=0
t.Size=UDim2.new(1,-(r.TextBounds.X+104),1,0)
t.Position=UDim2.new(0,r.TextBounds.X+15,0,0)
t.Parent=q
t.TextTransparency=0.5

u.Font=Enum.Font.SourceSans
u.Text=""
u.TextColor3=Color3.fromRGB(0,0,0)
u.TextSize=14
u.AnchorPoint=Vector2.new(1,0.5)
u.BackgroundColor3=Color3.fromRGB(255,255,255)
u.BackgroundTransparency=0.9990000128746033
u.BorderColor3=Color3.fromRGB(0,0,0)
u.BorderSizePixel=0
u.Position=UDim2.new(1,-42,0.5,0)
u.Size=UDim2.new(0,25,0,25)
u.Name="MaxRestore"
u.Parent=q

v.Image="rbxassetid://9886659406"
v.AnchorPoint=Vector2.new(0.5,0.5)
v.BackgroundColor3=Color3.fromRGB(255,255,255)
v.BackgroundTransparency=0.9990000128746033
v.BorderColor3=Color3.fromRGB(0,0,0)
v.BorderSizePixel=0
v.Position=UDim2.new(0.5,0,0.5,0)
v.Size=UDim2.new(1,-8,1,-8)
v.Parent=u

w.Font=Enum.Font.SourceSans
w.Text=""
w.TextColor3=Color3.fromRGB(0,0,0)
w.TextSize=14
w.AnchorPoint=Vector2.new(1,0.5)
w.BackgroundColor3=Color3.fromRGB(255,255,255)
w.BackgroundTransparency=0.9990000128746033
w.BorderColor3=Color3.fromRGB(0,0,0)
w.BorderSizePixel=0
w.Position=UDim2.new(1,-8,0.5,0)
w.Size=UDim2.new(0,25,0,25)
w.Name="Close"
w.Parent=q

x.Image="rbxassetid://9886659671"
x.AnchorPoint=Vector2.new(0.5,0.5)
x.BackgroundColor3=Color3.fromRGB(255,255,255)
x.BackgroundTransparency=0.9990000128746033
x.BorderColor3=Color3.fromRGB(0,0,0)
x.BorderSizePixel=0
x.Position=UDim2.new(0.49,0,0.5,0)
x.Size=UDim2.new(1,-8,1,-8)
x.Parent=w

y.Font=Enum.Font.SourceSans
y.Text=""
y.TextColor3=Color3.fromRGB(0,0,0)
y.TextSize=14
y.AnchorPoint=Vector2.new(1,0.5)
y.BackgroundColor3=Color3.fromRGB(255,255,255)
y.BackgroundTransparency=0.9990000128746033
y.BorderColor3=Color3.fromRGB(0,0,0)
y.BorderSizePixel=0
y.Position=UDim2.new(1,-78,0.5,0)
y.Size=UDim2.new(0,25,0,25)
y.Name="Min"
y.Parent=q

z.Image="rbxassetid://9886659276"
z.AnchorPoint=Vector2.new(0.5,0.5)
z.BackgroundColor3=Color3.fromRGB(255,255,255)
z.BackgroundTransparency=0.9990000128746033
z.ImageTransparency=0.2
z.BorderColor3=Color3.fromRGB(0,0,0)
z.BorderSizePixel=0
z.Position=UDim2.new(0.5,0,0.5,0)
z.Size=UDim2.new(1,-9,1,-9)
z.Parent=y

A.BackgroundColor3=Color3.fromRGB(255,255,255)
A.BackgroundTransparency=0.9990000128746033
A.BorderColor3=Color3.fromRGB(0,0,0)
A.BorderSizePixel=0
A.Position=UDim2.new(0,9,0,50)
A.Size=UDim2.new(0,i["Tab Width"],1,-59)
A.Name="LayersTab"
A.Parent=n

B.CornerRadius=UDim.new(0,2)
B.Parent=A

C.AnchorPoint=Vector2.new(0.5,0)
C.BackgroundColor3=Color3.fromRGB(255,255,255)
C.BackgroundTransparency=0.85
C.BorderColor3=Color3.fromRGB(0,0,0)
C.BorderSizePixel=0
C.Position=UDim2.new(0.5,0,0,38)
C.Size=UDim2.new(1,0,0,1)
C.Name="DecideFrame"
C.Parent=n

D.BackgroundColor3=Color3.fromRGB(255,255,255)
D.BackgroundTransparency=0.9990000128746033
D.BorderColor3=Color3.fromRGB(0,0,0)
D.BorderSizePixel=0
D.Position=UDim2.new(0,i["Tab Width"]+18,0,50)
D.Size=UDim2.new(1,-(i["Tab Width"]+9+18),1,-59)
D.Name="Layers"
D.Parent=n

E.CornerRadius=UDim.new(0,2)
E.Parent=D

F.Font=Enum.Font.GothamBold
F.Text=""
F.TextColor3=Color3.fromRGB(255,255,255)
F.TextSize=24
F.TextWrapped=true
F.TextXAlignment=Enum.TextXAlignment.Left
F.BackgroundColor3=Color3.fromRGB(255,255,255)
F.BackgroundTransparency=0.9990000128746033
F.BorderColor3=Color3.fromRGB(0,0,0)
F.BorderSizePixel=0
F.Size=UDim2.new(1,0,0,30)
F.Name="NameTab"
F.Parent=D

G.AnchorPoint=Vector2.new(0,1)
G.BackgroundColor3=Color3.fromRGB(255,255,255)
G.BackgroundTransparency=0.9990000128746033
G.BorderColor3=Color3.fromRGB(0,0,0)
G.BorderSizePixel=0
G.ClipsDescendants=true
G.Position=UDim2.new(0,0,1,0)
G.Size=UDim2.new(1,0,1,-33)
G.Name="LayersReal"
G.Parent=D

H.Name="LayersFolder"
H.Parent=G

I.SortOrder=Enum.SortOrder.LayoutOrder
I.Name="LayersPageLayout"
I.Parent=H
I.TweenTime=0.5
I.EasingDirection=Enum.EasingDirection.InOut
I.EasingStyle=Enum.EasingStyle.Quad

local J=Instance.new"ScrollingFrame";
local K=Instance.new"UIListLayout";

J.CanvasSize=UDim2.new(0,0,1.10000002,0)
J.ScrollBarImageColor3=Color3.fromRGB(0,0,0)
J.ScrollBarThickness=0
J.Active=true
J.BackgroundColor3=Color3.fromRGB(255,255,255)
J.BackgroundTransparency=0.9990000128746033
J.BorderColor3=Color3.fromRGB(0,0,0)
J.BorderSizePixel=0
J.Size=UDim2.new(1,0,1,-50)
J.Name="ScrollTab"
J.Parent=A

K.Padding=UDim.new(0,3)
K.SortOrder=Enum.SortOrder.LayoutOrder
K.Parent=J

local function UpdateSize1()
local L=0
for M,N in J:GetChildren()do
if N.Name~="UIListLayout"then
L=L+3+N.Size.Y.Offset
end
end
J.CanvasSize=UDim2.new(0,0,0,L)
end
J.ChildAdded:Connect(UpdateSize1)
J.ChildRemoved:Connect(UpdateSize1)

local L=Instance.new"Frame";
local M=Instance.new"UICorner";
local N=Instance.new"Frame"
local O=Instance.new"UICorner";
local P=Instance.new"ImageLabel";
local Q=Instance.new"UICorner";
local R=Instance.new"TextLabel";

L.AnchorPoint=Vector2.new(1,1)
L.BackgroundColor3=Color3.fromRGB(255,255,255)
L.BackgroundTransparency=0.95
L.BorderColor3=Color3.fromRGB(0,0,0)
L.BorderSizePixel=0
L.Position=UDim2.new(1,0,1,0)
L.Size=UDim2.new(1,0,0,40)
L.Name="Info"
L.Parent=A

M.CornerRadius=UDim.new(0,5)
M.Parent=L

N.AnchorPoint=Vector2.new(0,0.5)
N.BackgroundColor3=Color3.fromRGB(255,255,255)
N.BackgroundTransparency=0.95
N.BorderColor3=Color3.fromRGB(0,0,0)
N.BorderSizePixel=0
N.Position=UDim2.new(0,5,0.5,0)
N.Size=UDim2.new(0,30,0,30)
N.Name="LogoPlayerFrame"
N.Parent=L

O.CornerRadius=UDim.new(0,1000)
O.Parent=N

P.Image=i["Logo Player"]
P.AnchorPoint=Vector2.new(0.5,0.5)
P.BackgroundColor3=Color3.fromRGB(255,255,255)
P.BackgroundTransparency=0.999
P.BorderColor3=Color3.fromRGB(0,0,0)
P.BorderSizePixel=0
P.Position=UDim2.new(0.5,0,0.5,0)
P.Size=UDim2.new(1,-5,1,-5)
P.Name="LogoPlayer"
P.Parent=N

Q.CornerRadius=UDim.new(0,1000)
Q.Parent=P

R.Font=Enum.Font.GothamBold
R.TextColor3=Color3.fromRGB(230.00000149011612,230.00000149011612,230.00000149011612)
R.TextSize=12
R.TextWrapped=true
R.TextXAlignment=Enum.TextXAlignment.Left
R.BackgroundColor3=Color3.fromRGB(255,255,255)
R.BackgroundTransparency=0.9990000128746033
R.BorderColor3=Color3.fromRGB(0,0,0)
R.BorderSizePixel=0
R.Position=UDim2.new(0,40,0,0)
R.Size=UDim2.new(1,-45,1,0)
R.Name="NamePlayer"
R.Parent=L

local S=game.Players.LocalPlayer.Name
local T=#S
local U=math.floor(T/2)
local V=S:sub(1,U)
local W=string.rep("*",T-U)
R.Text=V..W

function j.DestroyGui(X)
if e:FindFirstChild"NightGui"then
k:Destroy()
end
end
local X=l.Position
local Y=l.Size
u.Activated:Connect(function()
CircleClick(u,d.X,d.Y)
if v.Image=="rbxassetid://9886659406"then
v.Image="rbxassetid://9886659001"
X=l.Position
Y=l.Size
b:Create(l,TweenInfo.new(0.3),{Position=UDim2.new(0,0,0,0)}):Play()
b:Create(l,TweenInfo.new(0.3),{Size=UDim2.new(1,0,1,0)}):Play()
else
v.Image="rbxassetid://9886659406"
b:Create(l,TweenInfo.new(0.3),{Position=X}):Play()
b:Create(l,TweenInfo.new(0.3),{Size=Y}):Play()
end
end)
y.Activated:Connect(function()
CircleClick(y,d.X,d.Y)
l.Visible=false
end)
w.Activated:Connect(function()
CircleClick(w,d.X,d.Y)
l.Visible=false
end)
function j.ToggleUI(Z)
game:GetService"VirtualInputManager":SendKeyEvent(true,"RightShift",false,game)
game:GetService"VirtualInputManager":SendKeyEvent(false,"RightShift",false,game)
end
a.InputBegan:Connect(function(Z)
if Z.KeyCode==Enum.KeyCode.RightShift then
if l.Visible then
l.Visible=false
else
l.Visible=true
end
end
end)
MakeDraggable(q,l)
t.Position=UDim2.new(0,r.TextBounds.X+15,0,0)

local Z=Instance.new"Frame";
local _=Instance.new"Frame";
local aa=Instance.new"ImageLabel";
local ab=Instance.new"UICorner";
local ac=Instance.new"TextButton";

Z.AnchorPoint=Vector2.new(1,1)
Z.BackgroundColor3=Color3.fromRGB(0,0,0)
Z.BackgroundTransparency=0.999
Z.BorderColor3=Color3.fromRGB(0,0,0)
Z.BorderSizePixel=0
Z.ClipsDescendants=true
Z.Position=UDim2.new(1,8,1,8)
Z.Size=UDim2.new(1,154,1,54)
Z.Visible=false
Z.Name="MoreBlur"
Z.Parent=D

_.BackgroundTransparency=1
_.BorderSizePixel=0
_.Size=UDim2.new(1,0,1,0)
_.ZIndex=0
_.Name="DropShadowHolder"
_.Parent=Z

aa.Image="rbxassetid://6015897843"
aa.ImageColor3=Color3.fromRGB(0,0,0)
aa.ImageTransparency=0.5
aa.ScaleType=Enum.ScaleType.Slice
aa.SliceCenter=Rect.new(49,49,450,450)
aa.AnchorPoint=Vector2.new(0.5,0.5)
aa.BackgroundTransparency=1
aa.BorderSizePixel=0
aa.Position=UDim2.new(0.5,0,0.5,0)
aa.Size=UDim2.new(1,35,1,35)
aa.ZIndex=0
aa.Name="DropShadow"
aa.Parent=_

ab.Parent=Z

ac.Font=Enum.Font.SourceSans
ac.Text=""
ac.TextColor3=Color3.fromRGB(0,0,0)
ac.TextSize=14
ac.BackgroundColor3=Color3.fromRGB(255,255,255)
ac.BackgroundTransparency=0.999
ac.BorderColor3=Color3.fromRGB(0,0,0)
ac.BorderSizePixel=0
ac.Size=UDim2.new(1,0,1,0)
ac.Name="ConnectButton"
ac.Parent=Z

local ad=Instance.new"Frame";
local ae=Instance.new"UICorner";
local af=Instance.new"UIStroke";
local ag=Instance.new"Frame";
local ah=Instance.new"Folder";
local ai=Instance.new"UIPageLayout";

ad.AnchorPoint=Vector2.new(1,0.5)
ad.BackgroundColor3=Color3.fromRGB(30.00000011175871,30.00000011175871,30.00000011175871)
ad.BorderColor3=Color3.fromRGB(0,0,0)
ad.BorderSizePixel=0
ad.LayoutOrder=1
ad.Position=UDim2.new(1,172,0.5,0)
ad.Size=UDim2.new(0,160,1,-16)
ad.Name="DropdownSelect"
ad.ClipsDescendants=true
ad.Parent=Z

ac.Activated:Connect(function()
if Z.Visible then
b:Create(Z,TweenInfo.new(0.3),{BackgroundTransparency=0.999}):Play()
b:Create(ad,TweenInfo.new(0.3),{Position=UDim2.new(1,172,0.5,0)}):Play()
task.wait(0.3)
Z.Visible=false
end
end)
ae.CornerRadius=UDim.new(0,3)
ae.Parent=ad

af.Color=Color3.fromRGB(255,255,255)
af.Thickness=2.5
af.Transparency=0.8
af.Parent=ad

ag.AnchorPoint=Vector2.new(0.5,0.5)
ag.BackgroundColor3=Color3.fromRGB(0,0,0)
ag.BackgroundTransparency=0.9990000128746033
ag.BorderColor3=Color3.fromRGB(0,0,0)
ag.BorderSizePixel=0
ag.LayoutOrder=1
ag.Position=UDim2.new(0.5,0,0.5,0)
ag.Size=UDim2.new(1,-10,1,-10)
ag.Name="DropdownSelectReal"
ag.Parent=ad

ah.Name="DropdownFolder"
ah.Parent=ag

ai.EasingDirection=Enum.EasingDirection.InOut
ai.EasingStyle=Enum.EasingStyle.Quad
ai.TweenTime=0.009999999776482582
ai.SortOrder=Enum.SortOrder.LayoutOrder
ai.Archivable=false
ai.Name="DropPageLayout"
ai.Parent=ah

local aj={}
local ak=0
local al=0
function aj.AddTab(am,an)
local ao=an or{}
ao.Name=ao.Name or"Tab"
ao.Icon=ao.Icon or""

local ap=Instance.new"ScrollingFrame";
local aq=Instance.new"UIListLayout";

ap.ScrollBarImageColor3=Color3.fromRGB(80.00000283122063,80.00000283122063,80.00000283122063)
ap.ScrollBarThickness=0
ap.Active=true
ap.LayoutOrder=ak
ap.BackgroundColor3=Color3.fromRGB(255,255,255)
ap.BackgroundTransparency=0.9990000128746033
ap.BorderColor3=Color3.fromRGB(0,0,0)
ap.BorderSizePixel=0
ap.Size=UDim2.new(1,0,1,0)
ap.Name="ScrolLayers"
ap.Parent=H

aq.Padding=UDim.new(0,3)
aq.SortOrder=Enum.SortOrder.LayoutOrder
aq.Parent=ap

local ar=Instance.new"Frame";
local as=Instance.new"UICorner";
local at=Instance.new"TextButton";
local au=Instance.new"TextLabel"
local av=Instance.new"ImageLabel";
local aw=Instance.new"UIStroke";
local ax=Instance.new"UICorner";

ar.BackgroundColor3=Color3.fromRGB(255,255,255)
if ak==0 then
ar.BackgroundTransparency=0.9200000166893005
else
ar.BackgroundTransparency=0.9990000128746033
end
ar.BorderColor3=Color3.fromRGB(0,0,0)
ar.BorderSizePixel=0
ar.LayoutOrder=ak
ar.Size=UDim2.new(1,0,0,30)
ar.Name="Tab"
ar.Parent=J

as.CornerRadius=UDim.new(0,4)
as.Parent=ar

at.Font=Enum.Font.GothamBold
at.Text=""
at.TextColor3=Color3.fromRGB(255,255,255)
at.TextSize=13
at.TextXAlignment=Enum.TextXAlignment.Left
at.BackgroundColor3=Color3.fromRGB(255,255,255)
at.BackgroundTransparency=0.9990000128746033
at.BorderColor3=Color3.fromRGB(0,0,0)
at.BorderSizePixel=0
at.Size=UDim2.new(1,0,1,0)
at.Name="TabButton"
at.Parent=ar

au.Font=Enum.Font.GothamBold
au.Text=ao.Name
au.TextColor3=Color3.fromRGB(255,255,255)
au.TextSize=13
au.TextXAlignment=Enum.TextXAlignment.Left
au.BackgroundColor3=Color3.fromRGB(255,255,255)
au.BackgroundTransparency=0.9990000128746033
au.BorderColor3=Color3.fromRGB(0,0,0)
au.BorderSizePixel=0
au.Size=UDim2.new(1,0,1,0)
au.Position=UDim2.new(0,30,0,0)
au.Name="TabName"
au.Parent=ar

av.Image=ao.Icon
av.BackgroundColor3=Color3.fromRGB(255,255,255)
av.BackgroundTransparency=0.9990000128746033
av.BorderColor3=Color3.fromRGB(0,0,0)
av.BorderSizePixel=0
av.Position=UDim2.new(0,9,0,7)
av.Size=UDim2.new(0,16,0,16)
av.Name="FeatureImg"
av.Parent=ar
if ak==0 then
I:JumpToIndex(0)
F.Text=ao.Name
local ay=Instance.new"Frame";
ay.BackgroundColor3=Color3.fromRGB(255,255,255)
ay.BorderColor3=Color3.fromRGB(0,0,0)
ay.BorderSizePixel=0
ay.Position=UDim2.new(0,2,0,9)
ay.Size=UDim2.new(0,1,0,12)
ay.Name="ChooseFrame"
ay.Parent=ar

aw.Color=Color3.fromRGB(255,255,255)
aw.Thickness=1.600000023841858
aw.Parent=ay

ax.Parent=ay
end
at.Activated:Connect(function()
CircleClick(at,d.X,d.Y)
local ay
for az,aA in J:GetChildren()do
for aB,aC in aA:GetChildren()do
if aC.Name=="ChooseFrame"then
ay=aC
break
end
end
end
if ay~=nil and ar.LayoutOrder~=I.CurrentPage.LayoutOrder then
for az,aA in J:GetChildren()do
if aA.Name=="Tab"then
b:Create(
aA,
TweenInfo.new(0.3,Enum.EasingStyle.Back,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.9990000128746033}
):Play()
end
end
b:Create(
ar,
TweenInfo.new(0.6,Enum.EasingStyle.Back,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.9200000166893005}
):Play()
b:Create(
ay,
TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,2,0,9+(33*ar.LayoutOrder))}
):Play()
I:JumpToIndex(ar.LayoutOrder)
task.wait(0.05)
F.Text=ao.Name
b:Create(
ay,
TweenInfo.new(0.35,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Size=UDim2.new(0,1,0,20)}
):Play()
task.wait(0.2)
b:Create(
ay,
TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Size=UDim2.new(0,1,0,12)}
):Play()
end
end)

local ay={}
local az=0
function ay.AddSection(aA,aB)
local aC=aB or"Title"
local aD=Instance.new"Frame";
local aE=Instance.new"Frame";
local aF=Instance.new"UICorner";
local aG=Instance.new"UIGradient";

aD.BackgroundColor3=Color3.fromRGB(255,255,255)
aD.BackgroundTransparency=0.9990000128746033
aD.BorderColor3=Color3.fromRGB(0,0,0)
aD.BorderSizePixel=0
aD.LayoutOrder=az
aD.ClipsDescendants=true
aD.LayoutOrder=1
aD.Size=UDim2.new(1,0,0,30)
aD.Name="Section"
aD.Parent=ap

local aH=Instance.new"Frame";
local aI=Instance.new"UICorner";
Instance.new"UIStroke";
local aJ=Instance.new"TextButton";
local aK=Instance.new"Frame";
local aL=Instance.new"ImageLabel";
local aM=Instance.new"TextLabel";

aH.AnchorPoint=Vector2.new(0.5,0)
aH.BackgroundColor3=Color3.fromRGB(255,255,255)
aH.BackgroundTransparency=0.9350000023841858
aH.BorderColor3=Color3.fromRGB(0,0,0)
aH.BorderSizePixel=0
aH.LayoutOrder=1
aH.Position=UDim2.new(0.5,0,0,0)
aH.Size=UDim2.new(1,1,0,30)
aH.Name="SectionReal"
aH.Parent=aD

aI.CornerRadius=UDim.new(0,4)
aI.Parent=aH

aJ.Font=Enum.Font.SourceSans
aJ.Text=""
aJ.TextColor3=Color3.fromRGB(0,0,0)
aJ.TextSize=14
aJ.BackgroundColor3=Color3.fromRGB(255,255,255)
aJ.BackgroundTransparency=0.9990000128746033
aJ.BorderColor3=Color3.fromRGB(0,0,0)
aJ.BorderSizePixel=0
aJ.Size=UDim2.new(1,0,1,0)
aJ.Name="SectionButton"
aJ.Parent=aH

aK.AnchorPoint=Vector2.new(1,0.5)
aK.BackgroundColor3=Color3.fromRGB(0,0,0)
aK.BackgroundTransparency=0.9990000128746033
aK.BorderColor3=Color3.fromRGB(0,0,0)
aK.BorderSizePixel=0
aK.Position=UDim2.new(1,-5,0.5,0)
aK.Size=UDim2.new(0,20,0,20)
aK.Name="FeatureFrame"
aK.Parent=aH

aL.Image="rbxassetid://16851841101"
aL.AnchorPoint=Vector2.new(0.5,0.5)
aL.BackgroundColor3=Color3.fromRGB(255,255,255)
aL.BackgroundTransparency=0.9990000128746033
aL.BorderColor3=Color3.fromRGB(0,0,0)
aL.BorderSizePixel=0
aL.Position=UDim2.new(0.5,0,0.5,0)
aL.Rotation=-90
aL.Size=UDim2.new(1,6,1,6)
aL.Name="FeatureImg"
aL.Parent=aK

aM.Font=Enum.Font.GothamBold
aM.Text=aC
aM.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aM.TextSize=13
aM.TextXAlignment=Enum.TextXAlignment.Left
aM.TextYAlignment=Enum.TextYAlignment.Top
aM.AnchorPoint=Vector2.new(0,0.5)
aM.BackgroundColor3=Color3.fromRGB(255,255,255)
aM.BackgroundTransparency=0.9990000128746033
aM.BorderColor3=Color3.fromRGB(0,0,0)
aM.BorderSizePixel=0
aM.Position=UDim2.new(0,10,0.5,0)
aM.Size=UDim2.new(1,-50,0,13)
aM.Name="SectionTitle"
aM.Parent=aH

aE.BackgroundColor3=Color3.fromRGB(255,255,255)
aE.BorderColor3=Color3.fromRGB(0,0,0)
aE.AnchorPoint=Vector2.new(0.5,0)
aE.BorderSizePixel=0
aE.Position=UDim2.new(0.5,0,0,33)
aE.Size=UDim2.new(0,0,0,2)
aE.Name="SectionDecideFrame"
aE.Parent=aD

aF.Parent=aE

aG.Color=ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.fromRGB(20,20,20)),
ColorSequenceKeypoint.new(0.5,Color3.fromRGB(255,255,255)),
ColorSequenceKeypoint.new(1,Color3.fromRGB(20,20,20))
}
aG.Parent=aE

local aN=Instance.new"Frame";
local aO=Instance.new"UICorner";
local aP=Instance.new"UIListLayout";

aN.AnchorPoint=Vector2.new(0.5,0)
aN.BackgroundColor3=Color3.fromRGB(255,255,255)
aN.BackgroundTransparency=0.9990000128746033
aN.BorderColor3=Color3.fromRGB(0,0,0)
aN.BorderSizePixel=0
aN.ClipsDescendants=true
aN.LayoutOrder=1
aN.Position=UDim2.new(0.5,0,0,38)
aN.Size=UDim2.new(1,0,0,100)
aN.Name="SectionAdd"
aN.Parent=aD

aO.CornerRadius=UDim.new(0,2)
aO.Parent=aN

aP.Padding=UDim.new(0,3)
aP.SortOrder=Enum.SortOrder.LayoutOrder
aP.Parent=aN
local aQ=false
local function UpdateSizeScroll()
local aR=0
for aS,aT in ap:GetChildren()do
if aT.Name~="UIListLayout"then
aR=aR+3+aT.Size.Y.Offset
end
end
ap.CanvasSize=UDim2.new(0,0,0,aR)
end
local function UpdateSizeSection()
if aQ then
local aR=38
for aS,aT in aN:GetChildren()do
if aT.Name~="UIListLayout"and aT.Name~="UICorner"then
aR=aR+aT.Size.Y.Offset+3
end
end
b:Create(aK,TweenInfo.new(0.5),{Rotation=90}):Play()
b:Create(aD,TweenInfo.new(0.5),{Size=UDim2.new(1,1,0,aR)}):Play()
b:Create(aN,TweenInfo.new(0.5),{Size=UDim2.new(1,0,0,aR-38)}):Play()
b:Create(aE,TweenInfo.new(0.5),{Size=UDim2.new(1,0,0,2)}):Play()
task.wait(0.5)
UpdateSizeScroll()
end
end
aJ.Activated:Connect(function()
CircleClick(aJ,d.X,d.Y)
if aQ then
b:Create(aK,TweenInfo.new(0.5),{Rotation=0}):Play()
b:Create(aD,TweenInfo.new(0.5),{Size=UDim2.new(1,1,0,30)}):Play()
b:Create(aE,TweenInfo.new(0.5),{Size=UDim2.new(0,0,0,2)}):Play()
aQ=false
task.wait(0.5)
UpdateSizeScroll()
else
aQ=true
UpdateSizeSection()
end
end)
aN.ChildAdded:Connect(UpdateSizeSection)
aN.ChildRemoved:Connect(UpdateSizeSection)
UpdateSizeScroll()

local aR={}
local aS=0
function aR.AddParagraph(aT,aU)
local aV=aU or{}
aV.Title=aV.Title or"Title"
aV.Content=aV.Content or""
local aW={}

local aX=Instance.new"Frame";
local aY=Instance.new"UICorner";
local aZ=Instance.new"TextLabel";
local a_=Instance.new"TextLabel";

aX.BackgroundColor3=Color3.fromRGB(255,255,255)
aX.BackgroundTransparency=0.9350000023841858
aX.BorderColor3=Color3.fromRGB(0,0,0)
aX.BorderSizePixel=0
aX.LayoutOrder=aS
aX.Size=UDim2.new(1,0,0,35)
aX.Name="Paragraph"
aX.Parent=aN

aY.CornerRadius=UDim.new(0,4)
aY.Parent=aX

aZ.Font=Enum.Font.GothamBold
aZ.Text=aV.Title
aZ.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aZ.TextSize=13
aZ.TextXAlignment=Enum.TextXAlignment.Left
aZ.TextYAlignment=Enum.TextYAlignment.Top
aZ.BackgroundColor3=Color3.fromRGB(255,255,255)
aZ.BackgroundTransparency=0.9990000128746033
aZ.BorderColor3=Color3.fromRGB(0,0,0)
aZ.BorderSizePixel=0
aZ.Position=UDim2.new(0,10,0,10)
aZ.Size=UDim2.new(1,-16,0,13)
aZ.Name="ParagraphTitle"
aZ.Parent=aX

if#aV.Content>0 then
a_.Font=Enum.Font.GothamBold
a_.Text=aV.Content
a_.TextColor3=Color3.fromRGB(255,255,255)
a_.TextSize=12
a_.TextTransparency=0.6000000238418579
a_.TextXAlignment=Enum.TextXAlignment.Left
a_.TextYAlignment=Enum.TextYAlignment.Bottom
a_.BackgroundColor3=Color3.fromRGB(255,255,255)
a_.BackgroundTransparency=0.9990000128746033
a_.BorderColor3=Color3.fromRGB(0,0,0)
a_.BorderSizePixel=0
a_.Position=UDim2.new(0,10,0,23)
a_.Name="ParagraphContent"
a_.Parent=aX

a_.Size=UDim2.new(1,-16,0,12+(12*(a_.TextBounds.X//a_.AbsoluteSize.X)))
a_.TextWrapped=true
aX.Size=UDim2.new(1,0,0,a_.AbsoluteSize.Y+33)

a_:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
a_.TextWrapped=false
a_.Size=UDim2.new(1,-16,0,12+(12*(a_.TextBounds.X//a_.AbsoluteSize.X)))
aX.Size=UDim2.new(1,0,0,a_.AbsoluteSize.Y+33)
a_.TextWrapped=true
UpdateSizeSection()
end)
end

function aW.SetTitle(a0,a1)
aZ.Text=a1
end
function aW.SetDesc(a0,a1)
a_.Text=a1
a_.TextWrapped=false
a_.Size=UDim2.new(1,-16,0,12+(12//a_.AbsoluteSize.X))
a_.TextWrapped=true
aX.Size=UDim2.new(1,0,0,a_.AbsoluteSize.Y+33)
end
aS=aS+1
return aW
end
function aR.AddButton(aT,aU)
local aV=aU or{}
aV.Title=aV.Title or"Title"
aV.Description=aV.Description or""
aV.Icon=aV.Icon or"rbxassetid://16932740082"
aV.Callback=aV.Callback or function()end
local aW={}

local aX=Instance.new"Frame";
local aY=Instance.new"UICorner";
local aZ=Instance.new"TextLabel";
local a_=Instance.new"TextLabel";
local a0=Instance.new"TextButton";
local a1=Instance.new"Frame";
local a2=Instance.new"ImageLabel";

aX.BackgroundColor3=Color3.fromRGB(255,255,255)
aX.BackgroundTransparency=0.9350000023841858
aX.BorderColor3=Color3.fromRGB(0,0,0)
aX.BorderSizePixel=0
aX.LayoutOrder=aS
aX.Size=UDim2.new(1,0,0,35)
aX.Name="Button"
aX.Parent=aN

aY.CornerRadius=UDim.new(0,4)
aY.Parent=aX

aZ.Font=Enum.Font.GothamBold
aZ.Text=aV.Title
aZ.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aZ.TextSize=13
aZ.TextXAlignment=Enum.TextXAlignment.Left
aZ.TextYAlignment=Enum.TextYAlignment.Top
aZ.BackgroundColor3=Color3.fromRGB(255,255,255)
aZ.BackgroundTransparency=0.9990000128746033
aZ.BorderColor3=Color3.fromRGB(0,0,0)
aZ.BorderSizePixel=0
aZ.Position=UDim2.new(0,10,0,10)
aZ.Size=UDim2.new(1,-100,0,13)
aZ.Name="ButtonTitle"
aZ.Parent=aX

if#aV.Description>0 then
a_.Font=Enum.Font.GothamBold
a_.Text=aV.Description
a_.TextColor3=Color3.fromRGB(255,255,255)
a_.TextSize=12
a_.TextTransparency=0.6000000238418579
a_.TextXAlignment=Enum.TextXAlignment.Left
a_.TextYAlignment=Enum.TextYAlignment.Bottom
a_.BackgroundColor3=Color3.fromRGB(255,255,255)
a_.BackgroundTransparency=0.9990000128746033
a_.BorderColor3=Color3.fromRGB(0,0,0)
a_.BorderSizePixel=0
a_.Position=UDim2.new(0,10,0,23)
a_.Name="ButtonContent"
a_.Parent=aX
a_.Size=UDim2.new(1,-100,0,12)

a_.Size=UDim2.new(1,-100,0,12+(12*(a_.TextBounds.X//a_.AbsoluteSize.X)))
a_.TextWrapped=true
aX.Size=UDim2.new(1,0,0,a_.AbsoluteSize.Y+33)

a_:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
a_.TextWrapped=false
a_.Size=UDim2.new(1,-100,0,12+(12*(a_.TextBounds.X//a_.AbsoluteSize.X)))
aX.Size=UDim2.new(1,0,0,a_.AbsoluteSize.Y+33)
a_.TextWrapped=true
UpdateSizeSection()
end)
end

a0.Font=Enum.Font.SourceSans
a0.Text=""
a0.TextColor3=Color3.fromRGB(0,0,0)
a0.TextSize=14
a0.BackgroundColor3=Color3.fromRGB(0,0,0)
a0.BackgroundTransparency=0.9990000128746033
a0.BorderColor3=Color3.fromRGB(0,0,0)
a0.BorderSizePixel=0
a0.Size=UDim2.new(1,0,1,0)
a0.Name="ButtonButton"
a0.Parent=aX

a1.AnchorPoint=Vector2.new(1,0.5)
a1.BackgroundColor3=Color3.fromRGB(0,0,0)
a1.BackgroundTransparency=0.9990000128746033
a1.BorderColor3=Color3.fromRGB(0,0,0)
a1.BorderSizePixel=0
a1.Position=UDim2.new(1,-15,0.5,0)
a1.Size=UDim2.new(0,25,0,25)
a1.Name="FeatureFrame"
a1.Parent=aX

a2.Image=aV.Icon
a2.AnchorPoint=Vector2.new(0.5,0.5)
a2.BackgroundColor3=Color3.fromRGB(255,255,255)
a2.BackgroundTransparency=0.9990000128746033
a2.BorderColor3=Color3.fromRGB(0,0,0)
a2.BorderSizePixel=0
a2.Position=UDim2.new(0.5,0,0.5,0)
a2.Size=UDim2.new(1,0,1,0)
a2.Name="FeatureImg"
a2.Parent=a1

a0.Activated:Connect(function()
CircleClick(a0,d.X,d.Y)
aV.Callback()
end)
aS=aS+1
return aW
end
function aR.AddToggle(aT,aU)
local aV=aU or{}
aV.Title=aV.Title or"Title"
aV.Description=aV.Description or""
aV.Default=aV.Default or false
aV.Callback=aV.Callback or function()end
local aW={Value=aV.Default,Options=aV.Options,Selecting=aV.Selecting}

local aX=Instance.new"Frame";
local aY=Instance.new"UICorner";
local aZ=Instance.new"TextLabel";
local a_=Instance.new"TextLabel";
local a0=Instance.new"TextButton";
Instance.new"Frame";
Instance.new"ImageLabel";
Instance.new"UICorner";
Instance.new"TextButton";
local a1=Instance.new"Frame";
local a2=Instance.new"UICorner";
local a3=Instance.new"UIStroke";
local a4=Instance.new"Frame";
local a5=Instance.new"UICorner";

aX.BackgroundColor3=Color3.fromRGB(255,255,255)
aX.BackgroundTransparency=0.9350000023841858
aX.BorderColor3=Color3.fromRGB(0,0,0)
aX.BorderSizePixel=0
aX.LayoutOrder=aS
aX.Size=UDim2.new(1,0,0,35)
aX.Name="Toggle"
aX.Parent=aN

aY.CornerRadius=UDim.new(0,4)
aY.Parent=aX

aZ.Font=Enum.Font.GothamBold
aZ.Text=aV.Title
aZ.TextSize=13
aZ.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aZ.TextXAlignment=Enum.TextXAlignment.Left
aZ.TextYAlignment=Enum.TextYAlignment.Top
aZ.BackgroundColor3=Color3.fromRGB(255,255,255)
aZ.BackgroundTransparency=0.9990000128746033
aZ.BorderColor3=Color3.fromRGB(0,0,0)
aZ.BorderSizePixel=0
aZ.Position=UDim2.new(0,10,0,10)
aZ.Size=UDim2.new(1,-100,0,13)
aZ.Name="ToggleTitle"
aZ.Parent=aX

if#aV.Description>0 then
a_.Font=Enum.Font.GothamBold
a_.Text=aV.Description
a_.TextColor3=Color3.fromRGB(255,255,255)
a_.TextSize=12
a_.TextTransparency=0.6000000238418579
a_.TextXAlignment=Enum.TextXAlignment.Left
a_.TextYAlignment=Enum.TextYAlignment.Bottom
a_.BackgroundColor3=Color3.fromRGB(255,255,255)
a_.BackgroundTransparency=0.9990000128746033
a_.BorderColor3=Color3.fromRGB(0,0,0)
a_.BorderSizePixel=0
a_.Position=UDim2.new(0,10,0,23)
a_.Size=UDim2.new(1,-100,0,12)
a_.Name="ToggleContent"
a_.Parent=aX

a_.Size=UDim2.new(1,-100,0,12+(12*(a_.TextBounds.X//a_.AbsoluteSize.X)))
a_.TextWrapped=true
aX.Size=UDim2.new(1,0,0,a_.AbsoluteSize.Y+33)

a_:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
a_.TextWrapped=false
a_.Size=UDim2.new(1,-100,0,12+(12*(a_.TextBounds.X//a_.AbsoluteSize.X)))
aX.Size=UDim2.new(1,0,0,a_.AbsoluteSize.Y+33)
a_.TextWrapped=true
UpdateSizeSection()
end)
end

a0.Font=Enum.Font.SourceSans
a0.Text=""
a0.TextColor3=Color3.fromRGB(0,0,0)
a0.TextSize=14
a0.BackgroundColor3=Color3.fromRGB(0,0,0)
a0.BackgroundTransparency=0.9990000128746033
a0.BorderColor3=Color3.fromRGB(0,0,0)
a0.BorderSizePixel=0
a0.Size=UDim2.new(1,0,1,0)
a0.Name="ToggleButton"
a0.Parent=aX

a1.AnchorPoint=Vector2.new(1,0.5)
a1.BackgroundColor3=Color3.fromRGB(255,255,255)
a1.BackgroundTransparency=0.9200000166893005
a1.BorderColor3=Color3.fromRGB(0,0,0)
a1.BorderSizePixel=0
a1.Position=UDim2.new(1,-20,0.5,0)
a1.Size=UDim2.new(0,35,0,15)
a1.Name="FeatureFrame"
a1.Parent=aX

a2.Parent=a1

a3.Color=Color3.fromRGB(255,255,255)
a3.Thickness=2
a3.Transparency=0.9
a3.Parent=a1

a4.BackgroundColor3=Color3.fromRGB(230.00000149011612,230.00000149011612,230.00000149011612)
a4.BorderColor3=Color3.fromRGB(0,0,0)
a4.BorderSizePixel=0
a4.Position=UDim2.new(0,0,0,0)
a4.Size=UDim2.new(0,14,0,14)
a4.Name="ToggleCircle"
a4.Parent=a1

a5.CornerRadius=UDim.new(0,15)
a5.Parent=a4

a0.Activated:Connect(function()
CircleClick(a0,d.X,d.Y)
aW.Value=not aW.Value
aW:Set(aW.Value)
end)
function aW.Set(a6,a7)
aV.Callback(a7)
if a7 then
b:Create(
aZ,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{TextColor3=Color3.fromRGB(255,255,255)}
):Play()
b:Create(
a4,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,20,0,0),BackgroundColor3=Color3.fromRGB(0,0,0)}
):Play()
b:Create(
a3,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Color=Color3.fromRGB(255,255,255),Transparency=0}
):Play()
b:Create(
a1,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=0}
):Play()
else
b:Create(
aZ,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)}
):Play()
b:Create(
a4,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,0,0,0),BackgroundColor3=Color3.fromRGB(230.00000149011612,230.00000149011612,230.00000149011612)}
):Play()
b:Create(
a3,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Color=Color3.fromRGB(255,255,255),Transparency=0.9}
):Play()
b:Create(
a1,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=0.9200000166893005}
):Play()
end
end
aW:Set(aW.Value)
aS=aS+1
return aW
end
function aR.AddSlider(aT,aU)
local aV=aU or{}
aV.Title=aV.Title or"Slider"
aV.Description=aV.Description or""
aV.Increment=aV.Increment or 1
aV.Min=aV.Min or 0
aV.Max=aV.Max or 100
aV.Default=aV.Default or 50
aV.Callback=aV.Callback or function()end
local aW={Value=aV.Default}

local aX=Instance.new"Frame";
local aY=Instance.new"UICorner";
local aZ=Instance.new"TextLabel";
local a_=Instance.new"TextLabel";
local a0=Instance.new"Frame";
local a1=Instance.new"UICorner";
local a2=Instance.new"TextBox";
local a3=Instance.new"Frame";
local a4=Instance.new"UICorner";
local a5=Instance.new"Frame";
local a6=Instance.new"UICorner";
Instance.new"UIStroke";
local a7=Instance.new"Frame";
local a8=Instance.new"UICorner";
local a9=Instance.new"UIStroke";
Instance.new"UIStroke";

aX.BackgroundColor3=Color3.fromRGB(255,255,255)
aX.BackgroundTransparency=0.9350000023841858
aX.BorderColor3=Color3.fromRGB(0,0,0)
aX.BorderSizePixel=0
aX.LayoutOrder=aS
aX.Size=UDim2.new(1,0,0,35)
aX.Name="Slider"
aX.Parent=aN

aY.CornerRadius=UDim.new(0,4)
aY.Parent=aX

aZ.Font=Enum.Font.GothamBold
aZ.Text=aV.Title
aZ.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aZ.TextSize=13
aZ.TextXAlignment=Enum.TextXAlignment.Left
aZ.TextYAlignment=Enum.TextYAlignment.Top
aZ.BackgroundColor3=Color3.fromRGB(255,255,255)
aZ.BackgroundTransparency=0.9990000128746033
aZ.BorderColor3=Color3.fromRGB(0,0,0)
aZ.BorderSizePixel=0
aZ.Position=UDim2.new(0,10,0,10)
aZ.Size=UDim2.new(1,-180,0,13)
aZ.Name="SliderTitle"
aZ.Parent=aX

if#aV.Description>0 then
a_.Font=Enum.Font.GothamBold
a_.Text=aV.Description
a_.TextColor3=Color3.fromRGB(255,255,255)
a_.TextSize=12
a_.TextTransparency=0.6000000238418579
a_.TextXAlignment=Enum.TextXAlignment.Left
a_.TextYAlignment=Enum.TextYAlignment.Bottom
a_.BackgroundColor3=Color3.fromRGB(255,255,255)
a_.BackgroundTransparency=0.9990000128746033
a_.BorderColor3=Color3.fromRGB(0,0,0)
a_.BorderSizePixel=0
a_.Position=UDim2.new(0,10,0,23)
a_.Size=UDim2.new(1,-180,0,12)
a_.Name="SliderContent"
a_.Parent=aX

a_.Size=UDim2.new(1,-180,0,12+(12*(a_.TextBounds.X//a_.AbsoluteSize.X)))
a_.TextWrapped=true
aX.Size=UDim2.new(1,0,0,a_.AbsoluteSize.Y+33)

a_:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
a_.TextWrapped=false
a_.Size=UDim2.new(1,-180,0,12+(12*(a_.TextBounds.X//a_.AbsoluteSize.X)))
aX.Size=UDim2.new(1,0,0,a_.AbsoluteSize.Y+33)
a_.TextWrapped=true
UpdateSizeSection()
end)
end

a0.AnchorPoint=Vector2.new(0,0.5)
a0.BackgroundColor3=Color3.fromRGB(255,255,255)
a0.BorderColor3=Color3.fromRGB(0,0,0)
a0.BorderSizePixel=0
a0.Position=UDim2.new(1,-155,0.5,0)
a0.Size=UDim2.new(0,28,0,20)
a0.Name="SliderInput"
a0.Parent=aX
a0.BackgroundTransparency=0.75

a1.CornerRadius=UDim.new(0,2)
a1.Parent=a0

a2.Font=Enum.Font.GothamBold
a2.Text="90"
a2.TextColor3=Color3.fromRGB(255,255,255)
a2.TextSize=13
a2.TextWrapped=true
a2.BackgroundColor3=Color3.fromRGB(0,0,0)
a2.BackgroundTransparency=0.9990000128746033
a2.BorderColor3=Color3.fromRGB(0,0,0)
a2.BorderSizePixel=0
a2.Position=UDim2.new(0,-1,0,0)
a2.Size=UDim2.new(1,0,1,0)
a2.Parent=a0

a3.AnchorPoint=Vector2.new(1,0.5)
a3.BackgroundColor3=Color3.fromRGB(255,255,255)
a3.BackgroundTransparency=0.800000011920929
a3.BorderColor3=Color3.fromRGB(0,0,0)
a3.BorderSizePixel=0
a3.Position=UDim2.new(1,-20,0.5,0)
a3.Size=UDim2.new(0,100,0,3)
a3.Name="SliderFrame"
a3.Parent=aX

a4.Parent=a3

a5.AnchorPoint=Vector2.new(0,0.5)
a5.BackgroundColor3=Color3.fromRGB(255,255,255)
a5.BorderColor3=Color3.fromRGB(0,0,0)
a5.BorderSizePixel=0
a5.Position=UDim2.new(0,0,0.5,0)
a5.Size=UDim2.new(0.899999976,0,0,1)
a5.Name="SliderDraggable"
a5.Parent=a3

a6.Parent=a5

a7.AnchorPoint=Vector2.new(1,0.5)
a7.BackgroundColor3=Color3.fromRGB(255,255,255)
a7.BorderColor3=Color3.fromRGB(0,0,0)
a7.BorderSizePixel=0
a7.Position=UDim2.new(1,4,0.5,0)
a7.Size=UDim2.new(0,8,0,8)
a7.Name="SliderCircle"
a7.Parent=a5

a8.Parent=a7

a9.Color=Color3.fromRGB(255,255,255)
a9.Parent=a7

local ba=false
local function Round(bb,bc)
local bd=math.floor(bb/bc+(math.sign(bb)*0.5))*bc
if bd<0 then
bd=bd+bc
end
return bd
end
function aW.Set(bb,bc)
bc=math.clamp(Round(bc,aV.Increment),aV.Min,aV.Max)
aW.Value=bc
a2.Text=tostring(bc)
b:Create(
a5,
TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{Size=UDim2.fromScale((bc-aV.Min)/(aV.Max-aV.Min),1)}
):Play()
end
a3.InputBegan:Connect(function(bb)
if bb.UserInputType==Enum.UserInputType.MouseButton1 then
ba=true
end
end)
a3.InputEnded:Connect(function(bb)
if bb.UserInputType==Enum.UserInputType.MouseButton1 then
ba=false
aV.Callback(aW.Value)
end
end)
a.InputChanged:Connect(function(bb)
if ba and bb.UserInputType==Enum.UserInputType.MouseMovement then
local bc=math.clamp((bb.Position.X-a3.AbsolutePosition.X)/a3.AbsoluteSize.X,0,1)
aW:Set(aV.Min+((aV.Max-aV.Min)*bc))
end
end)
a2:GetPropertyChangedSignal"Text":Connect(function()
local bb=a2.Text:gsub("[^%d]","")
if bb~=""then
local bc=math.min(tonumber(bb),aV.Max)
a2.Text=tostring(bc)
else
a2.Text=tostring(bb)
end
end)
a2.FocusLost:Connect(function()
if a2.Text~=""then
aW:Set(tonumber(a2.Text))
else
aW:Set(0)
end
end)
aW:Set(tonumber(aV.Default))
aS=aS+1
return aW
end
function aR.AddInput(aT,aU)
local aV=aU or{}
aV.Title=aV.Title or"Title"
aV.Description=aV.Description or""
aV.Callback=aV.Callback or function()end
local aW={Value=""}

local aX=Instance.new"Frame";
local aY=Instance.new"UICorner";
local aZ=Instance.new"TextLabel";
local a_=Instance.new"TextLabel";
local a0=Instance.new"Frame";
local a1=Instance.new"UICorner";
local a2=Instance.new"TextBox";

aX.BackgroundColor3=Color3.fromRGB(255,255,255)
aX.BackgroundTransparency=0.9350000023841858
aX.BorderColor3=Color3.fromRGB(0,0,0)
aX.BorderSizePixel=0
aX.LayoutOrder=aS
aX.Size=UDim2.new(1,0,0,35)
aX.Name="Input"
aX.Parent=aN

aY.CornerRadius=UDim.new(0,4)
aY.Parent=aX

aZ.Font=Enum.Font.GothamBold
aZ.Text="TextBox"
aZ.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aZ.TextSize=13
aZ.TextXAlignment=Enum.TextXAlignment.Left
aZ.TextYAlignment=Enum.TextYAlignment.Top
aZ.BackgroundColor3=Color3.fromRGB(255,255,255)
aZ.BackgroundTransparency=0.9990000128746033
aZ.BorderColor3=Color3.fromRGB(0,0,0)
aZ.BorderSizePixel=0
aZ.Position=UDim2.new(0,10,0,10)
aZ.Size=UDim2.new(1,-180,0,13)
aZ.Name="InputTitle"
aZ.Parent=aX

if#aV.Description>0 then
a_.Font=Enum.Font.GothamBold
a_.Text="This is a TextBox"
a_.TextColor3=Color3.fromRGB(255,255,255)
a_.TextSize=12
a_.TextTransparency=0.6000000238418579
a_.TextWrapped=true
a_.TextXAlignment=Enum.TextXAlignment.Left
a_.TextYAlignment=Enum.TextYAlignment.Bottom
a_.BackgroundColor3=Color3.fromRGB(255,255,255)
a_.BackgroundTransparency=0.9990000128746033
a_.BorderColor3=Color3.fromRGB(0,0,0)
a_.BorderSizePixel=0
a_.Position=UDim2.new(0,10,0,23)
a_.Size=UDim2.new(1,-180,0,12)
a_.Name="InputContent"
a_.Parent=aX

a_.Size=UDim2.new(1,-180,0,12+(12*(a_.TextBounds.X//a_.AbsoluteSize.X)))
a_.TextWrapped=true
aX.Size=UDim2.new(1,0,0,a_.AbsoluteSize.Y+33)

a_:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
a_.TextWrapped=false
a_.Size=UDim2.new(1,-180,0,12+(12*(a_.TextBounds.X//a_.AbsoluteSize.X)))
aX.Size=UDim2.new(1,0,0,a_.AbsoluteSize.Y+33)
a_.TextWrapped=true
UpdateSizeSection()
end)
end
a0.AnchorPoint=Vector2.new(1,0.5)
a0.BackgroundColor3=Color3.fromRGB(255,255,255)
a0.BackgroundTransparency=0.949999988079071
a0.BorderColor3=Color3.fromRGB(0,0,0)
a0.BorderSizePixel=0
a0.ClipsDescendants=true
a0.Position=UDim2.new(1,-7,0.5,0)
a0.Size=UDim2.new(0,148,0,30)
a0.Name="InputFrame"
a0.Parent=aX

a1.CornerRadius=UDim.new(0,4)
a1.Parent=a0

a2.CursorPosition=-1
a2.Font=Enum.Font.GothamBold
a2.PlaceholderColor3=Color3.fromRGB(120.00000044703484,120.00000044703484,120.00000044703484)
a2.PlaceholderText="Write your input there"
a2.Text=""
a2.TextColor3=Color3.fromRGB(255,255,255)
a2.TextSize=12
a2.TextXAlignment=Enum.TextXAlignment.Left
a2.AnchorPoint=Vector2.new(0,0.5)
a2.BackgroundColor3=Color3.fromRGB(255,255,255)
a2.BackgroundTransparency=0.9990000128746033
a2.BorderColor3=Color3.fromRGB(0,0,0)
a2.BorderSizePixel=0
a2.Position=UDim2.new(0,5,0.5,0)
a2.Size=UDim2.new(1,-10,1,-8)
a2.Name="InputTextBox"
a2.Parent=a0
function aW.Set(a3,a4)
a2.Text=a4
aW.Value=a4
aV.Callback(a4)
end
a2.FocusLost:Connect(function()
aW:Set(a2.Text)
end)
aS=aS+1
return aW
end
function aR.AddDropdown(aT,aU)
local aV=aU or{}
aV.Title=aV.Title or"Title"
aV.Description=aV.Description or""
aV.Multi=aV.Multi or false
aV.Options=aV.Options or{}
aV.Default=aV.Default or{}
aV.Callback=aV.Callback or function()end

local aW={Value=aV.Default,Options=aV.Options}

local aX=Instance.new"Frame";
local aY=Instance.new"TextButton";
local aZ=Instance.new"UICorner";
local a_=Instance.new"TextLabel";
local a0=Instance.new"TextLabel";
local a1=Instance.new"Frame";
local a2=Instance.new"UICorner";
local a3=Instance.new"TextLabel";
local a4=Instance.new"ImageLabel";

aX.BackgroundColor3=Color3.fromRGB(255,255,255)
aX.BackgroundTransparency=0.9350000023841858
aX.BorderColor3=Color3.fromRGB(0,0,0)
aX.BorderSizePixel=0
aX.LayoutOrder=aS
aX.Size=UDim2.new(1,0,0,35)
aX.Name="Dropdown"
aX.Parent=aN

aY.Font=Enum.Font.SourceSans
aY.Text=""
aY.TextColor3=Color3.fromRGB(0,0,0)
aY.TextSize=14
aY.BackgroundColor3=Color3.fromRGB(0,0,0)
aY.BackgroundTransparency=0.9990000128746033
aY.BorderColor3=Color3.fromRGB(0,0,0)
aY.BorderSizePixel=0
aY.Size=UDim2.new(1,0,1,0)
aY.Name="ToggleButton"
aY.Parent=aX

aZ.CornerRadius=UDim.new(0,4)
aZ.Parent=aX

a_.Font=Enum.Font.GothamBold
a_.Text=aV.Title
a_.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
a_.TextSize=13
a_.TextXAlignment=Enum.TextXAlignment.Left
a_.TextYAlignment=Enum.TextYAlignment.Top
a_.BackgroundColor3=Color3.fromRGB(255,255,255)
a_.BackgroundTransparency=0.9990000128746033
a_.BorderColor3=Color3.fromRGB(0,0,0)
a_.BorderSizePixel=0
a_.Position=UDim2.new(0,10,0,10)
a_.Size=UDim2.new(1,-180,0,13)
a_.Name="DropdownTitle"
a_.Parent=aX

if#aV.Description>0 then
a0.Font=Enum.Font.GothamBold
a0.Text=aV.Description
a0.TextColor3=Color3.fromRGB(255,255,255)
a0.TextSize=12
a0.TextTransparency=0.6000000238418579
a0.TextWrapped=true
a0.TextXAlignment=Enum.TextXAlignment.Left
a0.TextYAlignment=Enum.TextYAlignment.Bottom
a0.BackgroundColor3=Color3.fromRGB(255,255,255)
a0.BackgroundTransparency=0.9990000128746033
a0.BorderColor3=Color3.fromRGB(0,0,0)
a0.BorderSizePixel=0
a0.Position=UDim2.new(0,10,0,23)
a0.Size=UDim2.new(1,-180,0,12)
a0.Name="DropdownContent"
a0.Parent=aX

a0.Size=UDim2.new(1,-180,0,12+(12*(a0.TextBounds.X//a0.AbsoluteSize.X)))
a0.TextWrapped=true
aX.Size=UDim2.new(1,0,0,a0.AbsoluteSize.Y+33)

a0:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
a0.TextWrapped=false
a0.Size=UDim2.new(1,-180,0,12+(12*(a0.TextBounds.X//a0.AbsoluteSize.X)))
aX.Size=UDim2.new(1,0,0,a0.AbsoluteSize.Y+33)
a0.TextWrapped=true
UpdateSizeSection()
end)
end

a1.AnchorPoint=Vector2.new(1,0.5)
a1.BackgroundColor3=Color3.fromRGB(255,255,255)
a1.BackgroundTransparency=0.949999988079071
a1.BorderColor3=Color3.fromRGB(0,0,0)
a1.BorderSizePixel=0
a1.Position=UDim2.new(1,-7,0.5,0)
a1.Size=UDim2.new(0,140,0,25)
a1.Name="SelectOptionsFrame"
a1.LayoutOrder=al
a1.Parent=aX

a2.CornerRadius=UDim.new(0,4)
a2.Parent=a1

aY.Activated:Connect(function()
if not Z.Visible then
Z.Visible=true
ai:JumpToIndex(a1.LayoutOrder)
b:Create(Z,TweenInfo.new(0.3),{BackgroundTransparency=0.7}):Play()
b:Create(ad,TweenInfo.new(0.3),{Position=UDim2.new(1,-11,0.5,0)}):Play()
end
end)

a3.Font=Enum.Font.GothamBold
a3.Text=""
a3.TextColor3=Color3.fromRGB(255,255,255)
a3.TextSize=12
a3.TextTransparency=0.6000000238418579
a3.TextWrapped=true
a3.TextXAlignment=Enum.TextXAlignment.Left
a3.AnchorPoint=Vector2.new(0,0.5)
a3.BackgroundColor3=Color3.fromRGB(255,255,255)
a3.BackgroundTransparency=0.9990000128746033
a3.BorderColor3=Color3.fromRGB(0,0,0)
a3.BorderSizePixel=0
a3.Position=UDim2.new(0,5,0.5,0)
a3.Size=UDim2.new(1,-30,1,-8)
a3.Name="OptionSelecting"
a3.Parent=a1

a4.Image="rbxassetid://16851841101"
a4.ImageColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
a4.AnchorPoint=Vector2.new(1,0.5)
a4.BackgroundColor3=Color3.fromRGB(255,255,255)
a4.BackgroundTransparency=0.9990000128746033
a4.BorderColor3=Color3.fromRGB(0,0,0)
a4.BorderSizePixel=0
a4.Position=UDim2.new(1,0,0.5,0)
a4.Size=UDim2.new(0,25,0,25)
a4.Name="OptionImg"
a4.Parent=a1

local a5=Instance.new"ScrollingFrame";
local a6=Instance.new"UIListLayout";

a5.CanvasSize=UDim2.new(0,0,0,0)
a5.ScrollBarImageColor3=Color3.fromRGB(0,0,0)
a5.ScrollBarThickness=0
a5.Active=true
a5.LayoutOrder=al
a5.BackgroundColor3=Color3.fromRGB(255,255,255)
a5.BackgroundTransparency=0.9990000128746033
a5.BorderColor3=Color3.fromRGB(0,0,0)
a5.BorderSizePixel=0
a5.Size=UDim2.new(1,0,1,0)
a5.Name="ScrollSelect"
a5.Parent=ah

a6.Padding=UDim.new(0,3)
a6.SortOrder=Enum.SortOrder.LayoutOrder
a6.Parent=a5

local a7=0
function aW.Clear(a8)
for a9,ba in a5:GetChildren()do
if ba.Name=="Option"then
aW.Value={}
aW.Options={}
a3.Text="Select Options"
ba:Destroy()
end
end
end
function aW.Set(a8,a9)
aW.Value=a9 or aW.Value
for ba,bb in a5:GetChildren()do
if bb.Name~="UIListLayout"and not((typeof(aW.Value)=="table"and table.find(aW.Value,bb.OptionText.Text))or(typeof(aW.Value)=="string"and string.find(bb.OptionText.Text,aW.Value)))then
b:Create(
bb.ChooseFrame,
TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Size=UDim2.new(0,0,0,0)}
):Play()
b:Create(
bb.ChooseFrame.UIStroke,
TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Transparency=0.999}
):Play()
b:Create(
bb,
TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.999}
):Play()
elseif bb.Name~="UIListLayout"and((typeof(aW.Value)=="table"and table.find(aW.Value,bb.OptionText.Text))or(typeof(aW.Value)=="string"and string.find(bb.OptionText.Text,aW.Value)))then
b:Create(
bb.ChooseFrame.UIStroke,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Transparency=0}
):Play()
b:Create(
bb.ChooseFrame,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Size=UDim2.new(0,1,0,12)}
):Play()
b:Create(
bb,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.935}
):Play()
end
end
if aV.Multi and typeof(aW.Value)=="table"then
local ba=table.concat(aW.Value,", ")
if ba==""then
a3.Text="Select Options"
else
a3.Text=tostring(ba)
end
aV.Callback(aW.Value)
else
aV.Callback(aW.Value)
end
end
function aW.AddOption(a8,a9)
a9=a9 or"Option"
local ba=Instance.new"Frame";
local bb=Instance.new"UICorner";
local bc=Instance.new"TextButton";
local bd=Instance.new"TextLabel"
local be=Instance.new"Frame";
local bf=Instance.new"UIStroke";
local bg=Instance.new"UICorner";

ba.BackgroundColor3=Color3.fromRGB(255,255,255)
ba.BackgroundTransparency=0.999
ba.BorderColor3=Color3.fromRGB(0,0,0)
ba.BorderSizePixel=0
ba.LayoutOrder=a7
ba.Size=UDim2.new(1,0,0,30)
ba.Name="Option"
ba.Parent=a5

bb.CornerRadius=UDim.new(0,3)
bb.Parent=ba

bc.Font=Enum.Font.GothamBold
bc.Text=""
bc.TextColor3=Color3.fromRGB(255,255,255)
bc.TextSize=13
bc.TextXAlignment=Enum.TextXAlignment.Left
bc.BackgroundColor3=Color3.fromRGB(255,255,255)
bc.BackgroundTransparency=0.9990000128746033
bc.BorderColor3=Color3.fromRGB(0,0,0)
bc.BorderSizePixel=0
bc.Size=UDim2.new(1,0,1,0)
bc.Name="OptionButton"
bc.Parent=ba

bd.Font=Enum.Font.GothamBold
bd.Text=a9
bd.TextSize=13
bd.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
bd.TextXAlignment=Enum.TextXAlignment.Left
bd.TextYAlignment=Enum.TextYAlignment.Top
bd.BackgroundColor3=Color3.fromRGB(255,255,255)
bd.BackgroundTransparency=0.9990000128746033
bd.BorderColor3=Color3.fromRGB(0,0,0)
bd.BorderSizePixel=0
bd.Position=UDim2.new(0,8,0,8)
bd.Size=UDim2.new(1,-100,0,13)
bd.Name="OptionText"
bd.Parent=ba

be.AnchorPoint=Vector2.new(0,0.5)
be.BackgroundColor3=Color3.fromRGB(255,255,255)
be.BorderColor3=Color3.fromRGB(0,0,0)
be.BorderSizePixel=0
be.Position=UDim2.new(0,2,0.5,0)
be.Size=UDim2.new(0,0,0,0)
be.Name="ChooseFrame"
be.Parent=ba

bf.Color=Color3.fromRGB(255,255,255)
bf.Thickness=1.600000023841858
bf.Transparency=0.999
bf.Parent=be

bg.Parent=be

bc.Activated:Connect(function()
CircleClick(bc,d.X,d.Y)
if aV.Multi then
if ba.BackgroundTransparency>0.95 then
table.insert(aW.Value,a9)
aW:Set(aW.Value)
else
for bh,bi in pairs(aW.Value)do
if bi==a9 then
table.remove(aW.Value,bh)
break
end
end
aW:Set(aW.Value)
end
else
aW.Value=a9
aW:Set(aW.Value)
end
end)
local bh=0
for bi,bj in a5:GetChildren()do
if bj.Name~="UIListLayout"then
bh=bh+3+bj.Size.Y.Offset
end
end
a5.CanvasSize=UDim2.new(0,0,0,bh)
a7=a7+1
end
function aW.Refresh(a8,a9,ba)
a9=a9 or{}
ba=ba or{}
aW:Clear()
for bb,bc in pairs(a9)do
aW:AddOption(bc)
wait()
end
aW.Options=a9
aW:Set(ba)
end
aW:Refresh(aW.Options,aW.Value)
aS=aS+1
al=al+1
return aW
end
az=az+1
return aR
end
ak=ak+1
return ay
end
return aj
end
return f
