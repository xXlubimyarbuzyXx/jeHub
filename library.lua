local UIS = game:GetService('UserInputService')
local tween = game:GetService('TweenService')

local Library = {}

function Library.new(text)
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
    local Pages = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local Sections = Instance.new("Frame")

    ScreenGui.Parent = game:GetService("CoreGui")
    ScreenGui.Name = text
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Holder.Name = "Holder"
    Holder.Parent = ScreenGui
    Holder.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Holder.ClipsDescendants = true
    Holder.Position = UDim2.new(0.444848478, 0, 0.366257668, 0)
    Holder.Size = UDim2.new(0, 456, 0, 317)

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

    Pages.Name = "Pages"
    Pages.Parent = Leftbar
    Pages.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Pages.BackgroundTransparency = 1.000
    Pages.Position = UDim2.new(0, 0, 0.119999997, 0)
    Pages.Size = UDim2.new(0, 92, 1, 0)

    Sections.Name = "Sections"
    Sections.Parent = Leftbar
    Sections.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Sections.BackgroundTransparency = 1.000
    Sections.Size = UDim2.new(0, 100, 0, 100)
    --// dragable ui
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

        local PageButton_ = Instance.new("TextButton")
        local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
        local Page_ = Instance.new("Frame")
        local PageCorner = Instance.new("UICorner")
        local PageItems_ = Instance.new("Frame")
        local Pagelist = Instance.new("UIListLayout")
        
        PageButton_.Name = "PageButton_" .. text
        PageButton_.Parent = Pages
        PageButton_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        PageButton_.BackgroundTransparency = 1.000
        PageButton_.Position = UDim2.new(0.0326086953, 0, 0.0590405911, 0)
        PageButton_.Size = UDim2.new(0, 89, 0, 34)
        PageButton_.Font = Enum.Font.Gotham
        PageButton_.Text = text
        PageButton_.TextColor3 = Color3.fromRGB(255, 255, 255)
        PageButton_.TextScaled = true
        PageButton_.TextSize = 14.000
        PageButton_.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
        PageButton_.TextWrapped = true

        UITextSizeConstraint_2.Parent = PageButton_
        UITextSizeConstraint_2.MaxTextSize = 15
        UITextSizeConstraint_2.MinTextSize = 5

        UIListLayout.Parent = Pages
        UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout.Padding = UDim.new(0, 5)

        Page_.Name = "Page_" .. text
        Page_.Parent = Sections
        Page_.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
        Page_.ClipsDescendants = true
        Page_.Position = UDim2.new(1.07606733, 0, 0.465882361, 0)
        Page_.Size = UDim2.new(0, 328, 0, 257)
        Page_.Visible = visibleEnabled

        PageCorner.CornerRadius = UDim.new(0, 4)
        PageCorner.Name = "PageCorner"
        PageCorner.Parent = Page_

        PageItems_.Name = "PageItems_" .. text
        PageItems_.Parent = Page_
        PageItems_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        PageItems_.BackgroundTransparency = 1.000
        PageItems_.Position = UDim2.new(0.0328358226, 0, 0.0389105044, 0)
        PageItems_.Size = UDim2.new(0, 314, 0, 237)

        Pagelist.Name = "Pagelist"
        Pagelist.Parent = PageItems_
        Pagelist.SortOrder = Enum.SortOrder.LayoutOrder
        Pagelist.Padding = UDim.new(0, 10)
        
        PageButton_.MouseButton1Click:Connect(function()
            visibleEnabled = not visibleEnabled
            Page_.Visible = visibleEnabled
        end)

        local Library3 = {}

        function Library3:Button(text, callback)
            local callback = callback or function() end

            local Button = Instance.new("TextButton")
            local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
            local ButtonCorner = Instance.new("UICorner")

            Button.Name = "Button"
            Button.Parent = PageItems_
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

            ButtonCorner.Name = "ButtonCorner"
            ButtonCorner.Parent = Button

            Button.MouseButton1Click:Connect(function()
                pcall(callback)
            end)
        end

        function Library3:Toggle(text,enabled, callback)
            local enabled = enabled or false

            local Toggle = Instance.new("TextButton")
            local ToggleCorner = Instance.new("UICorner")
            local Text = Instance.new("TextLabel")
            local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
            local ToggleFrame = Instance.new("Frame")
            local TogFrameCorner = Instance.new("UICorner")
            local Frame_3 = Instance.new("Frame")
            local FrameTogCorner = Instance.new("UICorner")

            Toggle.Name = "Toggle_" .. text
            Toggle.Parent = PageItems_
            Toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            Toggle.Position = UDim2.new(0.0447761193, 0, 0.0700389147, 0)
            Toggle.Size = UDim2.new(0, 304, 0, 33)
            Toggle.Font = Enum.Font.Gotham
            Toggle.Text = ""
            Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
            Toggle.TextSize = 14.000
            Toggle.TextXAlignment = Enum.TextXAlignment.Left

            ToggleCorner.Name = "ToggleCorner"
            ToggleCorner.Parent = Toggle

            Text.Name = "Text"
            Text.Parent = Toggle
            Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Text.BackgroundTransparency = 1.000
            Text.Position = UDim2.new(0.049342107, 0, 0, 0)
            Text.Size = UDim2.new(0, 197, 0, 33)
            Text.Font = Enum.Font.Gotham
            Text.Text = text
            Text.TextColor3 = Color3.fromRGB(255, 255, 255)
            Text.TextScaled = true
            Text.TextSize = 14.000
            Text.TextWrapped = true
            Text.TextXAlignment = Enum.TextXAlignment.Left

            UITextSizeConstraint_4.Parent = Text
            UITextSizeConstraint_4.MaxTextSize = 15
            UITextSizeConstraint_4.MinTextSize = 5

            ToggleFrame.Name = "ToggleFrame"
            ToggleFrame.Parent = Toggle
            ToggleFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            ToggleFrame.Position = UDim2.new(0.782894552, 0, 0.200000182, 0)
            ToggleFrame.Size = UDim2.new(0.167105287, 0, 0.600000024, 0)

            TogFrameCorner.CornerRadius = UDim.new(0, 6)
            TogFrameCorner.Name = "TogFrameCorner"
            TogFrameCorner.Parent = ToggleFrame

            Frame_3.Parent = ToggleFrame
            Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Frame_3.Position = UDim2.new(0, 0, 0, 1)
            Frame_3.Size = UDim2.new(0.5, 0, 0.899999976, 0)

            FrameTogCorner.CornerRadius = UDim.new(0, 6)
            FrameTogCorner.Name = "FrameTogCorner"
            FrameTogCorner.Parent = Frame_3

            Toggle.MouseButton1Click:Connect(function()
                enabled = not enabled
                if enabled then
                    local anim = tween:Create(Frame_3, TweenInfo.new(0.2), {Position = UDim2.new(0.5,0,0,1)})
                    anim:Play()
                else
                    local anim = tween:Create(Frame_3, TweenInfo.new(0.2), {Position = UDim2.new(0,0,0,1)})
                    anim:Play()
                end
                pcall(callback, enabled)
            end)
        end

        function Library3:Textbox(text, callback)
            local callback = callback or function() end

            local TextBox = Instance.new("TextBox")
            local UICorner = Instance.new("UICorner")
            local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

            TextBox.Parent = PageItems_
            TextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            TextBox.Position = UDim2.new(0, 0, 0.362869203, 0)
            TextBox.Size = UDim2.new(0, 304, 0, 35)
            TextBox.Font = Enum.Font.Gotham
            TextBox.Text = text
            TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextBox.TextScaled = true
            TextBox.TextSize = 14.000
            TextBox.TextWrapped = true

            UICorner.Parent = TextBox

            UITextSizeConstraint.Parent = TextBox
            UITextSizeConstraint.MaxTextSize = 18
            UITextSizeConstraint.MinTextSize = 5

            TextBox.Changed:Connect(function(property)
                if property == 'Text' then
                    pcall(callback, TextBox.Text)
                end
            end)
        end

        return Library3
    end

    function Library2:ToggleUI()
        ScreenGui.Enabled = not ScreenGui.Enabled
    end

    return Library2
end

return Library
