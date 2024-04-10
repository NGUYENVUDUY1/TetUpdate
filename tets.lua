local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
----------------------------------------------------------------------------------------------------------------------------------------------
local Window = Fluent:CreateWindow({
    Title = "Hub",
    SubTitle = "tets km",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 320),
    Acrylic = true,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.End
})
local Tabs = {
    home = Window:AddTab({ Title = "Tab Info", Icon = "activity" }),
}
local Options = Fluent.Options
do

game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)


First_Sea = false
Second_Sea = false
Third_Sea = false
local placeId = game.PlaceId
if placeId == 2753915549 then
First_Sea = true
elseif placeId == 4442272183 then
Second_Sea = true
elseif placeId == 7449423635 then
Third_Sea = true
end

--------------------------------------------------------------------------------------------------------------------------------------------
---Close UI
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=16601446273"
ImageButton.MouseButton1Down:connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.End,false,game)
end)
--------------------------------------------------------------------------------------------------------------------------------------------
-- Hehe
--------------------------------------------------------------------------------------------------------------------------------------------
--Create Tabs
Tabs.home:AddButton({
        Title = "Owner",
        Description = "DuydepZaiiCuto!",
        Callback = function()
            setclipboard("")
        end
    })
    
Tabs.home:AddButton({
        Title = "Version",
        Description = "Beta Hub 6¹",
        Callback = function()
            setclipboard("")
        end
    })
    
Tabs.home:AddButton({
        Title = "Youtube",
        Description = "Đăng Ký Kênh YouTube",
        Callback = function()
            setclipboard("https://www.youtube.com/@HIRU_HUB")
        end
    })
    
Tabs.home:AddButton({
        Title = "Zalo Chat",
        Description = "Hãy Tham Gia Zalo Thông Báo Update!",
        Callback = function()
            setclipboard("https://zalo.me/g/hudugs462")
        end
    })