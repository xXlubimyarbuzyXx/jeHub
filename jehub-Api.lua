local a={}local b=game:GetService("MarketplaceService")local c=0.2;function a.DecodeRemotes()for d,e in pairs(getgc(true))do if type(e)=="table"and rawget(e,"Remote")then if type(e.Remote)=="userdata"then e.Remote.Name=e.Name end end end;local f=require(game:GetService("ReplicatedStorage").Modules.Utils.Network).InvokeServer;local g;local function h(h,...)local i=getupvalue(f,1)function ToByteArgs(j)if 255<j then else return j end;return math.floor(j/256)%256 end;function ToByteString(k)return string.char(ToByteArgs(k))end;local l=ToByteString(i)if h:IsA("RemoteEvent")then g="FireServer"elseif h:IsA("RemoteFunction")then g="InvokeServer"else return"lol"end;h[g](h,l,...)end end;function a.gameStatus()local m=string.sub(b:GetProductInfo(game.PlaceId).Updated,1,10)local n='rbxassetid://'..b:GetProductInfo(game:GetService("AssetService"):GetGamePlacesAsync():GetCurrentPage()[1].PlaceId).IconImageAssetId;local o=b:GetProductInfo(game.PlaceId).Name;return n,o,m end;function a.Notify(p,q,r)if game:GetService("CoreGui").RobloxGui:FindFirstChild("FqThZbVHzDw64vAB")then game:GetService("CoreGui").RobloxGui:FindFirstChild("FqThZbVHzDw64vAB"):Remove()end;local s=game:GetService("CoreGui").RobloxGui;local t=UDim2.new(0,226,0,115)local n=a.gameStatus()if r then local u=Instance.new("Frame")local v=Instance.new("UICorner")local w=Instance.new("TextLabel")local x=Instance.new("UITextSizeConstraint")local y=Instance.new("Frame")local z=Instance.new("UICorner")local A=Instance.new("Frame")local B=Instance.new("TextLabel")local C=Instance.new("UITextSizeConstraint")u.Name="FqThZbVHzDw64vAB"u.Parent=s;u.Active=true;u.BackgroundColor3=Color3.fromRGB(24,24,24)u.ClipsDescendants=true;u.Position=UDim2.new(0.849696994,0,0.9,0)u.Size=UDim2.new(0,226,0,0)v.CornerRadius=UDim.new(0,10)v.Parent=u;w.Name="Text"w.Parent=u;w.BackgroundColor3=Color3.fromRGB(255,255,255)w.BackgroundTransparency=1.000;w.Position=UDim2.new(0.0593218505,0,0.34710747,0)w.Size=UDim2.new(0,201,0,59)w.Font=Enum.Font.SourceSans;w.Text=q;w.TextColor3=Color3.fromRGB(236,236,236)w.TextScaled=true;w.TextSize=14.000;w.TextWrapped=true;w.TextXAlignment=Enum.TextXAlignment.Left;x.Parent=w;x.MaxTextSize=25;x.MinTextSize=15;y.Name="TopBar"y.Parent=u;y.Active=true;y.BackgroundColor3=Color3.fromRGB(30,30,30)y.ClipsDescendants=true;y.Size=UDim2.new(1,0,0,28)z.Parent=y;A.Name="Helper"A.Parent=y;A.BackgroundColor3=Color3.fromRGB(30,30,30)A.BorderColor3=Color3.fromRGB(30,30,30)A.Position=UDim2.new(0,0,0.785714269,0)A.Size=UDim2.new(0,226,0,17)B.Name="Title"B.Parent=A;B.BackgroundColor3=Color3.fromRGB(255,255,255)B.BackgroundTransparency=1.000;B.Position=UDim2.new(0.0283483993,0,-1.29411769,0)B.Size=UDim2.new(0,212,0,28)B.Font=Enum.Font.Gotham;B.Text=" "..p;B.TextColor3=Color3.fromRGB(236,236,236)B.TextScaled=true;B.TextSize=16.000;B.TextWrapped=true;B.TextXAlignment=Enum.TextXAlignment.Left;C.Parent=B;C.MaxTextSize=18;C.MinTextSize=10;u:TweenSizeAndPosition(UDim2.new(0,226,0,115),UDim2.new(0.85,0,0.834,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quint,0.8)else local D=Instance.new("Frame")local v=Instance.new("UICorner")local E=Instance.new("ImageLabel")local z=Instance.new("UICorner")local w=Instance.new("TextLabel")local x=Instance.new("UITextSizeConstraint")local y=Instance.new("Frame")local F=Instance.new("UICorner")local A=Instance.new("Frame")local B=Instance.new("TextLabel")local C=Instance.new("UITextSizeConstraint")D.Name="FqThZbVHzDw64vAB"D.Parent=s;D.Active=true;D.BackgroundColor3=Color3.fromRGB(24,24,24)D.ClipsDescendants=true;D.Position=UDim2.new(0.849696994,0,0.9,0)D.Size=UDim2.new(0,226,0,0)v.CornerRadius=UDim.new(0,10)v.Parent=D;E.Name="GameIcon"E.Parent=D;E.Active=true;E.BackgroundColor3=Color3.fromRGB(30,30,30)E.BackgroundTransparency=1.000;E.Position=UDim2.new(0,20,0,42)E.Size=UDim2.new(0,60,0,60)E.ZIndex=9;E.Image=n;z.Parent=E;w.Name="Text"w.Parent=D;w.BackgroundColor3=Color3.fromRGB(255,255,255)w.BackgroundTransparency=1.000;w.Position=UDim2.new(0.41949138,0,0.34710747,0)w.Size=UDim2.new(0,119,0,59)w.Font=Enum.Font.SourceSans;w.Text=q;w.TextColor3=Color3.fromRGB(236,236,236)w.TextScaled=true;w.TextSize=14.000;w.TextWrapped=true;w.TextXAlignment=Enum.TextXAlignment.Left;x.Parent=w;x.MaxTextSize=25;x.MinTextSize=15;y.Name="TopBar"y.Parent=D;y.Active=true;y.BackgroundColor3=Color3.fromRGB(30,30,30)y.ClipsDescendants=true;y.Size=UDim2.new(1,0,0,28)F.Parent=y;A.Name="Helper"A.Parent=y;A.BackgroundColor3=Color3.fromRGB(30,30,30)A.BorderColor3=Color3.fromRGB(30,30,30)A.Position=UDim2.new(0,0,0.785714269,0)A.Size=UDim2.new(0,226,0,17)B.Name="Title"B.Parent=A;B.BackgroundColor3=Color3.fromRGB(255,255,255)B.BackgroundTransparency=1.000;B.Position=UDim2.new(0.0593218505,0,-1.29411769,0)B.Size=UDim2.new(0,212,0,28)B.Font=Enum.Font.Gotham;B.Text=" "..p;B.TextColor3=Color3.fromRGB(236,236,236)B.TextScaled=true;B.TextSize=16.000;B.TextWrapped=true;B.TextXAlignment=Enum.TextXAlignment.Left;C.Parent=B;C.MaxTextSize=18;C.MinTextSize=10;D:TweenSizeAndPosition(UDim2.new(0,226,0,115),UDim2.new(0.85,0,0.834,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quint,0.8)end;wait(3)game:GetService("CoreGui").RobloxGui:FindFirstChild("FqThZbVHzDw64vAB"):TweenSizeAndPosition(UDim2.new(0,226,0,0),UDim2.new(0.85,0,0.9,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quint,1)wait(0.5)game:GetService("CoreGui").RobloxGui:FindFirstChild("FqThZbVHzDw64vAB"):Remove()end;function a.FindClass(G,H)local I={}local J={}if H~=game then for K,e in pairs(H:GetDescendants())do for K,L in pairs(G)do if e.ClassName==L then I[#I+1]=e;J[#J+1]='Finded:'..e.Name..' Parent:'..e.Parent.Name..' Parent2:'..e.Parent.Parent.Name..' '..L end end end end;return I,J end;function a.TextToTable(q,M,N)local O=[[{]]local P=''if M then P=' 'end;q=tostring(q)for d=1,#q do local function Q(R)if d~=#q then O=O..[[']]..R..[[']]..[[,]]..P else O=O..[[']]..R..[[']]end end;local R=string.sub(q,d,d)if N then if R~=' 'then Q(R)end else Q(R)end end;O=O..[[}]]return O end;return a
