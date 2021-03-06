local jeHubModule = {}
local MPS = game:GetService("MarketplaceService")
local default = 0.2

function jeHubModule.DecodeRemotes()
	for i, v in pairs(getgc(true)) do
	    if type(v) == "table" and rawget(v, "Remote") then
		if type(v.Remote) == "userdata" then
		    v.Remote.Name = v.Name
		end
	    end
	end
	local l = require(game:GetService("ReplicatedStorage").Modules.Utils.Network).InvokeServer
    local hai
	local function remote(remote, ...)
	    local key = getupvalue(l, 1)
	    function ToByteArgs(p61)
		if 255 < p61 then
		else
		    return p61
		end
		return math.floor(p61 / 256) % 256
	    end
	    function ToByteString(p62)
		return string.char(ToByteArgs(p62))
	    end
	    local decodedkey = ToByteString(key)
	    if remote:IsA("RemoteEvent") then
		hai = "FireServer"
	    elseif remote:IsA("RemoteFunction") then
		hai = "InvokeServer"
	    else
		return "lol"
	    end
	    remote[hai](remote, decodedkey, ...)
	end
end

function jeHubModule.gameStatus()
	local update = string.sub(MPS:GetProductInfo(game.PlaceId).Updated, 1,10)
	local imageUrl = 'rbxassetid://' .. 
		MPS:GetProductInfo(game:GetService("AssetService"):GetGamePlacesAsync():GetCurrentPage()[1].PlaceId).IconImageAssetId
	local gameName = MPS:GetProductInfo(game.PlaceId).Name
	return imageUrl, gameName, update
end

function jeHubModule.Notify(title, text, normal)
    if game:GetService("CoreGui").RobloxGui:FindFirstChild("FqThZbVHzDw64vAB") then game:GetService("CoreGui").RobloxGui:FindFirstChild("FqThZbVHzDw64vAB"):Remove() end
    local parent = game:GetService("CoreGui").RobloxGui
    local size = UDim2.new(0, 226, 0, 115)
    local imageUrl = jeHubModule.gameStatus()
    if normal then
        local Holder = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local Text = Instance.new("TextLabel")
        local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
        local TopBar = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local Helper = Instance.new("Frame")
        local Title = Instance.new("TextLabel")
        local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
        Holder.Name = "FqThZbVHzDw64vAB"
        Holder.Parent = parent
        Holder.Active = true
        Holder.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
        Holder.ClipsDescendants = true
        Holder.Position = UDim2.new(0.849696994, 0, 0.9, 0)
        Holder.Size = UDim2.new(0, 226, 0, 0)
        UICorner.CornerRadius = UDim.new(0, 10)
        UICorner.Parent = Holder
        Text.Name = "Text"
        Text.Parent = Holder
        Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Text.BackgroundTransparency = 1.000
        Text.Position = UDim2.new(0.0593218505, 0, 0.34710747, 0)
        Text.Size = UDim2.new(0, 201, 0, 59)
        Text.Font = Enum.Font.SourceSans
        Text.Text = text
        Text.TextColor3 = Color3.fromRGB(236, 236, 236)
        Text.TextScaled = true
        Text.TextSize = 14.000
        Text.TextWrapped = true
        Text.TextXAlignment = Enum.TextXAlignment.Left
        UITextSizeConstraint.Parent = Text
        UITextSizeConstraint.MaxTextSize = 25
        UITextSizeConstraint.MinTextSize = 15
        TopBar.Name = "TopBar"
        TopBar.Parent = Holder
        TopBar.Active = true
        TopBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        TopBar.ClipsDescendants = true
        TopBar.Size = UDim2.new(1, 0, 0, 28)
        UICorner_2.Parent = TopBar
        Helper.Name = "Helper"
        Helper.Parent = TopBar
        Helper.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        Helper.BorderColor3 = Color3.fromRGB(30, 30, 30)
        Helper.Position = UDim2.new(0, 0, 0.785714269, 0)
        Helper.Size = UDim2.new(0, 226, 0, 17)
        Title.Name = "Title"
        Title.Parent = Helper
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.Position = UDim2.new(0.0283483993, 0, -1.29411769, 0)
        Title.Size = UDim2.new(0, 212, 0, 28)
        Title.Font = Enum.Font.Gotham
        Title.Text = " "..title
        Title.TextColor3 = Color3.fromRGB(236, 236, 236)
        Title.TextScaled = true
        Title.TextSize = 16.000
        Title.TextWrapped = true
        Title.TextXAlignment = Enum.TextXAlignment.Left
        UITextSizeConstraint_2.Parent = Title
        UITextSizeConstraint_2.MaxTextSize = 18
        UITextSizeConstraint_2.MinTextSize = 10
        Holder:TweenSizeAndPosition(UDim2.new(0, 226,0, 115),UDim2.new(0.85, 0,0.834, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.8)
    else
        local HolderWithIcon = Instance.new("Frame")
        local UICorner = Instance.new("UICorner")
        local GameIcon = Instance.new("ImageLabel")
        local UICorner_2 = Instance.new("UICorner")
        local Text = Instance.new("TextLabel")
        local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
        local TopBar = Instance.new("Frame")
        local UICorner_3 = Instance.new("UICorner")
        local Helper = Instance.new("Frame")
        local Title = Instance.new("TextLabel")
        local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
        HolderWithIcon.Name = "FqThZbVHzDw64vAB"
        HolderWithIcon.Parent = parent
        HolderWithIcon.Active = true
        HolderWithIcon.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
        HolderWithIcon.ClipsDescendants = true
        HolderWithIcon.Position = UDim2.new(0.849696994, 0, 0.9, 0)
        HolderWithIcon.Size = UDim2.new(0, 226, 0, 0)
        UICorner.CornerRadius = UDim.new(0, 10)
        UICorner.Parent = HolderWithIcon
        GameIcon.Name = "GameIcon"
        GameIcon.Parent = HolderWithIcon
        GameIcon.Active = true
        GameIcon.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        GameIcon.BackgroundTransparency = 1.000
        GameIcon.Position = UDim2.new(0, 20, 0, 42)
        GameIcon.Size = UDim2.new(0, 60, 0, 60)
        GameIcon.ZIndex = 9
        GameIcon.Image = imageUrl
        UICorner_2.Parent = GameIcon
        Text.Name = "Text"
        Text.Parent = HolderWithIcon
        Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Text.BackgroundTransparency = 1.000
        Text.Position = UDim2.new(0.41949138, 0, 0.34710747, 0)
        Text.Size = UDim2.new(0, 119, 0, 59)
        Text.Font = Enum.Font.SourceSans
        Text.Text = text
        Text.TextColor3 = Color3.fromRGB(236, 236, 236)
        Text.TextScaled = true
        Text.TextSize = 14.000
        Text.TextWrapped = true
        Text.TextXAlignment = Enum.TextXAlignment.Left
        UITextSizeConstraint.Parent = Text
        UITextSizeConstraint.MaxTextSize = 25
        UITextSizeConstraint.MinTextSize = 15
        TopBar.Name = "TopBar"
        TopBar.Parent = HolderWithIcon
        TopBar.Active = true
        TopBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        TopBar.ClipsDescendants = true
        TopBar.Size = UDim2.new(1, 0, 0, 28)
        UICorner_3.Parent = TopBar
        Helper.Name = "Helper"
        Helper.Parent = TopBar
        Helper.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        Helper.BorderColor3 = Color3.fromRGB(30, 30, 30)
        Helper.Position = UDim2.new(0, 0, 0.785714269, 0)
        Helper.Size = UDim2.new(0, 226, 0, 17)
        Title.Name = "Title"
        Title.Parent = Helper
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.Position = UDim2.new(0.0593218505, 0, -1.29411769, 0)
        Title.Size = UDim2.new(0, 212, 0, 28)
        Title.Font = Enum.Font.Gotham
        Title.Text = " "..title
        Title.TextColor3 = Color3.fromRGB(236, 236, 236)
        Title.TextScaled = true
        Title.TextSize = 16.000
        Title.TextWrapped = true
        Title.TextXAlignment = Enum.TextXAlignment.Left
        UITextSizeConstraint_2.Parent = Title
        UITextSizeConstraint_2.MaxTextSize = 18
        UITextSizeConstraint_2.MinTextSize = 10
        HolderWithIcon:TweenSizeAndPosition(UDim2.new(0, 226,0, 115),UDim2.new(0.85, 0,0.834, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.8)
    end
    wait(3)
    game:GetService("CoreGui").RobloxGui:FindFirstChild("FqThZbVHzDw64vAB"):TweenSizeAndPosition(UDim2.new(0, 226,0, 0),UDim2.new(0.85, 0,0.9, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 1)
    wait(0.5)
    game:GetService("CoreGui").RobloxGui:FindFirstChild("FqThZbVHzDw64vAB"):Remove()
end

function jeHubModule.FindClass(classes, location)
	local events = {}
	local finded = {}
	if location ~= game then
		for _,v in pairs(location:GetDescendants()) do
			for _,e in pairs(classes) do
				if v.ClassName == e then
					events[#events + 1] =  v
					finded[#finded + 1] = 'Finded:' .. v.Name .. ' Parent:' .. v.Parent.Name .. ' Parent2:' .. v.Parent.Parent.Name .. ' ' .. e
				end
			end
		end
	end
	return events, finded
end

function jeHubModule.TextToTable(text, space, checkSpace)
	local txt = [[{]]
	local letter2 = ''
	if space then
		letter2 = ' '
	end
	text = tostring(text)
	for i=1, #text do
		local function write(letter)
			if i ~= #text then
				txt = txt .. [[']] .. letter .. [[']] .. [[,]] .. letter2
			else
				txt = txt .. [[']] .. letter .. [[']]
			end
		end
		local letter = string.sub(text, i,i)
		if checkSpace then
			if letter ~= ' ' then
				write(letter)
			end
		else
			write(letter)
		end
	end
	txt = txt .. [[}]]
	return txt
end

return jeHubModule
