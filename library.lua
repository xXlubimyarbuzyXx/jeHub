local Library = {}

function Library:new(text)
    local ScreenGui = Instance.new("ScreenGui")
    local Holder = Instance.new("Frame")
    local HolderCorner = Instance.new("UICorner")
    local TopBar = Instance.new("Frame")
    local TopCorner = Instance.new("UICorner")
    local Frame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Title = Instance.new("TextLabel")
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
    local Leftbar = Instance.new("Frame")
    local LeftCorner = Instance.new("UICorner")
    local Frame_2 = Instance.new("Frame")
    local FrameCorner = Instance.new("UICorner")

    ScreenGui.Parent = game:GetService('CoreGui')
    ScreenGui.Name = text

    Holder.Name = "Holder"
    Holder.Parent = ScreenGui
    Holder.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Holder.Position = UDim2.new(0.444848478, 0, 0.36012271, 0)
    Holder.Size = UDim2.new(0, 456, 0, 322)

    HolderCorner.Name = "HolderCorner"
    HolderCorner.Parent = Holder

    TopBar.Name = "TopBar"
    TopBar.Parent = Holder
    TopBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    TopBar.Size = UDim2.new(1, 0, 0, 38)
    TopBar.ZIndex = 3

    TopCorner.Name = "TopCorner"
    TopCorner.Parent = TopBar

    Frame.Parent = TopBar
    Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Frame.Position = UDim2.new(0, 0, 0.763157904, 0)
    Frame.Size = UDim2.new(1, 0, 0, 9)
    Frame.ZIndex = 3

    UICorner.CornerRadius = UDim.new(0, 1)
    UICorner.Parent = Frame

    Title.Name = "Title"
    Title.Parent = TopBar
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.Position = UDim2.new(0.0350000001, 0, 0, 0)
    Title.Size = UDim2.new(0.939999998, 0, 0, 38)
    Title.Font = Enum.Font.Gotham
    Title.Text = text
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.TextSize = 14.000
    Title.TextWrapped = true
    Title.ZIndex = 3

    UITextSizeConstraint.Parent = Title
    UITextSizeConstraint.MaxTextSize = 20
    UITextSizeConstraint.MinTextSize = 16

    Leftbar.Name = "Leftbar"
    Leftbar.Parent = Holder
    Leftbar.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Leftbar.Size = UDim2.new(0, 92, 1, 0)
    Leftbar.ZIndex = 2

    LeftCorner.Name = "LeftCorner"
    LeftCorner.Parent = Leftbar

    Frame_2.Parent = Leftbar
    Frame_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Frame_2.Position = UDim2.new(0.75, 0, 0, 0)
    Frame_2.Size = UDim2.new(0, 23, 1, 0)

    FrameCorner.CornerRadius = UDim.new(0, 1)
    FrameCorner.Name = "FrameCorner"
    FrameCorner.Parent = Frame_2

    local UIS = game:GetService('UserInputService')
    local frame = Holder
    local dragToggle = nil
    local dragSpeed = 0.1
    local dragStart = nil
    local startPos = nil

    local function updateInput(input)
        local delta = input.Position - dragStart
        local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
    end

    frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
            dragToggle = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            if dragToggle then
                updateInput(input)
            end
        end
    end)

    local Library2 = {}

    function Library2:Page(text)
        local visibleEnabled = false
        local PageButton = Instance.new("TextButton")
        local Items = Instance.new("Frame")
        local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
        local PageItems = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local Items_2 = Instance.new("Frame")
        local UIListLayout_2 = Instance.new("UIListLayout")
        local UIListLayout = Instance.new("UIListLayout")
        PageButton.ZIndex = 2
        PageButton.Name = "PageButton"
        PageButton.Parent = Items
        PageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        PageButton.BackgroundTransparency = 1.000
        PageButton.Position = UDim2.new(0.0326086953, 0, 0.0590405911, 0)
        PageButton.Size = UDim2.new(0, 89, 0, 34)
        PageButton.Font = Enum.Font.Gotham
        PageButton.Text = text
        PageButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        PageButton.TextScaled = true
        PageButton.TextSize = 14.000
        PageButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
        PageButton.TextWrapped = true
    
        UITextSizeConstraint_2.Parent = PageButton
        UITextSizeConstraint_2.MaxTextSize = 15
        UITextSizeConstraint_2.MinTextSize = 5
    
        PageItems.Visible = visibleEnabled
        PageItems.Name = "PageItems"
        PageItems.Parent = PageButton
        PageItems.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
        PageItems.Position = UDim2.new(1.14606738, 0, 0.205882356, 0)
        PageItems.Size = UDim2.new(0, 328, 0, 257)
    
        UICorner_2.CornerRadius = UDim.new(0, 4)
        UICorner_2.Parent = PageItems
    
        Items_2.Name = "Items"
        Items_2.Parent = PageItems
        Items_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Items_2.BackgroundTransparency = 1.000
        Items_2.Position = UDim2.new(0.0328358226, 0, 0.0389105044, 0)
        Items_2.Size = UDim2.new(0, 314, 0, 237)
    
        UIListLayout.Parent = Items_2
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 10)

        Items.Name = "Items"
        Items.Parent = Leftbar
        Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Items.BackgroundTransparency = 1.000
        Items.Position = UDim2.new(0, 0, 0.119999997, 0)
        Items.Size = UDim2.new(0, 92, 1, 0)

        UIListLayout_2.Parent = Items
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_2.Padding = UDim.new(0, 5)

        PageButton.MouseButton1Click:Connect(function()
            visibleEnabled = not visibleEnabled
            PageItems.Visible = visibleEnabled
        end)

        local Library3 = {}

        function Library3:Button(text, callback)
            local callback = callback or function() end
            
            local Button = Instance.new("TextButton")
            local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
            local UICorner_3 = Instance.new("UICorner")

            Button.Name = "Button"
            Button.Parent = Items_2
            Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            Button.Position = UDim2.new(0.0447761193, 0, 0.0700389147, 0)
            Button.Size = UDim2.new(0, 304, 0, 33)
            Button.Font = Enum.Font.Gotham
            Button.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button.TextSize = 14.000
            Button.Text = text
        
            UITextSizeConstraint_3.Parent = Button
            UITextSizeConstraint_3.MaxTextSize = 15
            UITextSizeConstraint_3.MinTextSize = 5 
            UICorner_3.Parent = Button

            Button.MouseButton1Click:Connect(function()
                pcall(callback)
            end)
        end

        function Library3:Toggle(text, callback)
            local enabled = false

            local Toggle = Instance.new("TextButton")
            local UICorner_4 = Instance.new("UICorner")
            local Text = Instance.new("TextLabel")
            local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
            local ToggleFrame = Instance.new("Frame")
            local UICorner_5 = Instance.new("UICorner")
            local Frame_3 = Instance.new("Frame")
            local UICorner_6 = Instance.new("UICorner")

            Toggle.Name = "Toggle"
            Toggle.Parent = Items_2
            Toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            Toggle.Position = UDim2.new(0.0447761193, 0, 0.0700389147, 0)
            Toggle.Size = UDim2.new(0, 304, 0, 33)
            Toggle.Font = Enum.Font.Gotham
            Toggle.Text = ''
            Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
            Toggle.TextSize = 14.000
            Toggle.TextXAlignment = Enum.TextXAlignment.Left
        
            UICorner_4.Parent = Toggle
        
            Text.Name = "Text"
            Text.Parent = Toggle
            Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Text.BackgroundTransparency = 1.000
            Text.Position = UDim2.new(0.0263157897, 0, 0, 0)
            Text.Size = UDim2.new(0, 94, 0, 33)
            Text.Font = Enum.Font.Gotham
            Text.Text = text
            Text.TextColor3 = Color3.fromRGB(255, 255, 255)
            Text.TextScaled = true
            Text.TextSize = 14.000
            Text.TextWrapped = true
        
            UITextSizeConstraint_4.Parent = Text
            UITextSizeConstraint_4.MaxTextSize = 15
            UITextSizeConstraint_4.MinTextSize = 5
        
            ToggleFrame.Name = "ToggleFrame"
            ToggleFrame.Parent = Toggle
            ToggleFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            ToggleFrame.Position = UDim2.new(0.75, 0, 0.200000003, 0)
            ToggleFrame.Size = UDim2.new(0.200000003, 0, 0.600000024, 0)
        
            UICorner_5.Parent = ToggleFrame
        
            Frame_3.Parent = ToggleFrame
            Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Frame_3.Size = UDim2.new(0.5, 0, 1, 0)
        
            UICorner_6.Parent = Frame_3
        end

        return Library3
    end
    return Library2
end

return Library
