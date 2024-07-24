local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local log1 = Instance.new("TextLabel")
local GenerateScript1 = Instance.new("TextButton")
local GenerateScript2 = Instance.new("TextButton")
local log2 = Instance.new("TextLabel")
local log3 = Instance.new("TextLabel")
local GenerateScript3 = Instance.new("TextButton")
local destroy = Instance.new("TextButton")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.292718083, 0, 0.292803973, 0)
Frame.Size = UDim2.new(0, 547, 0, 274)

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Size = UDim2.new(0, 547, 0, 27)
title.Font = Enum.Font.FredokaOne
title.Text = "Solara Proximity Prompt Logger"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextSize = 14.000

log1.Name = "log1"
log1.Parent = Frame
log1.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
log1.BorderColor3 = Color3.fromRGB(0, 0, 0)
log1.BorderSizePixel = 0
log1.Position = UDim2.new(0.0127970753, 0, 0.17153284, 0)
log1.Size = UDim2.new(0, 200, 0, 31)
log1.Font = Enum.Font.SourceSans
log1.Text = "waiting for proximity prompts"
log1.TextColor3 = Color3.fromRGB(0, 0, 0)
log1.TextSize = 14.000

GenerateScript1.Name = "Generate Script 1"
GenerateScript1.Parent = Frame
GenerateScript1.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
GenerateScript1.BorderColor3 = Color3.fromRGB(0, 0, 0)
GenerateScript1.BorderSizePixel = 0
GenerateScript1.Position = UDim2.new(0.391224861, 0, 0.17153284, 0)
GenerateScript1.Size = UDim2.new(0, 200, 0, 31)
GenerateScript1.Font = Enum.Font.SourceSans
GenerateScript1.Text = "Generate Script"
GenerateScript1.TextColor3 = Color3.fromRGB(0, 0, 0)
GenerateScript1.TextSize = 14.000

GenerateScript2.Name = "Generate Script 2"
GenerateScript2.Parent = Frame
GenerateScript2.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
GenerateScript2.BorderColor3 = Color3.fromRGB(0, 0, 0)
GenerateScript2.BorderSizePixel = 0
GenerateScript2.Position = UDim2.new(0.391224861, 0, 0.324817508, 0)
GenerateScript2.Size = UDim2.new(0, 200, 0, 31)
GenerateScript2.Font = Enum.Font.SourceSans
GenerateScript2.Text = "Generate Script"
GenerateScript2.TextColor3 = Color3.fromRGB(0, 0, 0)
GenerateScript2.TextSize = 14.000

log2.Name = "log2"
log2.Parent = Frame
log2.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
log2.BorderColor3 = Color3.fromRGB(0, 0, 0)
log2.BorderSizePixel = 0
log2.Position = UDim2.new(0.0127970753, 0, 0.324817508, 0)
log2.Size = UDim2.new(0, 200, 0, 31)
log2.Font = Enum.Font.SourceSans
log2.Text = "waiting for proximity prompts"
log2.TextColor3 = Color3.fromRGB(0, 0, 0)
log2.TextSize = 14.000

log3.Name = "log3"
log3.Parent = Frame
log3.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
log3.BorderColor3 = Color3.fromRGB(0, 0, 0)
log3.BorderSizePixel = 0
log3.Position = UDim2.new(0.0127970753, 0, 0.478102177, 0)
log3.Size = UDim2.new(0, 200, 0, 31)
log3.Font = Enum.Font.SourceSans
log3.Text = "waiting for proximity prompts"
log3.TextColor3 = Color3.fromRGB(0, 0, 0)
log3.TextSize = 14.000

GenerateScript3.Name = "Generate Script 3"
GenerateScript3.Parent = Frame
GenerateScript3.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
GenerateScript3.BorderColor3 = Color3.fromRGB(0, 0, 0)
GenerateScript3.BorderSizePixel = 0
GenerateScript3.Position = UDim2.new(0.391224861, 0, 0.478102177, 0)
GenerateScript3.Size = UDim2.new(0, 200, 0, 31)
GenerateScript3.Font = Enum.Font.SourceSans
GenerateScript3.Text = "Generate Script"
GenerateScript3.TextColor3 = Color3.fromRGB(0, 0, 0)
GenerateScript3.TextSize = 14.000

destroy.Name = "destroy"
destroy.Parent = Frame
destroy.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
destroy.BorderColor3 = Color3.fromRGB(0, 0, 0)
destroy.BorderSizePixel = 0
destroy.Position = UDim2.new(0.0255941506, 0, 0.68978101, 0)
destroy.Size = UDim2.new(0, 200, 0, 50)
destroy.Font = Enum.Font.SourceSans
destroy.Text = "Destroy UI"
destroy.TextColor3 = Color3.fromRGB(0, 0, 0)
destroy.TextSize = 14.000

-- Function to get the full path of an instance
local function getFullPath(instance)
    local path = {}
    while instance and instance.Parent do
        table.insert(path, 1, instance.Name)
        instance = instance.Parent
    end
    return table.concat(path, ".")
end

local function onProximityPromptTriggered(proximityPrompt, player)
    local fullPath = getFullPath(proximityPrompt)
    
    -- Update GUI with the full path or a placeholder message
    if fullPath ~= "ProximityPrompt" then
        log1.Text = fullPath
        log2.Text = fullPath
        log3.Text = fullPath
    else
        log1.Text = "Dummy name detected; not shown."
        log2.Text = "Dummy name detected; not shown."
        log3.Text = "Dummy name detected; not shown."
    end
end

local function generateTriggerScript(promptPath)
    return [[
local proximityPrompt = game.Workspace:FindFirstChild("]] .. promptPath .. [[", true)
if proximityPrompt and proximityPrompt:IsA("ProximityPrompt") then
    proximityPrompt:InputHoldBegin()
    wait(0.1)  -- Simulate the player holding the prompt
    proximityPrompt:InputHoldEnd()
end
]]
end

-- Button click events to generate scripts
GenerateScript1.MouseButton1Click:Connect(function()
    if log1.Text ~= "waiting for proximity prompts" and log1.Text ~= "Dummy name detected; not shown." then
        setclipboard(generateTriggerScript(log1.Text))
    end
end)

GenerateScript2.MouseButton1Click:Connect(function()
    if log2.Text ~= "waiting for proximity prompts" and log2.Text ~= "Dummy name detected; not shown." then
        setclipboard(generateTriggerScript(log2.Text))
    end
end)

GenerateScript3.MouseButton1Click:Connect(function()
    if log3.Text ~= "waiting for proximity prompts" and log3.Text ~= "Dummy name detected; not shown." then
        setclipboard(generateTriggerScript(log3.Text))
    end
end)

destroy.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

