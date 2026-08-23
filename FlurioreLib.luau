local a=game:GetService"UserInputService"
local b=game:GetService"TweenService"
local c=game:GetService"Players".LocalPlayer
local d=c:GetMouse()
local e=(gethui and gethui()or game:GetService'CoreGui')
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

local S=Instance.new"ImageButton"
local T=Instance.new"UICorner"
local U=Instance.new'Frame'
U.Parent=k
U.Size=UDim2.new(0,60,0,60)
U.BackgroundTransparency=0
U.AnchorPoint=Vector2.new(0.5,0.5)
U.Position=UDim2.new(0.2,0,0.2,0)
U.BackgroundColor3=Color3.new(0,0,0)
U.BorderColor3=Color3.fromRGB(0,0,0)
U.BorderSizePixel=0
U.Visible=false
S.Parent=U
S.Size=UDim2.new(0,55,0,45)
S.Image="rbxassetid://101533193988556"
S.AnchorPoint=Vector2.new(0.5,0.5)
S.Position=UDim2.new(0.5,0,0.5,0)
S.BackgroundColor3=Color3.new(0,0,0)
S.BorderColor3=Color3.fromRGB(0,0,0)
S.BackgroundTransparency=1
S.BorderSizePixel=0
S.AutoButtonColor=false
T.Parent=U
T.CornerRadius=UDim.new(0,100)
S.MouseButton1Click:Connect(function()
S.Size=UDim2.new(0,55,0,45)
local V=b:Create(S,TweenInfo.new(0.85,Enum.EasingStyle.Quad),{Rotation=360,Size=UDim2.new(0,55,0,45)})
V:Play()
V.Completed:Connect(function()
S.Rotation=0
end)
l.Visible=not l.Visible
U.Visible=not U.Visible
end)

local V=game.Players.LocalPlayer.Name
local W=#V
local X=math.floor(W/2)
local Y=V:sub(1,X)
local Z=string.rep("*",W-X)
R.Text=Y..Z

function j.DestroyGui(_)
if e:FindFirstChild"NightGui"then
k:Destroy()
end
end
local _=l.Position
local aa=l.Size
u.Activated:Connect(function()
CircleClick(u,d.X,d.Y)
if v.Image=="rbxassetid://9886659406"then
v.Image="rbxassetid://9886659001"
_=l.Position
aa=l.Size
b:Create(l,TweenInfo.new(0.3),{Position=UDim2.new(0,0,0,0)}):Play()
b:Create(l,TweenInfo.new(0.3),{Size=UDim2.new(1,0,1,0)}):Play()
else
v.Image="rbxassetid://9886659406"
b:Create(l,TweenInfo.new(0.3),{Position=_}):Play()
b:Create(l,TweenInfo.new(0.3),{Size=aa}):Play()
end
end)
y.Activated:Connect(function()
CircleClick(y,d.X,d.Y)
U.Visible=true
l.Visible=false
end)
w.Activated:Connect(function()
CircleClick(w,d.X,d.Y)
l.Visible=false
end)
function j.ToggleUI(ab)
game:GetService"VirtualInputManager":SendKeyEvent(true,"RightShift",false,game)
game:GetService"VirtualInputManager":SendKeyEvent(false,"RightShift",false,game)
end
a.InputBegan:Connect(function(ab)
if ab.KeyCode==Enum.KeyCode.RightControl then
l.Visible=not l.Visible
U.Visible=not U.Visible
end
end)

MakeDraggable(q,l)
t.Position=UDim2.new(0,r.TextBounds.X+15,0,0)

local ab=Instance.new"Frame";
local ac=Instance.new"Frame";
local ad=Instance.new"ImageLabel";
local ae=Instance.new"UICorner";
local af=Instance.new"TextButton";

ab.AnchorPoint=Vector2.new(1,1)
ab.BackgroundColor3=Color3.fromRGB(0,0,0)
ab.BackgroundTransparency=0.999
ab.BorderColor3=Color3.fromRGB(0,0,0)
ab.BorderSizePixel=0
ab.ClipsDescendants=true
ab.Position=UDim2.new(1,8,1,8)
ab.Size=UDim2.new(1,154,1,54)
ab.Visible=false
ab.Name="MoreBlur"
ab.Parent=D

ac.BackgroundTransparency=1
ac.BorderSizePixel=0
ac.Size=UDim2.new(1,0,1,0)
ac.ZIndex=0
ac.Name="DropShadowHolder"
ac.Parent=ab

ad.Image="rbxassetid://6015897843"
ad.ImageColor3=Color3.fromRGB(0,0,0)
ad.ImageTransparency=0.5
ad.ScaleType=Enum.ScaleType.Slice
ad.SliceCenter=Rect.new(49,49,450,450)
ad.AnchorPoint=Vector2.new(0.5,0.5)
ad.BackgroundTransparency=1
ad.BorderSizePixel=0
ad.Position=UDim2.new(0.5,0,0.5,0)
ad.Size=UDim2.new(1,35,1,35)
ad.ZIndex=0
ad.Name="DropShadow"
ad.Parent=ac

ae.Parent=ab

af.Font=Enum.Font.SourceSans
af.Text=""
af.TextColor3=Color3.fromRGB(0,0,0)
af.TextSize=14
af.BackgroundColor3=Color3.fromRGB(255,255,255)
af.BackgroundTransparency=0.999
af.BorderColor3=Color3.fromRGB(0,0,0)
af.BorderSizePixel=0
af.Size=UDim2.new(1,0,1,0)
af.Name="ConnectButton"
af.Parent=ab

local ag=Instance.new"Frame";
local ah=Instance.new"UICorner";
local ai=Instance.new"UIStroke";
local aj=Instance.new"Frame";
local ak=Instance.new"Folder";
local al=Instance.new"UIPageLayout";

ag.AnchorPoint=Vector2.new(1,0.5)
ag.BackgroundColor3=Color3.fromRGB(30.00000011175871,30.00000011175871,30.00000011175871)
ag.BorderColor3=Color3.fromRGB(0,0,0)
ag.BorderSizePixel=0
ag.LayoutOrder=1
ag.Position=UDim2.new(1,172,0.5,0)
ag.Size=UDim2.new(0,160,1,-16)
ag.Name="DropdownSelect"
ag.ClipsDescendants=true
ag.Parent=ab

af.Activated:Connect(function()
if ab.Visible then
b:Create(ab,TweenInfo.new(0.3),{BackgroundTransparency=0.999}):Play()
b:Create(ag,TweenInfo.new(0.3),{Position=UDim2.new(1,172,0.5,0)}):Play()
task.wait(0.3)
ab.Visible=false
end
end)
ah.CornerRadius=UDim.new(0,3)
ah.Parent=ag

ai.Color=Color3.fromRGB(255,255,255)
ai.Thickness=2.5
ai.Transparency=0.8
ai.Parent=ag

aj.AnchorPoint=Vector2.new(0.5,0.5)
aj.BackgroundColor3=Color3.fromRGB(0,0,0)
aj.BackgroundTransparency=0.9990000128746033
aj.BorderColor3=Color3.fromRGB(0,0,0)
aj.BorderSizePixel=0
aj.LayoutOrder=1
aj.Position=UDim2.new(0.5,0,0.5,0)
aj.Size=UDim2.new(1,-10,1,-10)
aj.Name="DropdownSelectReal"
aj.Parent=ag

ak.Name="DropdownFolder"
ak.Parent=aj

al.EasingDirection=Enum.EasingDirection.InOut
al.EasingStyle=Enum.EasingStyle.Quad
al.TweenTime=0.009999999776482582
al.SortOrder=Enum.SortOrder.LayoutOrder
al.Archivable=false
al.Name="DropPageLayout"
al.Parent=ak

local am={}
local an=0
local ao=0
function am.AddTab(ap,aq)
local ar=aq or{}
ar.Title=ar.Title or"Tab"
ar.Icon=ar.Icon or""

local as=Instance.new"ScrollingFrame";
local at=Instance.new"UIListLayout";

as.ScrollBarImageColor3=Color3.fromRGB(80.00000283122063,80.00000283122063,80.00000283122063)
as.ScrollBarThickness=0
as.Active=true
as.LayoutOrder=an
as.BackgroundColor3=Color3.fromRGB(255,255,255)
as.BackgroundTransparency=0.9990000128746033
as.BorderColor3=Color3.fromRGB(0,0,0)
as.BorderSizePixel=0
as.Size=UDim2.new(1,0,1,0)
as.Name="ScrolLayers"
as.Parent=H

at.Padding=UDim.new(0,3)
at.SortOrder=Enum.SortOrder.LayoutOrder
at.Parent=as

local au=Instance.new"Frame";
local av=Instance.new"UICorner";
local aw=Instance.new"TextButton";
local ax=Instance.new"TextLabel"
local ay=Instance.new"ImageLabel";
local az=Instance.new"UIStroke";
local aA=Instance.new"UICorner";

au.BackgroundColor3=Color3.fromRGB(255,255,255)
if an==0 then
au.BackgroundTransparency=0.9200000166893005
else
au.BackgroundTransparency=0.9990000128746033
end
au.BorderColor3=Color3.fromRGB(0,0,0)
au.BorderSizePixel=0
au.LayoutOrder=an
au.Size=UDim2.new(1,0,0,30)
au.Name="Tab"
au.Parent=J

av.CornerRadius=UDim.new(0,4)
av.Parent=au

aw.Font=Enum.Font.GothamBold
aw.Text=""
aw.TextColor3=Color3.fromRGB(255,255,255)
aw.TextSize=13
aw.TextXAlignment=Enum.TextXAlignment.Left
aw.BackgroundColor3=Color3.fromRGB(255,255,255)
aw.BackgroundTransparency=0.9990000128746033
aw.BorderColor3=Color3.fromRGB(0,0,0)
aw.BorderSizePixel=0
aw.Size=UDim2.new(1,0,1,0)
aw.Name="TabButton"
aw.Parent=au

ax.Font=Enum.Font.GothamBold
ax.Text=ar.Title
ax.TextColor3=Color3.fromRGB(255,255,255)
ax.TextSize=13
ax.TextXAlignment=Enum.TextXAlignment.Left
ax.BackgroundColor3=Color3.fromRGB(255,255,255)
ax.BackgroundTransparency=0.9990000128746033
ax.BorderColor3=Color3.fromRGB(0,0,0)
ax.BorderSizePixel=0
ax.Size=UDim2.new(1,0,1,0)
ax.Position=UDim2.new(0,30,0,0)
ax.Name="TabName"
ax.Parent=au

ay.Image=ar.Icon
ay.BackgroundColor3=Color3.fromRGB(255,255,255)
ay.BackgroundTransparency=0.9990000128746033
ay.BorderColor3=Color3.fromRGB(0,0,0)
ay.BorderSizePixel=0
ay.Position=UDim2.new(0,9,0,7)
ay.Size=UDim2.new(0,16,0,16)
ay.Name="FeatureImg"
ay.Parent=au
if an==0 then
I:JumpToIndex(0)
F.Text=ar.Title
local aB=Instance.new"Frame";
aB.BackgroundColor3=Color3.fromRGB(255,255,255)
aB.BorderColor3=Color3.fromRGB(0,0,0)
aB.BorderSizePixel=0
aB.Position=UDim2.new(0,2,0,9)
aB.Size=UDim2.new(0,1,0,12)
aB.Name="ChooseFrame"
aB.Parent=au

az.Color=Color3.fromRGB(255,255,255)
az.Thickness=1.600000023841858
az.Parent=aB

aA.Parent=aB
end
aw.Activated:Connect(function()
CircleClick(aw,d.X,d.Y)
local aB
for aC,aD in J:GetChildren()do
for aE,aF in aD:GetChildren()do
if aF.Name=="ChooseFrame"then
aB=aF
break
end
end
end
if aB~=nil and au.LayoutOrder~=I.CurrentPage.LayoutOrder then
for aC,aD in J:GetChildren()do
if aD.Name=="Tab"then
b:Create(
aD,
TweenInfo.new(0.3,Enum.EasingStyle.Back,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.9990000128746033}
):Play()
end
end
b:Create(
au,
TweenInfo.new(0.6,Enum.EasingStyle.Back,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.9200000166893005}
):Play()
b:Create(
aB,
TweenInfo.new(0.5,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,2,0,9+(33*au.LayoutOrder))}
):Play()
I:JumpToIndex(au.LayoutOrder)
task.wait(0.05)
F.Text=ar.Title
b:Create(
aB,
TweenInfo.new(0.35,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Size=UDim2.new(0,1,0,20)}
):Play()
task.wait(0.2)
b:Create(
aB,
TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Size=UDim2.new(0,1,0,12)}
):Play()
end
end)

local aB={}
local aC=0
function aB.AddSection(aD,aE)
local aF=aE or"Title"
local aG=Instance.new"Frame";
local aH=Instance.new"Frame";
local aI=Instance.new"UICorner";
local aJ=Instance.new"UIGradient";

aG.BackgroundColor3=Color3.fromRGB(255,255,255)
aG.BackgroundTransparency=0.9990000128746033
aG.BorderColor3=Color3.fromRGB(0,0,0)
aG.BorderSizePixel=0
aG.LayoutOrder=aC
aG.ClipsDescendants=true
aG.LayoutOrder=1
aG.Size=UDim2.new(1,0,0,30)
aG.Name="Section"
aG.Parent=as

local aK=Instance.new"Frame";
local aL=Instance.new"UICorner";
Instance.new"UIStroke";
local aM=Instance.new"TextButton";
local aN=Instance.new"Frame";
local aO=Instance.new"ImageLabel";
local aP=Instance.new"TextLabel";

aK.AnchorPoint=Vector2.new(0.5,0)
aK.BackgroundColor3=Color3.fromRGB(255,255,255)
aK.BackgroundTransparency=0.9350000023841858
aK.BorderColor3=Color3.fromRGB(0,0,0)
aK.BorderSizePixel=0
aK.LayoutOrder=1
aK.Position=UDim2.new(0.5,0,0,0)
aK.Size=UDim2.new(1,1,0,30)
aK.Name="SectionReal"
aK.Parent=aG

aL.CornerRadius=UDim.new(0,4)
aL.Parent=aK

aM.Font=Enum.Font.SourceSans
aM.Text=""
aM.TextColor3=Color3.fromRGB(0,0,0)
aM.TextSize=14
aM.BackgroundColor3=Color3.fromRGB(255,255,255)
aM.BackgroundTransparency=0.9990000128746033
aM.BorderColor3=Color3.fromRGB(0,0,0)
aM.BorderSizePixel=0
aM.Size=UDim2.new(1,0,1,0)
aM.Name="SectionButton"
aM.Parent=aK

aN.AnchorPoint=Vector2.new(1,0.5)
aN.BackgroundColor3=Color3.fromRGB(0,0,0)
aN.BackgroundTransparency=0.9990000128746033
aN.BorderColor3=Color3.fromRGB(0,0,0)
aN.BorderSizePixel=0
aN.Position=UDim2.new(1,-5,0.5,0)
aN.Size=UDim2.new(0,20,0,20)
aN.Name="FeatureFrame"
aN.Parent=aK

aO.Image="rbxassetid://16851841101"
aO.AnchorPoint=Vector2.new(0.5,0.5)
aO.BackgroundColor3=Color3.fromRGB(255,255,255)
aO.BackgroundTransparency=0.9990000128746033
aO.BorderColor3=Color3.fromRGB(0,0,0)
aO.BorderSizePixel=0
aO.Position=UDim2.new(0.5,0,0.5,0)
aO.Rotation=-90
aO.Size=UDim2.new(1,6,1,6)
aO.Name="FeatureImg"
aO.Parent=aN

aP.Font=Enum.Font.GothamBold
aP.Text=aF
aP.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
aP.TextSize=13
aP.TextXAlignment=Enum.TextXAlignment.Left
aP.TextYAlignment=Enum.TextYAlignment.Top
aP.AnchorPoint=Vector2.new(0,0.5)
aP.BackgroundColor3=Color3.fromRGB(255,255,255)
aP.BackgroundTransparency=0.9990000128746033
aP.BorderColor3=Color3.fromRGB(0,0,0)
aP.BorderSizePixel=0
aP.Position=UDim2.new(0,10,0.5,0)
aP.Size=UDim2.new(1,-50,0,13)
aP.Name="SectionTitle"
aP.Parent=aK

aH.BackgroundColor3=Color3.fromRGB(255,255,255)
aH.BorderColor3=Color3.fromRGB(0,0,0)
aH.AnchorPoint=Vector2.new(0.5,0)
aH.BorderSizePixel=0
aH.Position=UDim2.new(0.5,0,0,33)
aH.Size=UDim2.new(0,0,0,2)
aH.Name="SectionDecideFrame"
aH.Parent=aG

aI.Parent=aH

aJ.Color=ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.fromRGB(20,20,20)),
ColorSequenceKeypoint.new(0.5,Color3.fromRGB(255,255,255)),
ColorSequenceKeypoint.new(1,Color3.fromRGB(20,20,20))
}
aJ.Parent=aH

local aQ=Instance.new"Frame";
local aR=Instance.new"UICorner";
local aS=Instance.new"UIListLayout";

aQ.AnchorPoint=Vector2.new(0.5,0)
aQ.BackgroundColor3=Color3.fromRGB(255,255,255)
aQ.BackgroundTransparency=0.9990000128746033
aQ.BorderColor3=Color3.fromRGB(0,0,0)
aQ.BorderSizePixel=0
aQ.ClipsDescendants=true
aQ.LayoutOrder=1
aQ.Position=UDim2.new(0.5,0,0,38)
aQ.Size=UDim2.new(1,0,0,100)
aQ.Name="SectionAdd"
aQ.Parent=aG

aR.CornerRadius=UDim.new(0,2)
aR.Parent=aQ

aS.Padding=UDim.new(0,3)
aS.SortOrder=Enum.SortOrder.LayoutOrder
aS.Parent=aQ
local aT=false
local function UpdateSizeScroll()
local aU=0
for aV,aW in as:GetChildren()do
if aW.Name~="UIListLayout"then
aU=aU+3+aW.Size.Y.Offset
end
end
as.CanvasSize=UDim2.new(0,0,0,aU)
end
local function UpdateSizeSection()
if aT then
local aU=38
for aV,aW in aQ:GetChildren()do
if aW.Name~="UIListLayout"and aW.Name~="UICorner"then
aU=aU+aW.Size.Y.Offset+3
end
end
b:Create(aN,TweenInfo.new(0.5),{Rotation=90}):Play()
b:Create(aG,TweenInfo.new(0.5),{Size=UDim2.new(1,1,0,aU)}):Play()
b:Create(aQ,TweenInfo.new(0.5),{Size=UDim2.new(1,0,0,aU-38)}):Play()
b:Create(aH,TweenInfo.new(0.5),{Size=UDim2.new(1,0,0,2)}):Play()
task.wait(0.5)
UpdateSizeScroll()
end
end
aM.Activated:Connect(function()
CircleClick(aM,d.X,d.Y)
if aT then
b:Create(aN,TweenInfo.new(0.5),{Rotation=0}):Play()
b:Create(aG,TweenInfo.new(0.5),{Size=UDim2.new(1,1,0,30)}):Play()
b:Create(aH,TweenInfo.new(0.5),{Size=UDim2.new(0,0,0,2)}):Play()
aT=false
task.wait(0.5)
UpdateSizeScroll()
else
aT=true
UpdateSizeSection()
end
end)
aQ.ChildAdded:Connect(UpdateSizeSection)
aQ.ChildRemoved:Connect(UpdateSizeSection)
UpdateSizeScroll()

local aU={}
local aV=0
function aU.AddParagraph(aW,aX)
local aY=aX or{}
aY.Title=aY.Title or"Title"
aY.Content=aY.Content or""
local aZ={}

local a_=Instance.new"Frame";
local a0=Instance.new"UICorner";
local a1=Instance.new"TextLabel";
local a2=Instance.new"TextLabel";

a_.BackgroundColor3=Color3.fromRGB(255,255,255)
a_.BackgroundTransparency=0.9350000023841858
a_.BorderColor3=Color3.fromRGB(0,0,0)
a_.BorderSizePixel=0
a_.LayoutOrder=aV
a_.Size=UDim2.new(1,0,0,35)
a_.Name="Paragraph"
a_.Parent=aQ

a0.CornerRadius=UDim.new(0,4)
a0.Parent=a_

a1.Font=Enum.Font.GothamBold
a1.Text=aY.Title
a1.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
a1.TextSize=13
a1.TextXAlignment=Enum.TextXAlignment.Left
a1.TextYAlignment=Enum.TextYAlignment.Top
a1.BackgroundColor3=Color3.fromRGB(255,255,255)
a1.BackgroundTransparency=0.9990000128746033
a1.BorderColor3=Color3.fromRGB(0,0,0)
a1.BorderSizePixel=0
a1.Position=UDim2.new(0,10,0,10)
a1.Size=UDim2.new(1,-16,0,13)
a1.Name="ParagraphTitle"
a1.Parent=a_

if#aY.Content>0 then
a2.Font=Enum.Font.GothamBold
a2.Text=aY.Content
a2.TextColor3=Color3.fromRGB(255,255,255)
a2.TextSize=12
a2.TextTransparency=0.6000000238418579
a2.TextXAlignment=Enum.TextXAlignment.Left
a2.TextYAlignment=Enum.TextYAlignment.Bottom
a2.BackgroundColor3=Color3.fromRGB(255,255,255)
a2.BackgroundTransparency=0.9990000128746033
a2.BorderColor3=Color3.fromRGB(0,0,0)
a2.BorderSizePixel=0
a2.Position=UDim2.new(0,10,0,23)
a2.Name="ParagraphContent"
a2.Parent=a_

a2.Size=UDim2.new(1,-16,0,12+(12*(a2.TextBounds.X//a2.AbsoluteSize.X)))
a2.TextWrapped=true
a_.Size=UDim2.new(1,0,0,a2.AbsoluteSize.Y+33)

a2:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
a2.TextWrapped=false
a2.Size=UDim2.new(1,-16,0,12+(12*(a2.TextBounds.X//a2.AbsoluteSize.X)))
a_.Size=UDim2.new(1,0,0,a2.AbsoluteSize.Y+33)
a2.TextWrapped=true
UpdateSizeSection()
end)
end

function aZ.SetTitle(a3,a4)
a1.Text=a4
end
function aZ.SetDesc(a3,a4)
a2.Text=a4
a2.TextWrapped=false
a2.Size=UDim2.new(1,-16,0,12+(12//a2.AbsoluteSize.X))
a2.TextWrapped=true
a_.Size=UDim2.new(1,0,0,a2.AbsoluteSize.Y+33)
end
aV=aV+1
return aZ
end
function aU.AddButton(aW,aX)
local aY=aX or{}
aY.Title=aY.Title or"Title"
aY.Description=aY.Description or""
aY.Icon=aY.Icon or"rbxassetid://16932740082"
aY.Callback=aY.Callback or function()end
local aZ={}

local a_=Instance.new"Frame";
local a0=Instance.new"UICorner";
local a1=Instance.new"TextLabel";
local a2=Instance.new"TextLabel";
local a3=Instance.new"TextButton";
local a4=Instance.new"Frame";
local a5=Instance.new"ImageLabel";

a_.BackgroundColor3=Color3.fromRGB(255,255,255)
a_.BackgroundTransparency=0.9350000023841858
a_.BorderColor3=Color3.fromRGB(0,0,0)
a_.BorderSizePixel=0
a_.LayoutOrder=aV
a_.Size=UDim2.new(1,0,0,35)
a_.Name="Button"
a_.Parent=aQ

a0.CornerRadius=UDim.new(0,4)
a0.Parent=a_

a1.Font=Enum.Font.GothamBold
a1.Text=aY.Title
a1.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
a1.TextSize=13
a1.TextXAlignment=Enum.TextXAlignment.Left
a1.TextYAlignment=Enum.TextYAlignment.Top
a1.BackgroundColor3=Color3.fromRGB(255,255,255)
a1.BackgroundTransparency=0.9990000128746033
a1.BorderColor3=Color3.fromRGB(0,0,0)
a1.BorderSizePixel=0
a1.Position=UDim2.new(0,10,0,10)
a1.Size=UDim2.new(1,-100,0,13)
a1.Name="ButtonTitle"
a1.Parent=a_

if#aY.Description>0 then
a2.Font=Enum.Font.GothamBold
a2.Text=aY.Description
a2.TextColor3=Color3.fromRGB(255,255,255)
a2.TextSize=12
a2.TextTransparency=0.6000000238418579
a2.TextXAlignment=Enum.TextXAlignment.Left
a2.TextYAlignment=Enum.TextYAlignment.Bottom
a2.BackgroundColor3=Color3.fromRGB(255,255,255)
a2.BackgroundTransparency=0.9990000128746033
a2.BorderColor3=Color3.fromRGB(0,0,0)
a2.BorderSizePixel=0
a2.Position=UDim2.new(0,10,0,23)
a2.Name="ButtonContent"
a2.Parent=a_
a2.Size=UDim2.new(1,-100,0,12)

a2.Size=UDim2.new(1,-100,0,12+(12*(a2.TextBounds.X//a2.AbsoluteSize.X)))
a2.TextWrapped=true
a_.Size=UDim2.new(1,0,0,a2.AbsoluteSize.Y+33)

a2:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
a2.TextWrapped=false
a2.Size=UDim2.new(1,-100,0,12+(12*(a2.TextBounds.X//a2.AbsoluteSize.X)))
a_.Size=UDim2.new(1,0,0,a2.AbsoluteSize.Y+33)
a2.TextWrapped=true
UpdateSizeSection()
end)
end

a3.Font=Enum.Font.SourceSans
a3.Text=""
a3.TextColor3=Color3.fromRGB(0,0,0)
a3.TextSize=14
a3.BackgroundColor3=Color3.fromRGB(0,0,0)
a3.BackgroundTransparency=0.9990000128746033
a3.BorderColor3=Color3.fromRGB(0,0,0)
a3.BorderSizePixel=0
a3.Size=UDim2.new(1,0,1,0)
a3.Name="ButtonButton"
a3.Parent=a_

a4.AnchorPoint=Vector2.new(1,0.5)
a4.BackgroundColor3=Color3.fromRGB(0,0,0)
a4.BackgroundTransparency=0.9990000128746033
a4.BorderColor3=Color3.fromRGB(0,0,0)
a4.BorderSizePixel=0
a4.Position=UDim2.new(1,-15,0.5,0)
a4.Size=UDim2.new(0,25,0,25)
a4.Name="FeatureFrame"
a4.Parent=a_

a5.Image=aY.Icon
a5.AnchorPoint=Vector2.new(0.5,0.5)
a5.BackgroundColor3=Color3.fromRGB(255,255,255)
a5.BackgroundTransparency=0.9990000128746033
a5.BorderColor3=Color3.fromRGB(0,0,0)
a5.BorderSizePixel=0
a5.Position=UDim2.new(0.5,0,0.5,0)
a5.Size=UDim2.new(1,0,1,0)
a5.Name="FeatureImg"
a5.Parent=a4

a3.Activated:Connect(function()
CircleClick(a3,d.X,d.Y)
aY.Callback()
end)
aV=aV+1
return aZ
end
function aU.AddToggle(aW,aX)
local aY=aX or{}
aY.Title=aY.Title or"Title"
aY.Description=aY.Description or""
aY.Default=aY.Default or false
aY.Callback=aY.Callback or function()end
local aZ={Value=aY.Default,Options=aY.Options,Selecting=aY.Selecting}

local a_=Instance.new"Frame";
local a0=Instance.new"UICorner";
local a1=Instance.new"TextLabel";
local a2=Instance.new"TextLabel";
local a3=Instance.new"TextButton";
Instance.new"Frame";
Instance.new"ImageLabel";
Instance.new"UICorner";
Instance.new"TextButton";
local a4=Instance.new"Frame";
local a5=Instance.new"UICorner";
local a6=Instance.new"UIStroke";
local a7=Instance.new"Frame";
local a8=Instance.new"UICorner";

a_.BackgroundColor3=Color3.fromRGB(255,255,255)
a_.BackgroundTransparency=0.9350000023841858
a_.BorderColor3=Color3.fromRGB(0,0,0)
a_.BorderSizePixel=0
a_.LayoutOrder=aV
a_.Size=UDim2.new(1,0,0,35)
a_.Name="Toggle"
a_.Parent=aQ

a0.CornerRadius=UDim.new(0,4)
a0.Parent=a_

a1.Font=Enum.Font.GothamBold
a1.Text=aY.Title
a1.TextSize=13
a1.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
a1.TextXAlignment=Enum.TextXAlignment.Left
a1.TextYAlignment=Enum.TextYAlignment.Top
a1.BackgroundColor3=Color3.fromRGB(255,255,255)
a1.BackgroundTransparency=0.9990000128746033
a1.BorderColor3=Color3.fromRGB(0,0,0)
a1.BorderSizePixel=0
a1.Position=UDim2.new(0,10,0,10)
a1.Size=UDim2.new(1,-100,0,13)
a1.Name="ToggleTitle"
a1.Parent=a_

if#aY.Description>0 then
a2.Font=Enum.Font.GothamBold
a2.Text=aY.Description
a2.TextColor3=Color3.fromRGB(255,255,255)
a2.TextSize=12
a2.TextTransparency=0.6000000238418579
a2.TextXAlignment=Enum.TextXAlignment.Left
a2.TextYAlignment=Enum.TextYAlignment.Bottom
a2.BackgroundColor3=Color3.fromRGB(255,255,255)
a2.BackgroundTransparency=0.9990000128746033
a2.BorderColor3=Color3.fromRGB(0,0,0)
a2.BorderSizePixel=0
a2.Position=UDim2.new(0,10,0,23)
a2.Size=UDim2.new(1,-100,0,12)
a2.Name="ToggleContent"
a2.Parent=a_

a2.Size=UDim2.new(1,-100,0,12+(12*(a2.TextBounds.X//a2.AbsoluteSize.X)))
a2.TextWrapped=true
a_.Size=UDim2.new(1,0,0,a2.AbsoluteSize.Y+33)

a2:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
a2.TextWrapped=false
a2.Size=UDim2.new(1,-100,0,12+(12*(a2.TextBounds.X//a2.AbsoluteSize.X)))
a_.Size=UDim2.new(1,0,0,a2.AbsoluteSize.Y+33)
a2.TextWrapped=true
UpdateSizeSection()
end)
end

a3.Font=Enum.Font.SourceSans
a3.Text=""
a3.TextColor3=Color3.fromRGB(0,0,0)
a3.TextSize=14
a3.BackgroundColor3=Color3.fromRGB(0,0,0)
a3.BackgroundTransparency=0.9990000128746033
a3.BorderColor3=Color3.fromRGB(0,0,0)
a3.BorderSizePixel=0
a3.Size=UDim2.new(1,0,1,0)
a3.Name="ToggleButton"
a3.Parent=a_

a4.AnchorPoint=Vector2.new(1,0.5)
a4.BackgroundColor3=Color3.fromRGB(255,255,255)
a4.BackgroundTransparency=0.9200000166893005
a4.BorderColor3=Color3.fromRGB(0,0,0)
a4.BorderSizePixel=0
a4.Position=UDim2.new(1,-20,0.5,0)
a4.Size=UDim2.new(0,35,0,15)
a4.Name="FeatureFrame"
a4.Parent=a_

a5.Parent=a4

a6.Color=Color3.fromRGB(255,255,255)
a6.Thickness=2
a6.Transparency=0.9
a6.Parent=a4

a7.BackgroundColor3=Color3.fromRGB(230.00000149011612,230.00000149011612,230.00000149011612)
a7.BorderColor3=Color3.fromRGB(0,0,0)
a7.BorderSizePixel=0
a7.Position=UDim2.new(0,0,0,0)
a7.Size=UDim2.new(0,14,0,14)
a7.Name="ToggleCircle"
a7.Parent=a4

a8.CornerRadius=UDim.new(0,15)
a8.Parent=a7

a3.Activated:Connect(function()
CircleClick(a3,d.X,d.Y)
aZ.Value=not aZ.Value
aZ:Set(aZ.Value)
end)
function aZ.Set(a9,ba)
aY.Callback(ba)
if ba then
b:Create(
a1,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{TextColor3=Color3.fromRGB(255,255,255)}
):Play()
b:Create(
a7,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,20,0,0),BackgroundColor3=Color3.fromRGB(0,0,0)}
):Play()
b:Create(
a6,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Color=Color3.fromRGB(255,255,255),Transparency=0}
):Play()
b:Create(
a4,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=0}
):Play()
else
b:Create(
a1,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)}
):Play()
b:Create(
a7,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Position=UDim2.new(0,0,0,0),BackgroundColor3=Color3.fromRGB(230.00000149011612,230.00000149011612,230.00000149011612)}
):Play()
b:Create(
a6,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Color=Color3.fromRGB(255,255,255),Transparency=0.9}
):Play()
b:Create(
a4,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundColor3=Color3.fromRGB(255,255,255),BackgroundTransparency=0.9200000166893005}
):Play()
end
end
aZ:Set(aZ.Value)
aV=aV+1
return aZ
end
function aU.AddSlider(aW,aX)
local aY=aX or{}
aY.Title=aY.Title or"Slider"
aY.Description=aY.Description or""
aY.Increment=aY.Increment or 1
aY.Min=aY.Min or 0
aY.Max=aY.Max or 100
aY.Default=aY.Default or 50
aY.Callback=aY.Callback or function()end
local aZ={Value=aY.Default}

local a_=Instance.new"Frame";
local a0=Instance.new"UICorner";
local a1=Instance.new"TextLabel";
local a2=Instance.new"TextLabel";
local a3=Instance.new"Frame";
local a4=Instance.new"UICorner";
local a5=Instance.new"TextBox";
local a6=Instance.new"Frame";
local a7=Instance.new"UICorner";
local a8=Instance.new"Frame";
local a9=Instance.new"UICorner";
Instance.new"UIStroke";
local ba=Instance.new"Frame";
local bb=Instance.new"UICorner";
local bc=Instance.new"UIStroke";
Instance.new"UIStroke";

a_.BackgroundColor3=Color3.fromRGB(255,255,255)
a_.BackgroundTransparency=0.9350000023841858
a_.BorderColor3=Color3.fromRGB(0,0,0)
a_.BorderSizePixel=0
a_.LayoutOrder=aV
a_.Size=UDim2.new(1,0,0,35)
a_.Name="Slider"
a_.Parent=aQ

a0.CornerRadius=UDim.new(0,4)
a0.Parent=a_

a1.Font=Enum.Font.GothamBold
a1.Text=aY.Title
a1.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
a1.TextSize=13
a1.TextXAlignment=Enum.TextXAlignment.Left
a1.TextYAlignment=Enum.TextYAlignment.Top
a1.BackgroundColor3=Color3.fromRGB(255,255,255)
a1.BackgroundTransparency=0.9990000128746033
a1.BorderColor3=Color3.fromRGB(0,0,0)
a1.BorderSizePixel=0
a1.Position=UDim2.new(0,10,0,10)
a1.Size=UDim2.new(1,-180,0,13)
a1.Name="SliderTitle"
a1.Parent=a_

if#aY.Description>0 then
a2.Font=Enum.Font.GothamBold
a2.Text=aY.Description
a2.TextColor3=Color3.fromRGB(255,255,255)
a2.TextSize=12
a2.TextTransparency=0.6000000238418579
a2.TextXAlignment=Enum.TextXAlignment.Left
a2.TextYAlignment=Enum.TextYAlignment.Bottom
a2.BackgroundColor3=Color3.fromRGB(255,255,255)
a2.BackgroundTransparency=0.9990000128746033
a2.BorderColor3=Color3.fromRGB(0,0,0)
a2.BorderSizePixel=0
a2.Position=UDim2.new(0,10,0,23)
a2.Size=UDim2.new(1,-180,0,12)
a2.Name="SliderContent"
a2.Parent=a_

a2.Size=UDim2.new(1,-180,0,12+(12*(a2.TextBounds.X//a2.AbsoluteSize.X)))
a2.TextWrapped=true
a_.Size=UDim2.new(1,0,0,a2.AbsoluteSize.Y+33)

a2:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
a2.TextWrapped=false
a2.Size=UDim2.new(1,-180,0,12+(12*(a2.TextBounds.X//a2.AbsoluteSize.X)))
a_.Size=UDim2.new(1,0,0,a2.AbsoluteSize.Y+33)
a2.TextWrapped=true
UpdateSizeSection()
end)
end

a3.AnchorPoint=Vector2.new(0,0.5)
a3.BackgroundColor3=Color3.fromRGB(255,255,255)
a3.BorderColor3=Color3.fromRGB(0,0,0)
a3.BorderSizePixel=0
a3.Position=UDim2.new(1,-155,0.5,0)
a3.Size=UDim2.new(0,28,0,20)
a3.Name="SliderInput"
a3.Parent=a_
a3.BackgroundTransparency=0.75

a4.CornerRadius=UDim.new(0,2)
a4.Parent=a3

a5.Font=Enum.Font.GothamBold
a5.Text="90"
a5.TextColor3=Color3.fromRGB(255,255,255)
a5.TextSize=13
a5.TextWrapped=true
a5.BackgroundColor3=Color3.fromRGB(0,0,0)
a5.BackgroundTransparency=0.9990000128746033
a5.BorderColor3=Color3.fromRGB(0,0,0)
a5.BorderSizePixel=0
a5.Position=UDim2.new(0,-1,0,0)
a5.Size=UDim2.new(1,0,1,0)
a5.Parent=a3

a6.AnchorPoint=Vector2.new(1,0.5)
a6.BackgroundColor3=Color3.fromRGB(255,255,255)
a6.BackgroundTransparency=0.800000011920929
a6.BorderColor3=Color3.fromRGB(0,0,0)
a6.BorderSizePixel=0
a6.Position=UDim2.new(1,-20,0.5,0)
a6.Size=UDim2.new(0,100,0,3)
a6.Name="SliderFrame"
a6.Parent=a_

a7.Parent=a6

a8.AnchorPoint=Vector2.new(0,0.5)
a8.BackgroundColor3=Color3.fromRGB(255,255,255)
a8.BorderColor3=Color3.fromRGB(0,0,0)
a8.BorderSizePixel=0
a8.Position=UDim2.new(0,0,0.5,0)
a8.Size=UDim2.new(0.899999976,0,0,1)
a8.Name="SliderDraggable"
a8.Parent=a6

a9.Parent=a8

ba.AnchorPoint=Vector2.new(1,0.5)
ba.BackgroundColor3=Color3.fromRGB(255,255,255)
ba.BorderColor3=Color3.fromRGB(0,0,0)
ba.BorderSizePixel=0
ba.Position=UDim2.new(1,4,0.5,0)
ba.Size=UDim2.new(0,8,0,8)
ba.Name="SliderCircle"
ba.Parent=a8

bb.Parent=ba

bc.Color=Color3.fromRGB(255,255,255)
bc.Parent=ba

local bd=false
local function Round(be,bf)
local bg=math.floor(be/bf+(math.sign(be)*0.5))*bf
if bg<0 then
bg=bg+bf
end
return bg
end
function aZ.Set(be,bf)
bf=math.clamp(Round(bf,aY.Increment),aY.Min,aY.Max)
aZ.Value=bf
a5.Text=tostring(bf)
b:Create(
a8,
TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{Size=UDim2.fromScale((bf-aY.Min)/(aY.Max-aY.Min),1)}
):Play()
end
a6.InputBegan:Connect(function(be)
if be.UserInputType==Enum.UserInputType.MouseButton1 then
bd=true
end
end)
a6.InputEnded:Connect(function(be)
if be.UserInputType==Enum.UserInputType.MouseButton1 then
bd=false
aY.Callback(aZ.Value)
end
end)
a.InputChanged:Connect(function(be)
if bd and be.UserInputType==Enum.UserInputType.MouseMovement then
local bf=math.clamp((be.Position.X-a6.AbsolutePosition.X)/a6.AbsoluteSize.X,0,1)
aZ:Set(aY.Min+((aY.Max-aY.Min)*bf))
end
end)
a5:GetPropertyChangedSignal"Text":Connect(function()
local be=a5.Text:gsub("[^%d]","")
if be~=""then
local bf=math.min(tonumber(be),aY.Max)
a5.Text=tostring(bf)
else
a5.Text=tostring(be)
end
end)
a5.FocusLost:Connect(function()
if a5.Text~=""then
aZ:Set(tonumber(a5.Text))
else
aZ:Set(0)
end
end)
aZ:Set(tonumber(aY.Default))
aV=aV+1
return aZ
end
function aU.AddInput(aW,aX)
local aY=aX or{}
aY.Title=aY.Title or"Title"
aY.Description=aY.Description or""
aY.Callback=aY.Callback or function()end
local aZ={Value=""}

local a_=Instance.new"Frame";
local a0=Instance.new"UICorner";
local a1=Instance.new"TextLabel";
local a2=Instance.new"TextLabel";
local a3=Instance.new"Frame";
local a4=Instance.new"UICorner";
local a5=Instance.new"TextBox";

a_.BackgroundColor3=Color3.fromRGB(255,255,255)
a_.BackgroundTransparency=0.9350000023841858
a_.BorderColor3=Color3.fromRGB(0,0,0)
a_.BorderSizePixel=0
a_.LayoutOrder=aV
a_.Size=UDim2.new(1,0,0,35)
a_.Name="Input"
a_.Parent=aQ

a0.CornerRadius=UDim.new(0,4)
a0.Parent=a_

a1.Font=Enum.Font.GothamBold
a1.Text="TextBox"
a1.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
a1.TextSize=13
a1.TextXAlignment=Enum.TextXAlignment.Left
a1.TextYAlignment=Enum.TextYAlignment.Top
a1.BackgroundColor3=Color3.fromRGB(255,255,255)
a1.BackgroundTransparency=0.9990000128746033
a1.BorderColor3=Color3.fromRGB(0,0,0)
a1.BorderSizePixel=0
a1.Position=UDim2.new(0,10,0,10)
a1.Size=UDim2.new(1,-180,0,13)
a1.Name="InputTitle"
a1.Parent=a_

if#aY.Description>0 then
a2.Font=Enum.Font.GothamBold
a2.Text="This is a TextBox"
a2.TextColor3=Color3.fromRGB(255,255,255)
a2.TextSize=12
a2.TextTransparency=0.6000000238418579
a2.TextWrapped=true
a2.TextXAlignment=Enum.TextXAlignment.Left
a2.TextYAlignment=Enum.TextYAlignment.Bottom
a2.BackgroundColor3=Color3.fromRGB(255,255,255)
a2.BackgroundTransparency=0.9990000128746033
a2.BorderColor3=Color3.fromRGB(0,0,0)
a2.BorderSizePixel=0
a2.Position=UDim2.new(0,10,0,23)
a2.Size=UDim2.new(1,-180,0,12)
a2.Name="InputContent"
a2.Parent=a_

a2.Size=UDim2.new(1,-180,0,12+(12*(a2.TextBounds.X//a2.AbsoluteSize.X)))
a2.TextWrapped=true
a_.Size=UDim2.new(1,0,0,a2.AbsoluteSize.Y+33)

a2:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
a2.TextWrapped=false
a2.Size=UDim2.new(1,-180,0,12+(12*(a2.TextBounds.X//a2.AbsoluteSize.X)))
a_.Size=UDim2.new(1,0,0,a2.AbsoluteSize.Y+33)
a2.TextWrapped=true
UpdateSizeSection()
end)
end
a3.AnchorPoint=Vector2.new(1,0.5)
a3.BackgroundColor3=Color3.fromRGB(255,255,255)
a3.BackgroundTransparency=0.949999988079071
a3.BorderColor3=Color3.fromRGB(0,0,0)
a3.BorderSizePixel=0
a3.ClipsDescendants=true
a3.Position=UDim2.new(1,-7,0.5,0)
a3.Size=UDim2.new(0,148,0,30)
a3.Name="InputFrame"
a3.Parent=a_

a4.CornerRadius=UDim.new(0,4)
a4.Parent=a3

a5.CursorPosition=-1
a5.Font=Enum.Font.GothamBold
a5.PlaceholderColor3=Color3.fromRGB(120.00000044703484,120.00000044703484,120.00000044703484)
a5.PlaceholderText="Write your input there"
a5.Text=""
a5.TextColor3=Color3.fromRGB(255,255,255)
a5.TextSize=12
a5.TextXAlignment=Enum.TextXAlignment.Left
a5.AnchorPoint=Vector2.new(0,0.5)
a5.BackgroundColor3=Color3.fromRGB(255,255,255)
a5.BackgroundTransparency=0.9990000128746033
a5.BorderColor3=Color3.fromRGB(0,0,0)
a5.BorderSizePixel=0
a5.Position=UDim2.new(0,5,0.5,0)
a5.Size=UDim2.new(1,-10,1,-8)
a5.Name="InputTextBox"
a5.Parent=a3
function aZ.Set(a6,a7)
a5.Text=a7
aZ.Value=a7
aY.Callback(a7)
end
a5.FocusLost:Connect(function()
aZ:Set(a5.Text)
end)
aV=aV+1
return aZ
end
function aU.AddDropdown(aW,aX)
local aY=aX or{}
aY.Title=aY.Title or"Title"
aY.Description=aY.Description or""
aY.Multi=aY.Multi or false
aY.Values=aY.Values or{}
aY.Default=aY.Default or(aY.Multi and{}or"")
aY.Callback=aY.Callback or function()end

local aZ={Value=(typeof(aY.Mutli)=="table"and aY.Default or{aY.Default}),Options=aY.Values}

local a_=Instance.new"Frame";
local a0=Instance.new"TextButton";
local a1=Instance.new"UICorner";
local a2=Instance.new"TextLabel";
local a3=Instance.new"TextLabel";
local a4=Instance.new"Frame";
local a5=Instance.new"UICorner";
local a6=Instance.new"TextLabel";
local a7=Instance.new"ImageLabel";

a_.BackgroundColor3=Color3.fromRGB(255,255,255)
a_.BackgroundTransparency=0.9350000023841858
a_.BorderColor3=Color3.fromRGB(0,0,0)
a_.BorderSizePixel=0
a_.LayoutOrder=aV
a_.Size=UDim2.new(1,0,0,35)
a_.Name="Dropdown"
a_.Parent=aQ

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
a0.Parent=a_

a1.CornerRadius=UDim.new(0,4)
a1.Parent=a_

a2.Font=Enum.Font.GothamBold
a2.Text=aY.Title
a2.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
a2.TextSize=13
a2.TextXAlignment=Enum.TextXAlignment.Left
a2.TextYAlignment=Enum.TextYAlignment.Top
a2.BackgroundColor3=Color3.fromRGB(255,255,255)
a2.BackgroundTransparency=0.9990000128746033
a2.BorderColor3=Color3.fromRGB(0,0,0)
a2.BorderSizePixel=0
a2.Position=UDim2.new(0,10,0,10)
a2.Size=UDim2.new(1,-180,0,13)
a2.Name="DropdownTitle"
a2.Parent=a_

if#aY.Description>0 then
a3.Font=Enum.Font.GothamBold
a3.Text=aY.Description
a3.TextColor3=Color3.fromRGB(255,255,255)
a3.TextSize=12
a3.TextTransparency=0.6000000238418579
a3.TextWrapped=true
a3.TextXAlignment=Enum.TextXAlignment.Left
a3.TextYAlignment=Enum.TextYAlignment.Bottom
a3.BackgroundColor3=Color3.fromRGB(255,255,255)
a3.BackgroundTransparency=0.9990000128746033
a3.BorderColor3=Color3.fromRGB(0,0,0)
a3.BorderSizePixel=0
a3.Position=UDim2.new(0,10,0,23)
a3.Size=UDim2.new(1,-180,0,12)
a3.Name="DropdownContent"
a3.Parent=a_

a3.Size=UDim2.new(1,-180,0,12+(12*(a3.TextBounds.X//a3.AbsoluteSize.X)))
a3.TextWrapped=true
a_.Size=UDim2.new(1,0,0,a3.AbsoluteSize.Y+33)

a3:GetPropertyChangedSignal"AbsoluteSize":Connect(function()
a3.TextWrapped=false
a3.Size=UDim2.new(1,-180,0,12+(12*(a3.TextBounds.X//a3.AbsoluteSize.X)))
a_.Size=UDim2.new(1,0,0,a3.AbsoluteSize.Y+33)
a3.TextWrapped=true
UpdateSizeSection()
end)
end

a4.AnchorPoint=Vector2.new(1,0.5)
a4.BackgroundColor3=Color3.fromRGB(255,255,255)
a4.BackgroundTransparency=0.949999988079071
a4.BorderColor3=Color3.fromRGB(0,0,0)
a4.BorderSizePixel=0
a4.Position=UDim2.new(1,-7,0.5,0)
a4.Size=UDim2.new(0,140,0,25)
a4.Name="SelectOptionsFrame"
a4.LayoutOrder=ao
a4.Parent=a_

a5.CornerRadius=UDim.new(0,4)
a5.Parent=a4

a0.Activated:Connect(function()
if not ab.Visible then
ab.Visible=true
al:JumpToIndex(a4.LayoutOrder)
b:Create(ab,TweenInfo.new(0.3),{BackgroundTransparency=0.7}):Play()
b:Create(ag,TweenInfo.new(0.3),{Position=UDim2.new(1,-11,0.5,0)}):Play()
end
end)

a6.Font=Enum.Font.GothamBold
a6.Text=""
a6.TextColor3=Color3.fromRGB(255,255,255)
a6.TextSize=12
a6.TextTransparency=0.6000000238418579
a6.TextWrapped=true
a6.TextXAlignment=Enum.TextXAlignment.Left
a6.AnchorPoint=Vector2.new(0,0.5)
a6.BackgroundColor3=Color3.fromRGB(255,255,255)
a6.BackgroundTransparency=0.9990000128746033
a6.BorderColor3=Color3.fromRGB(0,0,0)
a6.BorderSizePixel=0
a6.Position=UDim2.new(0,5,0.5,0)
a6.Size=UDim2.new(1,-30,1,-8)
a6.Name="OptionSelecting"
a6.Parent=a4

a7.Image="rbxassetid://16851841101"
a7.ImageColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
a7.AnchorPoint=Vector2.new(1,0.5)
a7.BackgroundColor3=Color3.fromRGB(255,255,255)
a7.BackgroundTransparency=0.9990000128746033
a7.BorderColor3=Color3.fromRGB(0,0,0)
a7.BorderSizePixel=0
a7.Position=UDim2.new(1,0,0.5,0)
a7.Size=UDim2.new(0,25,0,25)
a7.Name="OptionImg"
a7.Parent=a4

local a8=Instance.new"ScrollingFrame";
local a9=Instance.new"UIListLayout";

a8.CanvasSize=UDim2.new(0,0,0,0)
a8.ScrollBarImageColor3=Color3.fromRGB(0,0,0)
a8.ScrollBarThickness=0
a8.Active=true
a8.LayoutOrder=ao
a8.BackgroundColor3=Color3.fromRGB(255,255,255)
a8.BackgroundTransparency=0.9990000128746033
a8.BorderColor3=Color3.fromRGB(0,0,0)
a8.BorderSizePixel=0
a8.Size=UDim2.new(1,0,1,0)
a8.Name="ScrollSelect"
a8.Parent=ak

a9.Padding=UDim.new(0,3)
a9.SortOrder=Enum.SortOrder.LayoutOrder
a9.Parent=a8

local ba=0
function aZ.Clear(bb)
for bc,bd in a8:GetChildren()do
if bd.Name=="Option"then
aZ.Value={}
aZ.Options={}
a6.Text="Select Options"
bd:Destroy()
end
end
end
function aZ.Set(bb,bc)
aZ.Value=bc or aZ.Value
for bd,be in a8:GetChildren()do
if be.Name~="UIListLayout"and not table.find(aZ.Value,be.OptionText.Text)then
b:Create(
be.ChooseFrame,
TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Size=UDim2.new(0,0,0,0)}
):Play()
b:Create(
be.ChooseFrame.UIStroke,
TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Transparency=0.999}
):Play()
b:Create(
be,
TweenInfo.new(0.1,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.999}
):Play()
elseif be.Name~="UIListLayout"and table.find(aZ.Value,be.OptionText.Text)then
b:Create(
be.ChooseFrame.UIStroke,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Transparency=0}
):Play()
b:Create(
be.ChooseFrame,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{Size=UDim2.new(0,1,0,12)}
):Play()
b:Create(
be,
TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut),
{BackgroundTransparency=0.935}
):Play()
end
end
local bd=table.concat(aZ.Value,", ")
if bd==""then
a6.Text="Select Options"
else
a6.Text=tostring(bd)
end
if aY.Multi then
aY.Callback(aZ.Value)
else
aY.Callback(table.concat(aZ.Value))
end
end
function aZ.AddOption(bb,bc)
bc=bc or"Option"
local bd=Instance.new"Frame";
local be=Instance.new"UICorner";
local bf=Instance.new"TextButton";
local bg=Instance.new"TextLabel"
local bh=Instance.new"Frame";
local bi=Instance.new"UIStroke";
local bj=Instance.new"UICorner";

bd.BackgroundColor3=Color3.fromRGB(255,255,255)
bd.BackgroundTransparency=0.999
bd.BorderColor3=Color3.fromRGB(0,0,0)
bd.BorderSizePixel=0
bd.LayoutOrder=ba
bd.Size=UDim2.new(1,0,0,30)
bd.Name="Option"
bd.Parent=a8

be.CornerRadius=UDim.new(0,3)
be.Parent=bd

bf.Font=Enum.Font.GothamBold
bf.Text=""
bf.TextColor3=Color3.fromRGB(255,255,255)
bf.TextSize=13
bf.TextXAlignment=Enum.TextXAlignment.Left
bf.BackgroundColor3=Color3.fromRGB(255,255,255)
bf.BackgroundTransparency=0.9990000128746033
bf.BorderColor3=Color3.fromRGB(0,0,0)
bf.BorderSizePixel=0
bf.Size=UDim2.new(1,0,1,0)
bf.Name="OptionButton"
bf.Parent=bd

bg.Font=Enum.Font.GothamBold
bg.Text=bc
bg.TextSize=13
bg.TextColor3=Color3.fromRGB(230.77499270439148,230.77499270439148,230.77499270439148)
bg.TextXAlignment=Enum.TextXAlignment.Left
bg.TextYAlignment=Enum.TextYAlignment.Top
bg.BackgroundColor3=Color3.fromRGB(255,255,255)
bg.BackgroundTransparency=0.9990000128746033
bg.BorderColor3=Color3.fromRGB(0,0,0)
bg.BorderSizePixel=0
bg.Position=UDim2.new(0,8,0,8)
bg.Size=UDim2.new(1,-100,0,13)
bg.Name="OptionText"
bg.Parent=bd

bh.AnchorPoint=Vector2.new(0,0.5)
bh.BackgroundColor3=Color3.fromRGB(255,255,255)
bh.BorderColor3=Color3.fromRGB(0,0,0)
bh.BorderSizePixel=0
bh.Position=UDim2.new(0,2,0.5,0)
bh.Size=UDim2.new(0,0,0,0)
bh.Name="ChooseFrame"
bh.Parent=bd

bi.Color=Color3.fromRGB(255,255,255)
bi.Thickness=1.600000023841858
bi.Transparency=0.999
bi.Parent=bh

bj.Parent=bh

bf.Activated:Connect(function()
CircleClick(bf,d.X,d.Y)
if aY.Multi then
if bd.BackgroundTransparency>0.95 then
table.insert(aZ.Value,bc)
else
for bk,bl in pairs(aZ.Value)do
if bl==bc then
table.remove(aZ.Value,bk)
break
end
end
end
else
aZ.Value={bc}
end
aZ:Set(aZ.Value)
end)
local bk=0
for bl,bm in a8:GetChildren()do
if bm.Name~="UIListLayout"then
bk=bk+3+bm.Size.Y.Offset
end
end
a8.CanvasSize=UDim2.new(0,0,0,bk)
ba=ba+1
end
function aZ.Refresh(bb,bc,bd)
bc=bc or{}
bd=bd or{}
aZ:Clear()
for be,bf in pairs(bc)do
aZ:AddOption(bf)
end
aZ.Options=bc
aZ:Set(bd)
end
aZ:Refresh(aZ.Options,typeof(aY.Default)=="table"and aY.Default or{aY.Default})
aV=aV+1
ao=ao+1
return aZ
end
aC=aC+1
return aU
end
an=an+1
return aB
end
return am
end
return f
