--[[
██████╗ ██╗ ██████╗██╗  ██╗    ██╗   ██╗██╗   ██╗    ███████╗██████╗  █████╗  ██████╗███████╗
██╔══██╗██║██╔════╝██║  ██║    ██║   ██║██║   ██║    ██╔════╝██╔══██╗██╔══██╗██╔════╝██╔════╝
██║  ██║██║██║     ███████║    ██║   ██║██║   ██║    ███████╗██████╔╝███████║██║     █████╗  
██║  ██║██║██║     ██╔══██║    ╚██╗ ██╔╝██║   ██║    ╚════██║██╔═══╝ ██╔══██║██║     ██╔══╝  
██████╔╝██║╚██████╗██║  ██║     ╚████╔╝ ╚██████╔╝    ███████║██║     ██║  ██║╚██████╗███████╗
╚═════╝ ╚═╝ ╚═════╝╚═╝  ╚═╝      ╚═══╝   ╚═════╝     ╚══════╝╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝                                                                
Dịch Vụ Space Cảm Ơn Bạn Đã Tin Tưởng Và Sử Dụng Dịch Vụ Của Chúng Tôi, Nếu Thấy Hữu Ít Hãy Chia Sẻ Cho Bạn Bè Của Bạn !!
- Website: simprose.me
- Page: fb.com/dichvuspace
- Facebook Admin: fb.com/minhtien.dino

--// Lưu Ý:
- Không Được Share Hay Crack Mã Nguồn Ngày Cho Ai! Nếu Không Bạn Sẽ Bị Ban IP Khỏi Website Vĩnh Viễn!
- Chúng Tôi Không Nhận Hỗ Trợ Những Mã Nguồn Miễn Phí, Xin Đừng Bảo Vì Sao. Đọc Chính Sách Của Website Tại: https://simprose.me/faq
- Nếu Bạn Edit Source Và Up Web Share Nhớ Obfuscate Script. Nếu Bann Có Tiền Thì Sử Dụng: Lura.Ph, Luarmor.Net | Nếu Bạn Không Có Tiền Thì Dùng: luaobfuscate.com, MoonSec, 77Fuscate,... Nhé!
]]
---///--------------------------------------------------------------\\\---
local SpeedHubX = loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmadsgamer2/Speed-Hub-X/main/Library.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmadsgamer2/Speed-Hub-X/main/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmadsgamer2/Speed-Hub-X/main/Interface.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmadsgamer2/Speed-Hub-X/main/Key-System%20%26%20Keyless"))()
repeat wait() until game:IsLoaded()
local Window = SpeedHubX:CreateWindow({
    Title = "Speed Hub X | ".._G.Version,
    SubTitle = "by AhmadV10",
    TabWidth = 160,
    Size = UDim2.fromOffset(560, 350),
    Acrylic = true, 
    Theme = "Vampire",
    MinimizeKey = Enum.KeyCode.Delete 
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),wait(1),
    Item = Window:AddTab({ Title = "Item", Icon = "swords" }),wait(),
    Stats = Window:AddTab({ Title = "Stats", Icon = "plus-circle" }),wait(1),
    Shop = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" }),wait(1),
    Island = Window:AddTab({ Title = "Island", Icon = "palmtree" }),wait(1),
    Raid = Window:AddTab({ Title = "Dungeon", Icon = "sword" }),wait(1),
    RaceV4 = Window:AddTab({ Title = "Race v4", Icon = "chevrons-right" }),wait(1),
    Fruit = Window:AddTab({ Title = "Fruit", Icon = "apple" }),wait(1),
    ESP = Window:AddTab({ Title = "ESP", Icon = "mountain-snow" }),wait(1),
    Misc = Window:AddTab({ Title = "Miscellaneous", Icon = "list-plus" }),wait(1),
    Visual = Window:AddTab({ Title = "Visual", Icon = "scan-face" }),wait(1),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),wait(1),
}
if game.CoreGui:FindFirstChild("SpeedHubXOpenClose") then
    game.CoreGui:FindFirstChild("SpeedHubXOpenClose"):Destroy()
end

local UIStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")

local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SpeedHubXOpenClose"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
ImageButton.Draggable = true
ImageButton.Position = UDim2.new(0.102097899, 0, 0.0742971897, 0)
ImageButton.Size = UDim2.new(0, 59, 0, 49)
ImageButton.Image = "rbxassetid://15511158491"

UICorner.Name = "MainCorner"
UICorner.CornerRadius = UDim.new(0, 9)
UICorner.Parent = ImageButton

ImageButton.MouseButton1Down:connect(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true,127,false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,127,false,game)
end)

local Options = SpeedHubX.Options
do

game:GetService("Players").LocalPlayer.Idled:connect(
function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

_G.Settings = {
    Auto_Farm_Level = false,
    Auto_Farm_Fast = true,
    Auto_New_World = false,
    Auto_Third_World = false,
    Auto_Farm_Chest = false,
    Auto_Farm_Chest_Hop = false,
    Auto_Elite_Hunter = false,
    Auto_Elite_Hunter_Hop = false,
    Auto_Spawn_Cake_Prince = false,
    Auto_Cake_Prince = false,
    Auto_Farm_Boss = false,
    Select_Boss = "",
    Auto_Quest_Boss = true,
    Auto_Farm_All_Boss = false,
    SelectWeapon = "Melee",
    Auto_Set_Spawn = true,
    Method = "Upper",
    DistanceAutoFarm = 30,
    Brimob = true,
    Select_Stats = {},
    Bypass = false,
    Rejoin = true,
    FastAttack = true,
    Auto_Saber = false,
    Auto_Saber_Hop = false,
    Auto_Pole_V1_Hop = false,
    Auto_Factory_Farm = false,
    Auto_Farm_Ectoplasm = false,
    Auto_Swan_Glasses = false,
    Auto_Swan_Glasses_Hop = false,
    Auto_Farm_Bone = false,
    AutoObservation = false,
    AutoObservation_Hop = false,
    Auto_Trade_Bone = false,
    Auto_Rainbow_Haki = false,
    Auto_Rainbow_Haki_Hop = false,
    Auto_Canvander = false,
    AutoBuddySwords = false,
    AutoCavander = false,
    AutoMirageIsland = false,
    Auto_Gear = false,
    TptoKisuneIsland = false,
    NeareastFarm = false,
    TptoKisuneshrine = false,
    AutoFarmBossHallow = false,
    Auto_Twin_Hook_Hop = false,
    Auto_Twin_Hook = false,
    Auto_Serpent_Bow = false,
    Auto_Serpent_Bow_Hop = false,
    Auto_Evo_Race_V2 = false,
    Auto_Rengoku = false,
    Auto_Buy_Legendary_Sword = false,
    Auto_Buy_Enchancement = false,
    Auto_Yama = false,
    Auto_Holy_Torch = false,
    Auto_Musketeer_Hat = false,
    Auto_Superhuman = false,
    Auto_Fully_Superhuman = false,
    Auto_Death_Step = false,
    Auto_Fully_Death_Step = false,
    Auto_SharkMan_Karate = false,
    Auto_Fully_SharkMan_Karate = false,
    Auto_Electric_Claw = false,
    Auto_Dragon_Talon = false,
    Auto_God_Human = false,
    Select_Player = "",
    Spectate_Player = false,
    Teleport_to_Player = false,
    EnabledPvP = false,
    Auto_Stats = false,
    Point = 1,
    No_clip = false,
    Infinit_Energy = false,
    Dodge_No_CoolDown = false,
    Infinit_Ability = false,
    Infinit_SkyJump = false,
    Infinit_Inf_Soru = false,
    Infinit_Range_Observation_Haki = false,
    Select_Island = "",
    Start_Tween_Island = false,
    Select_Dungeon = false,
    Auto_Buy_Chips_Dungeon = false,
    Auto_Start_Dungeon = false,
    Auto_Next_Island = false,
    Kill_Aura = false,
    Auto_Awake = false,
    Auto_Buy_Law_Chip = false,
    Auto_Start_Law_Dungeon = false,
    Auto_Kill_Law = false,
    Select_Devil_Fruit = "",
    Auto_Buy_Devil_Fruit = false,
    Auto_Random_Fruit = false,
    Auto_Bring_Fruit = false,
    Auto_Store_Fruit = false,
    LockMoon = false,
    Auto_Mirage_Island = false,
    SkillZ = true,
    SkillX = true,
    SkillC = true,
    SkillV = true,
    AutoMasterySkill = false,
    HealthMs = 85,
    Distance = 30,
    DistanceY = 5,
    ESP_Mirage_Island = false,
    Auto_Awakening_One_Quest = false,
    SuperFastAttack = false,
    ESP_Chest = false,
    Auto_Dack_Coat = false,
    Auto_Sea_King = false,
    Select_Mode = "Chest",
    Remove_UI_DamageCounter = false,
    Notifications_Remove = false,
    Auto_CFrame = true,
    Auto_Gear = false,
}

if game.PlaceId == 2753915549 then
    W1 = true
	World1 = true
elseif game.PlaceId == 4442272183 then
    W2 = true
	World2 = true
elseif game.PlaceId == 7449423635 then
    W3 = true
	World3 = true
end

if game:IsLoaded() then
    pcall(function()
        repeat wait()
            game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
            game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
        until not game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") or not game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn")
    end)
end
_G.DisDieffect  = true
spawn(function()
    while  _G.DisDieffect do wait()
        for i, v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
                pcall(function()
                    if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" then
                        v:Destroy()
                    end
                end)
            end
        end
    end)
	local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
	local CombatFrameworkR = getupvalues(CombatFramework)[2]
	local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
	local RigControllerR = getupvalues(RigController)[2]
	
	function CurrentWeapon()
		local ac = CombatFrameworkR.activeController
		local ret = ac.blades[1]
		if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
		pcall(function()
			while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
		end)
		if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
		return ret
	end
	
	function getAllBladeHitsPlayers(Sizes)
		local Hits = {}
		local Client = game.Players.LocalPlayer
		local Characters = game:GetService("Workspace").Characters:GetChildren()
		for i=1,#Characters do local v = Characters[i]
			local Human = v:FindFirstChildOfClass("Humanoid")
			if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
		return Hits
	end
	
	function getAllBladeHits(Sizes)
		local Hits = {}
		local Client = game.Players.LocalPlayer
		local Enemies = game:GetService("Workspace").Enemies:GetChildren()
		for i=1,#Enemies do local v = Enemies[i]
			local Human = v:FindFirstChildOfClass("Humanoid")
			if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
		return Hits
	end
	
	function DamageAura()
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			for indexincrement = 1, 1 do
				local bladehit = getAllBladeHits(150) local a = getAllBladeHitsPlayers(150)
				if #bladehit or #a > 0 then
					local AcAttack8 = debug.getupvalue(ac.attack, 5)
					local AcAttack9 = debug.getupvalue(ac.attack, 6)
					local AcAttack7 = debug.getupvalue(ac.attack, 4)
					local AcAttack10 = debug.getupvalue(ac.attack, 7)
					local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
					local NumberAc13 = AcAttack7 * 798405
					(function()
						NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
						AcAttack8 = math.floor(NumberAc12 / AcAttack9)
						AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
					end)()
					AcAttack10 = AcAttack10 + 1
					debug.setupvalue(ac.attack, 5, AcAttack8)
					debug.setupvalue(ac.attack, 6, AcAttack9)
					debug.setupvalue(ac.attack, 4, AcAttack7)
					debug.setupvalue(ac.attack, 7, AcAttack10)
					for k, v in pairs(ac.animator.anims.basic) do
						v:Play(0.01,0.01,0.01)
					end                 
					if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
						game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, indexincrement, "") 
					end
				end
			end
		end
	end
	
	function AttackFunction()
		local ac = CombatFrameworkR.activeController
		if ac and ac.equipped then
			for indexincrement = 1, 1 do
				local bladehit = getAllBladeHits(60)
				if #bladehit > 0 then
					local AcAttack8 = debug.getupvalue(ac.attack, 5)
					local AcAttack9 = debug.getupvalue(ac.attack, 6)
					local AcAttack7 = debug.getupvalue(ac.attack, 4)
					local AcAttack10 = debug.getupvalue(ac.attack, 7)
					local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
					local NumberAc13 = AcAttack7 * 798405
					(function()
						NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
						AcAttack8 = math.floor(NumberAc12 / AcAttack9)
						AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
					end)()
					AcAttack10 = AcAttack10 + 1 
					debug.setupvalue(ac.attack, 5, AcAttack8)
					debug.setupvalue(ac.attack, 6, AcAttack9)
					debug.setupvalue(ac.attack, 4, AcAttack7)
					debug.setupvalue(ac.attack, 7, AcAttack10)
					for k, v in pairs(ac.animator.anims.basic) do
						v:Play(0.01,0.01,0.01)
					end                 
					if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
						game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
						game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, indexincrement, "")
					end
				end
			end
		end
	end
    
repeat wait(0) until game:IsLoaded()
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")  then
    repeat wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if _G.Team == "Pirate" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do                                                                                                
                    v.Function()
                end
            elseif _G.Team == "Marine" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.TextButton.Activated)) do                                                                                                
                    v.Function()
                end
            else
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do                                                                                                
                    v.Function()
                end
            end
        end
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end

function two(gotoCFrame)
	pcall(function()
		game.Players.LocalPlayer.Character.Humanoid.Sit = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude <= 200 then
		pcall(function() 
			tweenz:Cancel()
		end)
		game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = gotoCFrame
	else
		local tween_s = game:service"TweenService"
		local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - gotoCFrame.Position).Magnitude/325, Enum.EasingStyle.Linear)
		 tween, err = pcall(function()
			tweenz = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = gotoCFrame})
			tweenz:Play()
		end)
		if not tween then return err end
	end
	function _TweenCanCle()
		tweenz:Cancel()
	end
end

local EnemySpawns = Instance.new("Folder",workspace)
EnemySpawns.Name = "EnemySpawns"

for i, v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
    if v:IsA("Part") then
        local EnemySpawnsX2 = v:Clone()
        local result = string.gsub(v.Name, "Lv. ", "")
        local result2 = string.gsub(result, "[%[%]]", "")
        local result3 = string.gsub(result2, "%d+", "")
        local result4 = string.gsub(result3, "%s+", "")
        EnemySpawnsX2.Name = result4
        EnemySpawnsX2.Parent = workspace.EnemySpawns
        EnemySpawnsX2.Anchored = true
    end
end
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
        local EnemySpawnsX2 = v.HumanoidRootPart:Clone()
        local result = string.gsub(v.Name, "Lv. ", "")
        local result2 = string.gsub(result, "[%[%]]", "")
        local result3 = string.gsub(result2, "%d+", "")
        local result4 = string.gsub(result3, "%s+", "")

        EnemySpawnsX2.Name = result4
        EnemySpawnsX2.Parent = workspace.EnemySpawns
        EnemySpawnsX2.Anchored = true
    end
end
for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
    if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
        local EnemySpawnsX2 = v.HumanoidRootPart:Clone()
        local result = string.gsub(v.Name, "Lv. ", "")
        local result2 = string.gsub(result, "[%[%]]", "")
        local result3 = string.gsub(result2, "%d+", "")
        local result4 = string.gsub(result3, "%s+", "")

        EnemySpawnsX2.Name = result4
        EnemySpawnsX2.Parent = workspace.EnemySpawns
        EnemySpawnsX2.Anchored = true
    end
end

local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local tween = game:service"TweenService"
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local GuiService = game:GetService("GuiService")
local DamageModule = require(game:GetService("ReplicatedStorage").Effect.Container.Misc.Damage)
local old = DamageModule.Run
getgenv().FakeDamage = function(Damage)
DamageModule.Run = function(...)
    args = {...}
    if Damage then
        args[1]['Value'] = tostring(Damage)
    end
    return old(unpack(args))
end
end
	
function LoadSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfolder("SpeedHubX_V2") then
            makefolder("SpeedHubX_V2")
        end
        if not isfolder("SpeedHubX_V2/Blox Fruits/") then
            makefolder("SpeedHubX_V2/Blox Fruits/")
        end
        if not isfile("SpeedHubX_V2/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
            writefile("SpeedHubX_V2/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(_G.Settings))
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("SpeedHubX_V2/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
            for i,v in pairs(Decode) do
                _G.Settings[i] = v
            end
        end
    else
        return warn("Status: error")
    end
end

function SaveSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfile("SpeedHubX_V2/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
            LoadSettings()
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("SpeedHubX_V2/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
            local Array = {}
            for i,v in pairs(_G.Settings) do
                Array[i] = v
            end
            writefile("SpeedHubX_V2/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Array))
        end
    else
        return warn("Status: error")
    end
end

LoadSettings()

local id = game.PlaceId
if id == 2753915549 then
World1 = true; 
elseif id == 4442272183 then
World2 = true;
elseif id == 7449423635 then
World3 = true;
else
game:Shutdown()
end;
-- [GetMaterial]

function GetMaterial(matname)
	for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
	if type(v) == "table" then
		if v.Type == "Material" then
			if v.Name == matname then
				return v.Count
			end
		end
	end
	end
	return 0
	end
	
	local AllMaterial
	if World1 then
	AllMaterial = {
	"Magma Ore",
	"Leather",
	"Scrap Metal",
	"Angel Wings",
	"Fish Tail"
	}
	elseif World2 then
	AllMaterial = {
	"Magma Ore",
	"Scrap Metal",
	"Radioactive Material",
	"Vampire Fang",
	"Mystic Droplet",
	}
	elseif World3 then
	AllMaterial = {
	"Mini Tusk",
	"Fish Tail",
	"Scrap Metal",
	"Dragon Scale",
	"Conjured Cocoa",
	"Demonic Wisp",
	"Gunpowder",
	}
	end
	
	table.sort(AllMaterial)
	
	-- [CustomFindFirstChild]
	
	local function CustomFindFirstChild(tablename)
	for i, v in pairs(tablename) do
	if game:GetService("Workspace").Enemies:FindFirstChild(v) then
		return true
	end
	end
	return false
	end
	
	-- [CheckMaterial]
	
	local function CheckMaterial(v1)
	if World1 then
	if (v1 == "Magma Ore") then
		MaterialMob = { "Military Soldier", "Military Spy" };
		CFrameMon = CFrame.new(-5815, 84, 8820);
	elseif ((v1 == "Leather") or (v1 == "Scrap Metal")) then
		MaterialMob = { "Brute"};
		CFrameMon = CFrame.new(-1145, 15, 4350);
	elseif (v1 == "Angel Wings") then
		MaterialMob = { "God's Guard"};
		CFrameMon = CFrame.new(-4698, 845, -1912);
	elseif (v1 == "Fish Tail") then
		MaterialMob = { "Fishman Warrior", "Fishman Commando" };
		CFrameMon = CFrame.new(61123, 19, 1569);
	end
	end
	if World2 then
	if (v1 == "Magma Ore") then
		MaterialMob = { "Magma Ninja" };
		CFrameMon = CFrame.new(-5428, 78, -5959);
	elseif (v1 == "Scrap Metal") then
		MaterialMob = { "Swan Pirate" };
		CFrameMon = CFrame.new(878, 122, 1235);
	elseif (v1 == "Radioactive Material") then
		MaterialMob = { "Factory Staff" };
		CFrameMon = CFrame.new(295, 73, -56);
	elseif (v1 == "Vampire Fang") then
		MaterialMob = { "Vampire" };
		CFrameMon = CFrame.new(-6033, 7, -1317);
	elseif (v1 == "Mystic Droplet") then
		MaterialMob = { "Water Fighter", "Sea Soldier" };
		CFrameMon = CFrame.new(-3385, 239, -10542);
	end
	end
	if World3 then
	if (v1 == "Mini Tusk") then
		MaterialMob = { "Mythological Pirate" };
		CFrameMon = CFrame.new(-13545, 470, -6917);
	elseif (v1 == "Fish Tail") then
		MaterialMob = { "Fishman Raider", "Fishman Captain" };
		CFrameMon = CFrame.new(-10993, 332, -8940);
	elseif (v1 == "Scrap Metal") then
		MaterialMob = { "Jungle Pirate" };
		CFrameMon = CFrame.new(-12107, 332, -10549);
	elseif (v1 == "Dragon Scale") then
		MaterialMob = { "Dragon Crew Archer", "Dragon Crew Warrior" };
		CFrameMon = CFrame.new(6594, 383, 139);
	elseif (v1 == "Conjured Cocoa") then
		MaterialMob = { "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief",
			"Candy Rebel" };
		CFrameMon = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625);
	elseif (v1 == "Demonic Wisp") then
		MaterialMob = { "Demonic Soul" };
		CFrameMon = CFrame.new(-9507, 172, 6158);
	elseif (v1 == "Gunpowder") then
		MaterialMob = { "Pistol Billionaire" };
		CFrameMon = CFrame.new(-469, 74, 5904);
	end
	end
	end

	local function QuestCheck()
		local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
		if Lvl >= 1 and Lvl <= 9 then
			if tostring(game.Players.LocalPlayer.Team) == "Marines" then
				MobName = "Trainee [Lv. 5]"
				QuestName = "MarineQuest"
				QuestLevel = 1
				Mon = "Trainee"
				NPCPosition = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
			elseif tostring(game.Players.LocalPlayer.Team) == "Pirates" then
				MobName = "Bandit [Lv. 5]"
				Mon = "Bandit"
				QuestName = "BanditQuest1"
				QuestLevel = 1
				NPCPosition = CFrame.new(1059.99731, 16.9222069, 1549.28162, -0.95466274, 7.29721794e-09, 0.297689587, 1.05190106e-08, 1, 9.22064114e-09, -0.297689587, 1.19340022e-08, -0.95466274)
			end
			return {
				[1] = QuestLevel,
				[2] = NPCPosition,
				[3] = MobName,
				[4] = QuestName,
				[5] = LevelRequire,
				[6] = Mon,
				[7] = MobCFrame
			}
		end
	
		if Lvl >= 210 and Lvl <= 249 then
			MobName = "Dangerous Prisoner [Lv. 210]"
			QuestName = "PrisonerQuest"
			QuestLevel = 2
			Mon = "Dangerous Prisoner"
			NPCPosition = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
			local matchingCFrames = {}
			local result = string.gsub(MobName, "Lv. ", "")
			local result2 = string.gsub(result, "[%[%]]", "")
			local result3 = string.gsub(result2, "%d+", "")
			local result4 = string.gsub(result3, "%s+", "")
			
			for i,v in pairs(game.workspace.EnemySpawns:GetChildren()) do
				if v.Name == result4 then
					table.insert(matchingCFrames, v.CFrame)
				end
				MobCFrame = matchingCFrames
			end
			return {
				[1] = QuestLevel,
				[2] = NPCPosition,
				[3] = MobName,
				[4] = QuestName,
				[5] = LevelRequire,
				[6] = Mon,
				[7] = MobCFrame
			}
		end
		
		--game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		local GuideModule = require(game:GetService("ReplicatedStorage").GuideModule)
		local Quests = require(game:GetService("ReplicatedStorage").Quests)
		for i,v in pairs(GuideModule["Data"]["NPCList"]) do
			for i1,v1 in pairs(v["Levels"]) do
				if Lvl >= v1 then
					if not LevelRequire then
						LevelRequire = 0
					end
					if v1 > LevelRequire then
						NPCPosition = i["CFrame"]
						QuestLevel = i1
						LevelRequire = v1
					end
					if #v["Levels"] == 3 and QuestLevel == 3 then
						NPCPosition = i["CFrame"]
						QuestLevel = 2
						LevelRequire = v["Levels"][2]
					end
				end
			end
		end
		if Lvl >= 375 and Lvl <= 399 then -- Fishman Warrior
			if _G.Auto_Farm_Level and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
		end
	
		if Lvl >= 400 and Lvl <= 449 then -- Fishman Commando
			if _G.Auto_Farm_Level and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
		end
		for i,v in pairs(Quests) do
			for i1,v1 in pairs(v) do
				if v1["LevelReq"] == LevelRequire and i ~= "CitizenQuest" then
					QuestName = i
					for i2,v2 in pairs(v1["Task"]) do
						MobName = i2
						Mon = string.split(i2," [Lv. ".. v1["LevelReq"] .. "]")[1]
					end
				end
			end
		end
		if QuestName == "MarineQuest2" then
			QuestName = "MarineQuest2"
			QuestLevel = 1
			MobName = "Chief Petty Officer [Lv. 120]"
			Mon = "Chief Petty Officer"
			LevelRequire = 120
		elseif QuestName == "ImpelQuest" then
			QuestName = "PrisonerQuest"
			QuestLevel = 2
			MobName = "Dangerous Prisoner [Lv. 190]"
			Mon = "Dangerous Prisoner"
			LevelRequire = 210
			NPCPosition = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
		elseif QuestName == "SkyExp1Quest" then
			if QuestLevel == 1 then
				NPCPosition = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
			elseif QuestLevel == 2 then
				NPCPosition = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
			end
		elseif QuestName == "Area2Quest" and QuestLevel == 2 then
			QuestName = "Area2Quest"
			QuestLevel = 1
			MobName = "Swan Pirate [Lv. 775]"
			Mon = "Swan Pirate"
			LevelRequire = 775
		end
		MobName = MobName:sub(1,#MobName)
		if not MobName:find("Lv") then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				MonLV = string.match(v.Name, "%d+")
				if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
					MobName = v.Name
				end
			end
		end
		if not MobName:find("Lv") then
			for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
				MonLV = string.match(v.Name, "%d+")
				if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
					MobName = v.Name
					Mon = a
				end
			end
		end
	
		local matchingCFrames = {}
		local result = string.gsub(MobName, "Lv. ", "")
		local result2 = string.gsub(result, "[%[%]]", "")
		local result3 = string.gsub(result2, "%d+", "")
		local result4 = string.gsub(result3, "%s+", "")
		
		for i,v in pairs(game.workspace.EnemySpawns:GetChildren()) do
			if v.Name == result4 then
				table.insert(matchingCFrames, v.CFrame)
			else
				table.insert(matchingCFrames, nil)
			end
			MobCFrame = matchingCFrames
		end
		
		return {
			[1] = QuestLevel,
			[2] = NPCPosition,
			[3] = MobName,
			[4] = QuestName,
			[5] = LevelRequire,
			[6] = Mon,
			[7] = MobCFrame,
			[8] = MonQ,
			[9] = MobCFrameNuber
		}
	end
	
	function CheckBossQuest()
		if _G.Settings.Select_Boss == "Saber Expert" then 
			MsBoss = "Saber Expert"
			NameBoss = "Saber Expert"
			CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
		elseif _G.Settings.Select_Boss == "The Saw" then 
			MsBoss = "The Saw"
			NameBoss = "The Saw"
			CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
		elseif _G.Settings.Select_Boss == "Greybeard" then
			MsBoss = "Greybeard"
			NameBoss = "Greybeard"
			CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
		elseif _G.Settings.Select_Boss == "The Gorilla King" then
			MsBoss = "The Gorilla King"
			NameBoss = "The Gorilla King"
			NameQuestBoss = "JungleQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
			CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
		elseif _G.Settings.Select_Boss == "Bobby" then
			MsBoss = "Bobby"
			NameBoss = "Bobby"
			NameQuestBoss = "BuggyQuest1"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
			CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
		elseif _G.Settings.Select_Boss == "Yeti" then
			MsBoss = "Yeti"
			NameBoss = "Yeti"
			NameQuestBoss = "SnowQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
			CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
		elseif _G.Settings.Select_Boss == "Mob Leader" then
			MsBoss = "Mob Leader"
			NameBoss = "Mob Leader"
			CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
		elseif _G.Settings.Select_Boss == "Vice Admiral" then
			MsBoss = "Vice Admiral"
			NameBoss = "Vice Admiral"
			NameQuestBoss = "MarineQuest2"
			LevelQuestBoss = 2
			CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
			CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
		elseif _G.Settings.Select_Boss == "Warden" then
			MsBoss = "Warden"
			NameBoss = "Warden"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 1
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.Settings.Select_Boss == "Chief Warden" then
			MsBoss = "Chief Warden"
			NameBoss = "Chief Warden"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 2
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.Settings.Select_Boss == "Swan" then
			MsBoss = "Swan"
			NameBoss = "Swan"
			NameQuestBoss = "ImpelQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
			CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
		elseif _G.Settings.Select_Boss == "Magma Admiral" then
			MsBoss = "Magma Admiral"
			NameBoss = "Magma Admiral"
			NameQuestBoss = "MagmaQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
			CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
		elseif _G.Settings.Select_Boss == "Fishman Lord" then
			MsBoss = "Fishman Lord"
			NameBoss = "Fishman Lord"
			NameQuestBoss = "FishmanQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
			CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
		elseif _G.Settings.Select_Boss == "Wysper" then
			MsBoss = "Wysper"
			NameBoss = "Wysper"
			NameQuestBoss = "SkyExp1Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
			CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
		elseif _G.Settings.Select_Boss == "Thunder God" then
			MsBoss = "Thunder God"
			NameBoss = "Thunder God"
			NameQuestBoss = "SkyExp2Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
			CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
		elseif _G.Settings.Select_Boss == "Cyborg" then
			MsBoss = "Cyborg"
			NameBoss = "Cyborg"
			NameQuestBoss = "FountainQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
			CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
			-- New World
		elseif _G.Settings.Select_Boss == "Diamond" then
			MsBoss = "Diamond"
			NameBoss = "Diamond"
			NameQuestBoss = "Area1Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
			CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
		elseif _G.Settings.Select_Boss == "Jeremy" then
			MsBoss = "Jeremy"
			NameBoss = "Jeremy"
			NameQuestBoss = "Area2Quest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
		elseif _G.Settings.Select_Boss == "Fajita" then
			MsBoss = "Fajita"
			NameBoss = "Fajita"
			NameQuestBoss = "MarineQuest3"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
			CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
		elseif _G.Settings.Select_Boss == "Don Swan" then
			MsBoss = "Don Swan"
			NameBoss = "Don Swan"
			CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
		elseif _G.Settings.Select_Boss == "Smoke Admiral" then
			MsBoss = "Smoke Admiral"
			NameBoss = "Smoke Admiral"
			NameQuestBoss = "IceSideQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
			CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
		elseif _G.Settings.Select_Boss == "Cursed Captain" then
			MsBoss = "Cursed Captain"
			NameBoss = "Cursed Captain"
			CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
		elseif _G.Settings.Select_Boss == "Darkbeard" then
			MsBoss = "Darkbeard"
			NameBoss = "Darkbeard"
			CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
		elseif _G.Settings.Select_Boss == "Order" then
			MsBoss = "Order"
			NameBoss = "Order"
			CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
		elseif _G.Settings.Select_Boss == "Awakened Ice Admiral" then
			MsBoss = "Awakened Ice Admiral"
			NameBoss = "Awakened Ice Admiral"
			NameQuestBoss = "FrostQuest"
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
			CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
		elseif _G.Settings.Select_Boss == "Tide Keeper" then
			MsBoss = "Tide Keeper"
			NameBoss = "Tide Keeper"
			NameQuestBoss = "ForgottenQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
			CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
			-- Thire World
		elseif _G.Settings.Select_Boss == "Stone" then
			MsBoss = "Stone"
			NameBoss = "Stone"
			NameQuestBoss = "PiratePortQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-290, 44, 5577)
			CFrameBoss = CFrame.new(-1085, 40, 6779)
		elseif _G.Settings.Select_Boss == "Island Empress" then
			MsBoss = "Island Empress"
			NameBoss = "Island Empress"
			NameQuestBoss = "AmazonQuest2"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(5443, 602, 752)
			CFrameBoss = CFrame.new(5659, 602, 244)
		elseif _G.Settings.Select_Boss == "Kilo Admiral" then
			MsBoss = "Kilo Admiral"
			NameBoss = "Kilo Admiral"
			NameQuestBoss = "MarineTreeIsland"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(2178, 29, -6737)
			CFrameBoss =CFrame.new(2846, 433, -7100)
		elseif _G.Settings.Select_Boss == "Captain Elephant" then
			MsBoss = "Captain Elephant"
			NameBoss = "Captain Elephant"
			NameQuestBoss = "DeepForestIsland"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
			CFrameBoss = CFrame.new(-13221, 325, -8405)
		elseif _G.Settings.Select_Boss == "Beautiful Pirate" then
			MsBoss = "Beautiful Pirate"
			NameBoss = "Beautiful Pirate"
			NameQuestBoss = "DeepForestIsland2"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
			CFrameBoss = CFrame.new(5182, 23, -20)
		elseif _G.Settings.Select_Boss == "Cake Queen" then
			MsBoss = "Cake Queen"
			NameBoss = "Cake Queen"
			NameQuestBoss = "IceCreamIslandQuest"             
			LevelQuestBoss = 3
			CFrameQuestBoss = CFrame.new(-716, 382, -11010)
			CFrameBoss = CFrame.new(-821, 66, -10965)
		elseif _G.Settings.Select_Boss == "rip_indra True Form" then
			MsBoss = "rip_indra True Form"
			NameBoss = "rip_indra True Form"
			CFrameBoss = CFrame.new(-5359, 424, -2735)
		elseif _G.Settings.Select_Boss == "Longma" then
			MsBoss = "Longma"
			NameBoss = "Longma"
			CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
		elseif _G.Settings.Select_Boss == "Soul Reaper" then
			MsBoss = "Soul Reaper"
			NameBoss = "Soul Reaper"
			CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
		end
	end
	
	function AutoHaki()
		if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
		end
	end
	
	function EquipWeapon(ToolSe)
		if not _G.NotAutoEquip then
			if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
				Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
				wait(.1)
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
			end
		end
	end
	
	function UnEquipWeapon(Weapon)
		if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
			_G.NotAutoEquip = true
			wait(.5)
			game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
			wait(.1)
			_G.NotAutoEquip = false
		end
	end
	
	function Com(com,...)
		local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
		if Remote:IsA("RemoteEvent") then
			Remote:FireServer(...)
		elseif Remote:IsA("RemoteFunction") then
			Remote:InvokeServer(...)
		end
	end
	
	-- [Tween Functions]
	
	local function GetIsLand(...)
		local RealtargetPos = {...}
		local targetPos = RealtargetPos[1]
		local RealTarget
		if type(targetPos) == "vector" then
			RealTarget = targetPos
		elseif type(targetPos) == "userdata" then
			RealTarget = targetPos.Position
		elseif type(targetPos) == "number" then
			RealTarget = CFrame.new(unpack(RealtargetPos))
			RealTarget = RealTarget.p
		end
	
		local ReturnValue
		local CheckInOut = math.huge;
		if game.Players.LocalPlayer.Team then
			for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
				local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
				if ReMagnitude < CheckInOut then
					CheckInOut = ReMagnitude;
					ReturnValue = v.Name
				end
			end
			if ReturnValue then
				return ReturnValue
			end 
		end
	end
	
	local function toTarget(...)
		local RealtargetPos = { ... }
		local targetPos = RealtargetPos[1]
		local RealTarget
		if type(targetPos) == "vector" then
		RealTarget = CFrame.new(targetPos)
		elseif type(targetPos) == "userdata" then
		RealTarget = targetPos
		elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
		end
		
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then
		if tween then tween:Cancel() end
		repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2)
		end
		
		local tweenfunc = {}
		local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
		if Distance < 50 then
			Speed = 650
		elseif Distance < 250 then
			Speed = 590
		elseif Distance < 500 then
			Speed = 500
		elseif Distance < 750 then
			Speed = 400
		elseif Distance >= 1000 then
			Speed = 350
		end
		if _G.BypassTP then
		if Distance > 3000 and not AutoFarmMaterial and not _G.AutoGodHumanand and not _G.AutoRaids and not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) and not (Name == "Fishman Commando" or Name == "Fishman Warrior") then
			repeat wait() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5076.60107, 314.54129, -3152.13086, 0.351963997, -4.56893581e-08, -0.93601352, 6.84364423e-08, 1, -2.30789325e-08, 0.93601352, -5.59344855e-08, 0.351963997))  until (CFrame.new(-5076.60107, 314.54129, -3152.13086, 0.351963997, -4.56893581e-08, -0.93601352, 6.84364423e-08, 1, -2.30789325e-08, 0.93601352, -5.59344855e-08, 0.351963997).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
				pcall(function()
				tween:Cancel()
				fkwarp = false
		
				if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
					wait(.1)
					Com("F_", "TeleportToSpawn")
				elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					wait(0.1)
					repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
				else
					if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
						if fkwarp == false then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
						end
						fkwarp = true
					end
					wait(.08)
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
					wait(.1)
					Com("F_", "SetSpawnPoint")
				end
				wait(0.2)
		
				return
			end)
		end
		end
		local tween_s = game:service "TweenService"
		local info = TweenInfo.new(
		(RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
		.Magnitude / Speed, Enum.EasingStyle.Linear)
		local tweenw, err = pcall(function()
				if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
					local Highlight = Instance.new("Highlight")
					Highlight.FillColor = Color3.new(0, 0, 0)
					Highlight.OutlineColor = Color3.new(0,0,0)
					Highlight.Parent = game.Players.LocalPlayer.Character
				end
		tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, { CFrame = RealTarget })
		tween:Play()
		end)
		
		function tweenfunc:Stop()
		tween:Cancel()
		end
		
		function tweenfunc:Wait()
		tween.Completed:Wait()
		end
		
		return tweenfunc
		end

		TweeSpeed = 300
		getgenv().ToTarget = function(Point)
			TweenPlay = (Point.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
			if LocalPlayer.Character.Humanoid.Sit == true then 
				LocalPlayer.Character.Humanoid.Sit = false 
			end
			pcall(function() 
				tot = game:GetService("TweenService"):Create(LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(TweenPlay/TweeSpeed, Enum.EasingStyle.Linear),{CFrame = Point})
			end)
		
			if _G.StopTween == true then
				tot:Cancel()
				_G.Clip = false
			end
	
			if TweenPlay > 2000 and _G.Bypass_TP then
				repeat wait() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5076.60107, 314.54129, -3152.13086, 0.351963997, -4.56893581e-08, -0.93601352, 6.84364423e-08, 1, -2.30789325e-08, 0.93601352, -5.59344855e-08, 0.351963997))  until (CFrame.new(-5076.60107, 314.54129, -3152.13086, 0.351963997, -4.56893581e-08, -0.93601352, 6.84364423e-08, 1, -2.30789325e-08, 0.93601352, -5.59344855e-08, 0.351963997).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
				pcall(function() 
					pcall(function()
						tot:Cancel()
						fkwarp = false
		
						if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(Point)) then 
							wait(.1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TeleportToSpawn")
						elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(Point)) then
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
							wait(0.1)
							repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
						else
							if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
								if fkwarp == false then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
								end
								fkwarp = true
							end
							wait(.08)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
							repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
							wait(.1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						end
						wait(0.2)
						return
					end)
				end)
			end
		
			tot:Play()
			if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
				local Highlight = Instance.new("Highlight")
				Highlight.FillColor = Color3.new(0, 0, 0)
				Highlight.OutlineColor = Color3.new(0,0,0)
				Highlight.Parent = game.Players.LocalPlayer.Character
			end
			if TweenPlay < 50 then
				TweeSpeed = 650
			elseif TweenPlay < 250 then
				TweeSpeed = 590
			elseif TweenPlay < 500 then
				TweeSpeed = 500
			elseif TweenPlay < 750 then
				TweeSpeed = 400
			elseif TweenPlay >= 1000 then
				TweeSpeed = 350
			end
			if _G.StopTween then
				tot:Cancel()
				BringMobFarm = false
				UseSkillGun = false
				_G.UseSkill = false
			elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				tot:Play()
			end
		end

	local function tweenModel(model, goToCFrame)
		local owner = model:FindFirstChild("Owner")
		if owner and owner:IsA("ObjectValue") and owner.Value then
			local ownerName = owner.Value.Name
			if ownerName == game.Players.LocalPlayer.Name then
				for _, part in pairs(model:GetDescendants()) do
					if part:IsA("BasePart") then
						local TweenService = game:GetService("TweenService")
						local info = TweenInfo.new((part.Position - goToCFrame.Position).Magnitude / 200, Enum.EasingStyle.Linear)
						local tween = TweenService:Create(part, info, { CFrame = goToCFrame })
						tween:Play()
                        if _G.stpboat then
                            tween:Cancel()
                        end
                        function StopBoatF()
                            tween:Cancel()
                        end
					end
				end
			end
		end
	end

	local function GetIsLand(...)
		local RealtargetPos = {...}
		local targetPos = RealtargetPos[1]
		local RealTarget
		if type(targetPos) == "vector" then
			RealTarget = targetPos
		elseif type(targetPos) == "userdata" then
			RealTarget = targetPos.Position
		elseif type(targetPos) == "number" then
			RealTarget = CFrame.new(unpack(RealtargetPos))
			RealTarget = RealTarget.p
		end
	
		local ReturnValue
		local CheckInOut = math.huge;
		if game.Players.LocalPlayer.Team then
			for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
				local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
				if ReMagnitude < CheckInOut then
					CheckInOut = ReMagnitude;
					ReturnValue = v.Name
				end
			end
			if ReturnValue then
				return ReturnValue
			end 
		end
	end
	
	function StopTween(target)
		if not target then
			tot:Cancel()
			_G.StopTween = true
			_G.UseSkill = false
			--game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
			if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
			end
			wait(0.2)
			_G.StopTween = false
			_G.Clip = false
		end
		if game.Players.LocalPlayer.Character:FindFirstChild('Highlight') then
			game.Players.LocalPlayer.Character:FindFirstChild('Highlight'):Destroy()
		end
	end
	
	function UseCode(Text)
		game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
	end
	
	function Hop()
		local PlaceID = game.PlaceId
		local AllIDs = {}
		local foundAnything = ""
		local actualHour = os.date("!*t").hour
		local Deleted = false
		function TPReturner()
			local Site;
			if foundAnything == "" then
				Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
			else
				Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
			end
			local ID = ""
			if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
				foundAnything = Site.nextPageCursor
			end
			local num = 0;
			for i,v in pairs(Site.data) do
				local Possible = true
				ID = tostring(v.id)
				if tonumber(v.maxPlayers) > tonumber(v.playing) then
					for _,Existing in pairs(AllIDs) do
						if num ~= 0 then
							if ID == tostring(Existing) then
								Possible = false
							end
						else
							if tonumber(actualHour) ~= tonumber(Existing) then
								local delFile = pcall(function()
									AllIDs = {}
									table.insert(AllIDs, actualHour)
								end)
							end
						end
						num = num + 1
					end
					if Possible == true then
						table.insert(AllIDs, ID)
						wait()
						pcall(function()
							wait()
							game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
						end)
						wait(4)
					end
				end
			end
		end
		function Teleport() 
			while wait() do
				pcall(function()
					TPReturner()
					if foundAnything ~= "" then
						TPReturner()
					end
				end)
			end
		end
		Teleport()
	end
	
	function SkyJumpNoCoolDown()
		if _G.Infinit_SkyJump then
			for i,v in next, getgc() do
				if game.Players.LocalPlayer.Character.Geppo then
					if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Geppo then
						for i2,v2 in next, getupvalues(v) do
							if tostring(v2) == "0" then
								repeat wait(.1)
									setupvalue(v,i2,0)
								until not _G.Infinit_SkyJump
							end
						end
					end
				end
			end
		end
	end
	
	function InfAbility()
		if _G.Infinit_Ability then
			if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
				local inf = Instance.new("ParticleEmitter")
				inf.Acceleration = Vector3.new(0,0,0)
				inf.Archivable = true
				inf.Drag = 20
				inf.EmissionDirection = Enum.NormalId.Top
				inf.Enabled = true
				inf.Lifetime = NumberRange.new(0.2,0.2)
				inf.LightInfluence = 0
				inf.LockedToPart = true
				inf.Name = "Agility"
				inf.Rate = 500

				inf.Size = NumberSequence.new(0.50,0.20)
				inf.RotSpeed = NumberRange.new(999, 9999)
				inf.Rotation = NumberRange.new(0, 0)
				inf.Speed = NumberRange.new(35, 35)
				inf.SpreadAngle = Vector2.new(360,360)
				inf.Texture = "rbxassetid://14300572370"
				inf.VelocityInheritance = 0
				inf.ZOffset = 2
				inf.Transparency = NumberSequence.new(0)
				inf.Color = ColorSequence.new(Color3.fromRGB(128, 0, 255),Color3.fromRGB(128, 0, 255))
				inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			end
		else
			if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
				game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
			end
		end
	end
	
	_G.Dodge_No_CoolDown = false
	function DodgeNoCoolDown()
		if _G.Dodge_No_CoolDown then
			for i,v in next, getgc() do
				if game.Players.LocalPlayer.Character.Dodge then
					if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
						for i2,v2 in next, getupvalues(v) do
							if tostring(v2) == "0.4" then
								repeat wait(.1)
									setupvalue(v,i2,0)
								until not _G.Dodge_No_CoolDown
							end
						end
					end
				end
			end
		end
	end
	
	local LocalPlayer = game:GetService'Players'.LocalPlayer
	local originalstam = LocalPlayer.Character.Energy.Value
	function InfinitEnergy()
		game:GetService'Players'.LocalPlayer.Character.Energy.Changed:connect(function()
			if _G.Infinit_Energy then
				LocalPlayer.Character.Energy.Value = originalstam
			end 
		end)
	end
	
	function RemoveSpaces(str)
		return str:gsub(" Fruit", "")
	end
	
	local function formatNumber(number)
		local i, k, j = tostring(number):match("(%-?%d?)(%d*)(%.?.*)")
		return i..k:reverse():gsub("(%d%d%d)", "%1,"):reverse()..j
	end

	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	
	---------------------------------------------------------------
	
	spawn(function()
		pcall(function() --velocity
			game:GetService("RunService").Stepped:Connect(function()
				if _G.Auto_Farm_Level or _G.AutoObservation or _G.TPNPCDF or _G.Auto_Kill_Player or AutoFarmMaterial or _G.AutoBuddySwords or _G.AutoCavander or _G.Bboat or _G.TPTOBOAT or _G.AutoEvent or _G.QRepairBoat or _G.QRepairBoat2 or _G.WoodPlank or _G.AutoMirageIsland or _G.Auto_Gear or _G.TptoKisuneIsland  or _G.NeareastFarm or _G.TptoKisuneshrine or _G.AutoFarmBossHallow or _G.Auto_Yama or _G.Auto_Sea_King or _G.Auto_Dack_Coat or _G.Auto_Rip_Indar or _G.Auto_Farm_Mastery_Gun or _G.Auto_Farm_All_Sword or _G.Auto_Awakening_One_Quest or _G.Auto_Lever_UnLock or _G.Auto_Complete_Trial or _G.Auto_Farm_Mastery_Fruit or Auto_Mirage_Island or Auto_Gear or _G.Auto_Farm_All_Boss or _G.Auto_New_World or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.Auto_Farm_Boss or _G.Auto_Castle_Raid or _G.Auto_Elite_Hunter or _G.Auto_Cake_Prince or _G.Auto_Farm_All_Boss or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Farm_Scrap_and_Leather or _G.Auto_Farm_Angel_Wing or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Farm_Radioactive or _G.Auto_Farm_Vampire_Fang or _G.Auto_Farm_Mystic_Droplet or _G.Auto_Farm_GunPowder or _G.Auto_Farm_Dragon_Scales or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Fish_Tail or _G.Auto_Farm_Mini_Tusk or _G.Auto_Farm_Magma_Ore or _G.Auto_Farm_Bone or _G.Auto_Farm_Conjured_Cocoa or _G.Auto_Open_Dough_Dungeon or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Holy_Torch or _G.Auto_Canvander or _G.Auto_Twin_Hook or _G.Auto_Serpent_Bow or _G.Auto_Fully_Death_Step or _G.Auto_Fully_SharkMan_Karate or _G.Teleport_to_Player or _G.Auto_Kill_Player_Melee or _G.Auto_Kill_Player_Gun or _G.Start_Tween_Island or _G.Auto_Next_Island or _G.Auto_Kill_Law or _G.AutoKillTerrorshark or _G.AutoKillPiranha or _G.AutoKillShark or _G.AutoKillFishCrewMember then
					if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
						local Noclip = Instance.new("BodyVelocity")
						Noclip.Name = "BodyClip"
						Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
						Noclip.MaxForce = Vector3.new(100000,100000,100000)
						Noclip.Velocity = Vector3.new(0,0,0)
					end
				else	
					if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
						game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
					end
				end
			end)
		end)
	end)

	spawn(function()
		pcall(function()
			game:GetService("RunService").Stepped:Connect(function()
				if _G.Auto_Farm_Level or _G.AutoObservation or _G.TPNPCDF or _G.Auto_Kill_Player or AutoFarmMaterial or _G.AutoBuddySwords or _G.Bboat or _G.TPTOBOAT or _G.AutoEvent or _G.QRepairBoat or _G.QRepairBoat2 or _G.WoodPlank or _G.AutoCavander or _G.TPNPCDF or _G.AutoMirageIsland or _G.Auto_Gear or _G.TptoKisuneIsland or _G.NeareastFarm or _G.TptoKisuneshrine or _G.AutoFarmBossHallow or _G.Auto_Yama or _G.Auto_Sea_King or _G.Auto_Dack_Coat or _G.Auto_Rip_Indar or _G.Auto_Farm_Mastery_Gun or _G.Auto_Farm_All_Sword or _G.Auto_Awakening_One_Quest or _G.Auto_Farm_Mastery_Fruit or _G.Auto_Lever_UnLock or _G.Auto_Complete_Trial or Auto_Mirage_Island or Auto_Gear or _G.Auto_Farm_All_Boss or _G.Auto_New_World or _G.Auto_Third_World or _G.Auto_Farm_Chest or _G.Auto_Farm_Boss or _G.Auto_Castle_Raid or _G.Auto_Elite_Hunter or _G.Auto_Cake_Prince or _G.Auto_Farm_All_Boss or _G.Auto_Saber or _G.Auto_Pole or _G.Auto_Farm_Scrap_and_Leather or _G.Auto_Farm_Angel_Wing or _G.Auto_Factory_Farm or _G.Auto_Farm_Ectoplasm or _G.Auto_Bartilo_Quest or _G.Auto_Rengoku or _G.Auto_Farm_Radioactive or _G.Auto_Farm_Vampire_Fang or _G.Auto_Farm_Mystic_Droplet or _G.Auto_Farm_GunPowder or _G.Auto_Farm_Dragon_Scales or _G.Auto_Evo_Race_V2 or _G.Auto_Swan_Glasses or _G.Auto_Dragon_Trident or _G.Auto_Soul_Reaper or _G.Auto_Farm_Fish_Tail or _G.Auto_Farm_Mini_Tusk or _G.Auto_Farm_Magma_Ore or _G.Auto_Farm_Bone or _G.Auto_Farm_Conjured_Cocoa or _G.Auto_Open_Dough_Dungeon or _G.Auto_Rainbow_Haki or _G.Auto_Musketeer_Hat or _G.Auto_Holy_Torch or _G.Auto_Canvander or _G.Auto_Twin_Hook or _G.Auto_Serpent_Bow or _G.Auto_Fully_Death_Step or _G.Auto_Fully_SharkMan_Karate or _G.Teleport_to_Player or _G.Auto_Kill_Player_Melee or _G.Auto_Kill_Player_Gun or _G.Start_Tween_Island or _G.Auto_Next_Island or _G.Auto_Kill_Law or _G.AutoKillTerrorshark or _G.AutoKillPiranha or _G.AutoKillShark or _G.AutoKillFishCrewMember then
					for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
						if v:IsA("BasePart") then
						v.CanCollide = false    
					end
				end
			end
		end)
	end)
end)
	
	
	local function Bypass(Position)
		local CFramePos = Position
		_G.StopTween =  true
		if W3 then
			if (CFramePos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 4000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5076.60107, 314.54129, -3152.13086, 0.351963997, -4.56893581e-08, -0.93601352, 6.84364423e-08, 1, -2.30789325e-08, 0.93601352, -5.59344855e-08, 0.351963997))
			end
		end
		
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111111,111111,111111)
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		game.Players.LocalPlayer.Character.Head:Destroy()
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		local args = {
			[1] = "SetSpawnPoint"
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		
		wait()
		local args = {
			[1] = "SetSpawnPoint"
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait(0.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		local args = {
			[1] = "SetSpawnPoint"
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111111,111111,111111)
		wait()
		game.Players.LocalPlayer.Character.Head:Destroy()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999999,99999999,99999999)
		wait()
		local args = {
			[1] = "SetLastSpawnPoint",
			[2] = tostring(game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value)
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		local args = {
			[1] = "SetSpawnPoint"
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999999,99999999,99999999)
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99999999,99999999,99999999)
		wait()
		local args = {
			[1] = "SetLastSpawnPoint",
			[2] = tostring(game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value)
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		local args = {
			[1] = "SetLastSpawnPoint",
			[2] = tostring(game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value)
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait(0.5)
		local args = {
			[1] = "SetLastSpawnPoint",
			[2] = tostring(game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value)
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		wait()
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		game.Players.LocalPlayer.Character.Head:Destroy()
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
		wait()
		_G.StopTween = false
		return
	end
	
	function TPPlayer(Point)
		TweeSpeed = 300
		local LocalPlayer = game.Players.LocalPlayer 
		TweenPlay = (Point.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		pcall(function() 
				tot = game:GetService("TweenService"):Create(LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(TweenPlay/TweeSpeed, Enum.EasingStyle.Linear),{CFrame = Point})
		end);tot:Play()
		if TweenPlay >= 1200 then
			game.Players.LocalPlayer.Character.Head:Destroy()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point * CFrame.new(0,50,0)
			wait(.2)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
			wait(.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point * CFrame.new(0,50,0)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			wait(.1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
			wait(0.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			_G.Clip = false
		elseif TweenPlay <= 300 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
		end
		if _G.StopTween == true then tot:Cancel();_G.Clip = false end
		if _G.StopTween then
			tot:Cancel()
			BringMobFarm = false
			UseSkillGun = false
			_G.UseSkill = false
		elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
			tot:Play()
		end
	end	
	
	function Check_Sword(Sword_Name)
		for i, v in pairs(game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("getInventory")) do
			if (v.Type == "Sword") then
				if v.Name == Sword_Name then
					return true
				end
			end
		end
	end
	
    local Status = Tabs.Main:AddParagraph({
        Title = "Home",
        Content = "Status:"
    })
    
    if game.PlaceId == 2753915549 then
    StatusWorld = "1"
    
    elseif game.PlaceId == 4442272183 then
    StatusWorld = "2"
    
    elseif game.PlaceId == 7449423635 then
    StatusWorld = "3"
    end
    
    function UpdateClient()
    local Fps = workspace:GetRealPhysicsFPS()
    local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    local Status1 = "Ping: "..Ping.." | World: "..StatusWorld
    Status:SetDesc(Status1) 
    end
    
    spawn(function()
        while true do wait(.1)
            UpdateClient()
        end
    end)
    
        Tabs.Main:AddParagraph({
            Title = "Config",
            Content = ""
        })
    
        WeaponList = {"Melee","Sword","Devil Fruit" }
    
        local SetWeapon = Tabs.Main:AddDropdown("DropdownWeapon", {
            Title = "Weapon",
            Values = WeaponList,
            Multi = false,
            Default = 1,
        })
        SetWeapon:SetValue("Melee") 
    
        SetWeapon:OnChanged(function(value)
            SelectWeapon = value
            _G.Settings.SelectWeapon = value
        end)

        task.spawn(function()
            while wait() do
                pcall(function()
                    if SelectWeapon == "Melee" then
                        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v.ToolTip == "Melee" then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                    _G.Select_Weapon = v.Name
                                end
                            end
                        end
                    elseif SelectWeapon == "Sword" then
                        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v.ToolTip == "Sword" then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                    _G.Select_Weapon = v.Name
                                end
                            end
                        end
                    elseif SelectWeapon == "Devil Fruit" then
                        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v.ToolTip == "Blox Fruit" then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                    _G.Select_Weapon = v.Name
                                end
                            end
                        end
                    else
                        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v.ToolTip == "Melee" then
                                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                    _G.Select_Weapon = v.Name
                                end
                            end
                        end
                    end
                end)
            end
        end)

    
local SetMethod = Tabs.Main:AddDropdown("DropdownMethod", {
        Title = "Weapon",
        Values = {"Upper","Behind","Below"},
        Multi = false,
        Default = 1,
    })
SetMethod:SetValue("Upper") 
    
SetMethod:OnChanged(function(value)
	_G.Method = value
	_G.Settings.Method = value
end)

_G.DistanceAutoFarm = 27

task.spawn(function()
     while task.wait(0) do
        pcall(function()
            if _G.Method == "Behind" then
                MethodFarm = CFrame.new(0, 0,  _G.DistanceAutoFarm)
            elseif _G.Method == "Below" then
                MethodFarm = CFrame.new(0, - _G.DistanceAutoFarm, 0) * CFrame.Angles(math.rad(90), 0, 0)
            elseif _G.Method == "Upper" then
                MethodFarm = CFrame.new(0,  _G.DistanceAutoFarm, 0) * CFrame.Angles(math.rad(0), 0, 0)
            else
                MethodFarm = CFrame.new(0,  _G.DistanceAutoFarm, 0)
            end
        end)
    end
end)

FastAttack = {"Slow","Fast","Extreme",}

local SetAttack = Tabs.Main:AddDropdown("DropdownAttackType", {
    Title = "Attack Type",
    Values = FastAttack,
    Multi = false,
    Default = 1,
})

SetAttack:SetValue("Fast") 

SetAttack:OnChanged(function(a)
	SelectSpeedFast = a
	if SelectSpeedFast == "Slow" then
		_G.Fast_Delay = 10
	elseif SelectSpeedFast == "Fast" then
		_G.Fast_Delay = 0.029
	elseif SelectSpeedFast == "Extreme" then
		_G.Fast_Delay = 0
	end
end)

local TurnFastAttack = Tabs.Main:AddToggle("FastAttack_Toggle", {Title = "Fast Attack", Default = true })

TurnFastAttack:OnChanged(function(value)
    _G.FastAttack = value
end)

task.spawn(function()
	pcall(function()
	while task.wait(_G.Fast_Delay) do
		if FastAttack and _G.FastAttack then
			AttackFunction()
		   end
		end
	end)
end)

Options.FastAttack_Toggle:SetValue(true)

Tabs.Main:AddParagraph({
    Title = "Farming",
    Content = ""
})

local ToggleLevel = Tabs.Main:AddToggle("ToggleLevel", {
        Title = "Auto Farm Level",
        Description = "",
        Default = false })
    ToggleLevel:OnChanged(function(Value)
        _G.AutoLevel = Value
        if Value == false then
            wait()
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end)
    Options.ToggleLevel:SetValue(false)
    spawn(function()
        while task.wait() do
        if _G.AutoLevel then
        pcall(function()
          CheckLevel()
          if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
          if BypassTP then
            if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude > 2500 then
            BTP(CFrameQ)
            elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude < 2500 then
            Tween(CFrameQ)
            end
                else
              Tween(CFrameQ)
              end
          if (CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,QuestLv)
          end
          elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
          for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
          if v.Name == Ms then
          repeat wait(_G.Fast_Delay)
          AttackNoCoolDown()
          bringmob = true
          AutoHaki()
          EquipTool(SelectWeapon)
          Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
          v.HumanoidRootPart.Transparency = 1
          v.Humanoid.JumpPower = 0
          v.Humanoid.WalkSpeed = 0
          v.HumanoidRootPart.CanCollide = false
          FarmPos = v.HumanoidRootPart.CFrame
          MonFarm = v.Name
          until not _G.AutoLevel or not v.Parent or v.Humanoid.Health <= 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
          bringmob = false
        end   
          end
          end
          for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
          if string.find(v.Name,NameMon) then
          if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude >= 10 then
            Tween(v.CFrame * CFrame.new(posX,posY,posZ))
          end
          end
          end
          end
          end)
        end
        end
        end)

local EnableNeareastFarm = Tabs.Main:AddToggle("EnableFarmNeareast_Toggle", {Title = "Auto Farm Neareast Mob", Default = false })
Options.EnableFarmNeareast_Toggle:SetValue(false)

EnableNeareastFarm:OnChanged(function(value)
    _G.NeareastFarm = value
end)

spawn(function()
    while task.wait() do
        if _G.NeareastFarm then
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 2000 and v.Humanoid.Health > 0 then
                            repeat
                               wait() 
                                EquipWeapon(_G.Select_Weapon)
                                PosMon = v.HumanoidRootPart.CFrame
                                v.HumanoidRootPart.CanCollide = false 
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                StartMagnet = true
                                FastAttack = true
                                toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                if not FastAttack then
                                game:GetService 'VirtualUser':CaptureController()
                                game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end 
                            until not _G.NeareastFarm or not v.Parent or v.Humanoid.Health <= 0 
                        end
                end
            end)
        end
    end
end)

AttackRandomType_MonCFrame = 1
	spawn(function()
		while wait() do 
			AttackRandomType_MonCFrame = math.random(1,5)
		wait(0.3)
	end
end)

local SetCFarme = 1
spawn(function()
    while wait() do
        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
        local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
        pcall(function()
            if _G.Auto_Farm_Level then
                    if QuestC.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild(QuestCheck()[3]) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == QuestCheck()[3] then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            if _G.Auto_CFrame then
                                                SetCFarme = 1
                                            end
                                            if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
                                                --game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                            else
                                                PosMon = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                BringMobFarm = true
                                                EquipWeapon(_G.Select_Weapon)
                                                v.HumanoidRootPart.Transparency = 1
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)

                                                if not _G.Auto_Farm_Level or not _G.Auto_Farm_LevelO or _G.Auto_Farm_Level or _G.Auto_Farm_LevelO then
                                                    _G.FastAttack = true
                                                end
                                            end
                                        until not _G.Auto_Farm_Level or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
                                    end
                                end
                            end
                        else
                            --UnEquipWeapon(_G.Select_Weapon)
                            if _G.Auto_CFrame and not _G.AutoFarmFast then
                                getgenv().ToTarget(QuestCheck()[7][SetCFarme] * MethodFarm)
                                if (QuestCheck()[7][SetCFarme].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                    if SetCFarme == nil or SetCFarme == '' then
                                        SetCFarme = 1
                                    elseif SetCFarme >= #QuestCheck()[7] then
                                        SetCFarme = 1
                                    end
                                    SetCFarme =  SetCFarme + 1
                                    wait(0.5)
                                end
                            else
                                if not _G.AutoFarmFast then
                                    if AttackRandomType_MonCFrame == 1 then
                                        getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
                                    elseif AttackRandomType_MonCFrame == 2 then
                                        getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
                                    elseif AttackRandomType_MonCFrame == 3 then
                                        getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(20,30,0))
                                    elseif AttackRandomType_MonCFrame == 4 then
                                        getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
                                    elseif AttackRandomType_MonCFrame == 5 then
                                        getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(-20,30,0))
                                    else
                                        getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
                                    end
                                end
                            end
                        end
                    else
                        getgenv().ToTarget(QuestCheck()[2])
                        if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                            BringMobFarm = false
                            wait(0.2)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1]) wait(0.5)
                            getgenv().ToTarget(QuestCheck()[7][1] * MethodFarm)
                        end
                    end
                end
            end)
        end
    end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        pcall(function()
            if _G.BringNormal then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.Auto_Farm_Level and BringMobFarm and v.Name == Mon and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 200 then
                        v.HumanoidRootPart.CFrame = PosMon
                        v.HumanoidRootPart.CanCollide = false
                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                    end
                end
            end
        end)
    end) 
end)

local ChestFarmGood = Tabs.Main:AddToggle("ChestFarmGood_Toggle", {Title = "Chest Farm [Good]", Default = false })

local ChestFarmTween = Tabs.Main:AddToggle("ChestFarmTween_Toggle", {Title = "Chest Farm [Tween]", Default = false })
Options.ChestFarmGood_Toggle:SetValue(false)
Options.ChestFarmTween_Toggle:SetValue(false)

ChestFarmTween:OnChanged(function(value)
    _G.AutoFarmChest = value
end)

spawn(function() 
    while wait() do 
        if _G.AutoFarmChest then
            for _, child in ipairs(Workspace:GetChildren()) do
                if string.find(child.Name, "Chest") then
                    toTarget(child.CFrame * CFrame.new(0,0,0))
                    if (child.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                        UnEquipWeapon(_G.SelectWeapon)
                    else
                        EquipWeapon(_G.SelectWeapon)
                    end
                    end
                end
            end
        end
    end)

ChestFarmGood:OnChanged(function(value)
    highChestOnly = value
    AllowRunService = value
end)

task.spawn(function()
    while true and task.wait(.5) do
        if AllowRunService == true then
            local ohString1 = "SetTeam"
            local ohString2 = "Marines"

            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
        end
    end
end)

task.spawn(function()
    while task.wait() do
        if AllowRunService then
            if highChestOnly then
                local hasChar = game.Players.LocalPlayer:FindFirstChild("Character")
                if not game.Players.LocalPlayer.Character then
        
                else
                    local hasCrewTag = game.Players.LocalPlayer.Character:FindFirstChild("CrewBBG",true)
                    if hasCrewTag then hasCrewTag:Destroy() end
                    local hasHumanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                    if hasHumanoid then
                        local Chest = game.Workspace:FindFirstChild("Chest4") or game.Workspace:FindFirstChild("Chest3") or game.Workspace:FindFirstChild("Chest2") or game.Workspace:FindFirstChild("Chest1") or game.Workspace:FindFirstChild("Chest")
                        
                        if Chest then
                            game.Players.LocalPlayer.Character:PivotTo(Chest:GetPivot())
                            firesignal(Chest.Touched,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        else
                            
                            break
                        end
                    end 
                end
            elseif highChestOnly then
                local hasChar = game.Players.LocalPlayer:FindFirstChild("Character")
                if not game.Players.LocalPlayer.Character then
                else
                    local hasCrewTag = game.Players.LocalPlayer.Character:FindFirstChild("CrewBBG",true)
                    if hasCrewTag then hasCrewTag:Destroy() end
                    local hasHumanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                    if hasHumanoid then
                        local Chest = game.Workspace:FindFirstChild("Chest4") or game.Workspace:FindFirstChild("Chest3") or game.Workspace:FindFirstChild("Chest2")
                        if Chest then
                            game.Players.LocalPlayer.Character:PivotTo(Chest:GetPivot())
                            firesignal(Chest.Touched,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        else
                            break
                        end
                    end 
                end
            end
        end
    end
end)

task.spawn(function()
    while task.wait() do
        task.spawn(function()
            if godsChalicSniper then
                if stuff then
                    AllowRunService = false
                end
            end
        end)
    end
end)

spawn(function()
    while wait(12) do
    if AllowRunService then
        game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
        end
    end
end)

local AutoCastleRaid = Tabs.Main:AddToggle("AutoCastleRaid_Toggle", {Title = "Auto Castle Raid", Default = false })
Options.AutoCastleRaid_Toggle:SetValue(false)

AutoCastleRaid:OnChanged(function(value)
	_G.Auto_Castle_Raid = value
	_G.Settings.Auto_Castle_Raid = value
end)

Tabs.Main:AddParagraph({
    Title = "Farming Mastery",
    Content = ""
})

local AutoFarmFruitMastery1 = Tabs.Main:AddToggle("AutoFarmFruitMaster_Toggle", {Title = "Auto Farm Fruit Mastery", Default = false })
Options.AutoFarmFruitMaster_Toggle:SetValue(false)

AutoFarmFruitMastery1:OnChanged(function(value)
    _G.Auto_Farm_Mastery_Fruit = value    
    _G.Settings.Auto_Farm_Mastery_Fruit = value
end)

local AutoFarmGunMastery1 = Tabs.Main:AddToggle("AutoFarmGunMaster_Toggle", {Title = "Auto Farm Gun Mastery", Default = false })
Options.AutoFarmGunMaster_Toggle:SetValue(false)

AutoFarmGunMastery1:OnChanged(function(value)
    _G.Auto_Farm_Mastery_Gun = value
    _G.Settings.Auto_Farm_Mastery_Gun = value
end)

local SetKillAt = Tabs.Main:AddSlider("Slider1", {
    Title = "Kill At (%)",
    Description = "",
    Default = 30,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(value)
        _G.MobHealth = value
        _G.Settings.HealthMs = value
    end
})

SetKillAt:OnChanged(function(value)
    _G.MobHealth = value
    _G.Settings.HealthMs = value
end)

SetKillAt:SetValue(30)

function EquipBloxFruit()
    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.ToolTip == "Blox Fruit" then
           if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                EquipWeapon(v.Name)
            end
        end
    end
end

task.spawn(function()
	while task.wait() do 
		if _G.Auto_Farm_Mastery_Gun and _G.Auto_Farm_Mastery_Fruit then
			pcall(function()
				SelectSpeedFast = "Slow"
			end)
		end
	 end
end)

spawn(function()
    while wait() do
        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
        local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
        pcall(function()
            if _G.Auto_Farm_Mastery_Fruit then
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if QuestC.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild(QuestCheck()[3]) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == QuestCheck()[3] then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        else
                                            if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.HealthMs/100 then 
                                                _G.UseSkill = true
                                                EquipBloxFruit()
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                PosMon = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                BringMobFarm = true
                                                v.HumanoidRootPart.TranAsparency = 1
                                            else
                                                _G.UseSkill = false
                                                PosMon = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false
                                                BringMobFarm = true
                                                EquipWeapon(_G.Select_Weapon)
                                                v.HumanoidRootPart.Transparency = 1
                                                getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                AutoHaki()
                                                if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                                    _G.FastAttack = true
                                                end
                                            end
                                        end
                                    until not _G.Auto_Farm_Mastery_Fruit or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
                                end
                            end
                        end
                    else
                        _G.UseSkill = false
                        if _G.Auto_CFrame then
                            getgenv().ToTarget(QuestCheck()[7][SetCFarme] * MethodFarm)
                            if (QuestCheck()[7][SetCFarme].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                if SetCFarme == nil or SetCFarme == '' then
                                    SetCFarme = 1
                                elseif SetCFarme >= #QuestCheck()[7] then
                                    SetCFarme = 1
                                end
                                SetCFarme =  SetCFarme + 1
                                wait(0.5)
                            end
                        else
                            if AttackRandomType_MonCFrame == 1 then
                                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
                            elseif AttackRandomType_MonCFrame == 2 then
                                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
                            elseif AttackRandomType_MonCFrame == 3 then
                                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(20,30,0))
                            elseif AttackRandomType_MonCFrame == 4 then
                                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
                            elseif AttackRandomType_MonCFrame == 5 then
                                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(-20,30,0))
                            else
                                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
                            end
                        end
                    end
                else
                    getgenv().ToTarget(QuestCheck()[2])
                    if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                        BringMobFarm = false
                        wait(0.2)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1]) wait(0.5) 
                        getgenv().ToTarget(QuestCheck()[7][1] * MethodFarm)
                    end
                end
            end
        end)
    end
end)

spawn(function()
    local gt = getrawmetatable(game)
    local old = gt.__namecall
    setreadonly(gt,false)
    gt.__namecall = newcclosure(function(...)
        local args = {...}
        if getnamecallmethod() == "InvokeServer" then 
            if _G.SelectWeaponGun then
                if _G.SelectWeaponGun == "Soul Guitar" then
                    if tostring(args[2]) == "TAP" then
                        if  _G.Auto_Farm_Mastery_Gun and _G.UseSkill then
                            args[3] = PositionSkillMasteryGun
                        end
                    end
                end
            end
        end
        return old(unpack(args))
    end)
    setreadonly(gt,true)
end)
spawn(function()
    while wait() do
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
            if v:IsA("Tool") then
                if v.ToolTip == "Gun" then
                    _G.SelectWeaponGun = v.Name
                end
            end
        end
        for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
            if v:IsA("Tool") then
                if v.ToolTip == "Gun" then
                    _G.SelectWeaponGun = v.Name
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
        local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
        pcall(function()
            if _G.Auto_Farm_Mastery_Gun then
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if QuestC.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild(QuestCheck()[3]) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == QuestCheck()[3] then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonHumanoidRootPart = v.HumanoidRootPart
                                    PositionSkillMasteryGun = v.HumanoidRootPart.Position
                                    repeat task.wait()
                                        v.HumanoidRootPart.CFrame = PosMon
                                        if v.Humanoid.Health <= v.Humanoid.MaxHealth * _G.Settings.HealthMs/100 then 
                                            _G.UseSkill = true
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                            v.HumanoidRootPart.Size = Vector3.new(120,120,120)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            BringMobFarm = true
                                            v.HumanoidRootPart.Transparency = 1
                                            EquipWeapon(_G.SelectWeaponGun)
                                            local args = {
                                                [1] = v.HumanoidRootPart.Position,
                                                [2] = v.HumanoidRootPart
                                            }
                                            game:GetService("Players").LocalPlayer.Character[_G.SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                        else
                                            _G.UseSkill = false
                                            v.HumanoidRootPart.Size = Vector3.new(120,120,120)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            BringMobFarm = true
                                            EquipWeapon(_G.Select_Weapon)
                                            v.HumanoidRootPart.Transparency = 1
                                            getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                            AutoHaki()
                                            if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                                _G.FastAttack = true
                                            end
                                        end
                                    until not _G.Auto_Farm_Mastery_Gun or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
                                end
                            end
                        end
                    else
                        _G.UseSkill = false
                        if _G.Auto_CFrame then
                            getgenv().ToTarget(QuestCheck()[7][SetCFarme] * MethodFarm)
                            if (QuestCheck()[7][SetCFarme].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                if SetCFarme == nil or SetCFarme == '' then
                                    SetCFarme = 1
                                elseif SetCFarme >= #QuestCheck()[7] then
                                    SetCFarme = 1
                                end
                                SetCFarme =  SetCFarme + 1

                                wait(0.5)
                            end
                        else
                            if AttackRandomType_MonCFrame == 1 then
                                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
                            elseif AttackRandomType_MonCFrame == 2 then
                                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
                            elseif AttackRandomType_MonCFrame == 3 then
                                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(20,30,0))
                            elseif AttackRandomType_MonCFrame == 4 then
                                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
                            elseif AttackRandomType_MonCFrame == 5 then
                                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(-20,30,0))
                            else
                                getgenv().ToTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
                            end
                        end
                    end
                else
                    getgenv().ToTarget(QuestCheck()[2])
                    if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                        BringMobFarm = false
                        wait(0.2)
                        game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1]) wait(0.5)
                        getgenv().ToTarget(QuestCheck()[7][1] * MethodFarm)
                    end
                end
            end
        end)
    end
end)
local Cam = workspace.CurrentCamera
local hotkey = true
function lookAt(target, eye)
    Cam.CFrame = CFrame.new(target, eye)
end
function CheckMonFF(trg_part)
    local nearest = nil
    local last = math.huge
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == QuestCheck()[3] then
            local ePos, vissss = workspace.CurrentCamera:WorldToViewportPoint(v[trg_part].Position)
            local AccPos = Vector2.new(ePos.x, ePos.y)
            local mousePos = Vector2.new(workspace.CurrentCamera.ViewportSize.x / 2, workspace.CurrentCamera.ViewportSize.y / 2)
            local distance = (AccPos - mousePos).magnitude
            if distance < last and vissss and hotkey == true and distance < 1500 then
                last = distance
                nearest = v
            end
        end
    end
    return nearest
end
spawn(function()
    while wait() do
        if _G.Auto_Farm_Mastery_Gun and _G.UseSkill == true then
            local closest = CheckMonFF("HumanoidRootPart")
            lookAt(Cam.CFrame.p, closest:FindFirstChild("HumanoidRootPart").Position)
            local args = {
                [1] = PositionSkillMasteryGun
            }
            
            game:GetService("Players").LocalPlayer.Character[_G.SelectWeaponGun].RemoteEvent:FireServer(unpack(args))
            if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
            end
        end
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_Farm_Mastery_Gun and _G.UseSkill == true then
            local args = {
                [1] = PositionSkillMasteryGun,
                [2] = MonHumanoidRootPart
            }
            game:GetService("Players").LocalPlayer.Character[_G.SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Farm_Mastery_Gun then
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
        end
    end
end)

Tabs.Main:AddParagraph({
    Title = "Skill Mastery",
    Content = ""
})

local SkillZ = Tabs.Main:AddToggle("SkillZ_Toggle", {Title = "Skill Z", Default = true })
Options.SkillZ_Toggle:SetValue(true)

SkillZ:OnChanged(function(value)
    _G.SkillZ = value
    _G.Settings.SkillZ = value
end)

local SkillX = Tabs.Main:AddToggle("SkillX_Toggle", {Title = "Skill X", Default = false })
Options.SkillX_Toggle:SetValue(false)

SkillX:OnChanged(function(value)
    _G.SkillX = value
    _G.Settings.SkillX = value
end)

local SkillC = Tabs.Main:AddToggle("SkillC_Toggle", {Title = "Skill C", Default = false })
Options.SkillC_Toggle:SetValue(false)

SkillC:OnChanged(function(value)
    _G.SkillC = value
    _G.Settings.SkillC = value
end)

local SkillV = Tabs.Main:AddToggle("SkillV_Toggle", {Title = "Skill V", Default = false })
Options.SkillV_Toggle:SetValue(false)

SkillV:OnChanged(function(value)
    _G.SkillV = value
    _G.Settings.SkillV = value
end)

local SkillF = Tabs.Main:AddToggle("SkillF_Toggle", {Title = "Skill F", Default = false })
Options.SkillF_Toggle:SetValue(false)

SkillF:OnChanged(function(value)
    _G.SkillF = value
    _G.Settings.SkillF = value
end)

Tabs.Main:AddParagraph({
    Title = "Farming Boss",
    Content = ""
})

if World1 then
    tableBoss = {"DauCoGhe Raid Boss [Lv. 7000]","The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
elseif World2 then
    tableBoss = {"DauCoGhe Raid Boss [Lv. 8000]","Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}
elseif World3 then
    tableBoss = {"DauCoGhe Raid Boss [Lv. 9000]","Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}
end

local DropdownBoss = Tabs.Main:AddDropdown("DropdownBoss", {
    Title = "Select Boss",
    Values = tableBoss,
    Multi = false,
    Default = 1,
})

if World1 then
    DropdownBoss:SetValue("The Gorilla King")
elseif World2 then
    DropdownBoss:SetValue("Diamond")
elseif World3 then
    DropdownBoss:SetValue("Stone")
end

DropdownBoss:OnChanged(function(value)
    _G.Settings.Select_Boss = value
end)

local AutoFarmBoss = Tabs.Main:AddToggle("AutoFarmBoss_Toggle", {Title = "Auto Farm Boss", Default = false })
Options.AutoFarmBoss_Toggle:SetValue(false)

AutoFarmBoss:OnChanged(function(value)
	_G.Auto_Farm_Boss = value
	_G.Settings.Auto_Farm_Boss = value
end)

local AutoFarmBoss = Tabs.Main:AddToggle("AutoFarmBoss_Toggle", {Title = "Auto Farm Boss [Quest]", Default = false })
Options.AutoFarmBoss_Toggle:SetValue(false)

AutoFarmBoss:OnChanged(function(value)
	_G.Auto_Quest_Boss = value
	_G.Settings.Auto_Quest_Boss = value
end)

spawn(function()
	while wait() do
		if _G.Auto_Farm_Boss then
			pcall(function()
				CheckBossQuest()
				if MsBoss == "Soul Reaper" or MsBoss == "Longma" or MsBoss == "Don Swan" or MsBoss == "Cursed Captain" or MsBoss == "Order" or MsBoss == "rip_indra True Form" then
					if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == MsBoss then
								repeat wait()
									EquipWeapon(_G.Select_Weapon)
									AutoHaki()
									getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					else
						getgenv().ToTarget(CFrameBoss)
					end
				else
					if _G.Auto_Quest_Boss then
						CheckBossQuest()
						if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						end
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							repeat wait() getgenv().ToTarget(CFrameQuestBoss) until (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Farm_Boss
							if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(1.1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == MsBoss then
										repeat wait()
											EquipWeapon(_G.Select_Weapon)
											AutoHaki()
											getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))									
										until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							else
								getgenv().ToTarget(CFrameBoss)
							end
						end
					else
						if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == MsBoss then
									repeat wait()
										EquipWeapon(_G.Select_Weapon)
										AutoHaki()
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))										
									until _G.Auto_Farm_Boss == false or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						else
							getgenv().ToTarget(CFrameBoss)
						end
					end
				end
			end)
		end
	end
end)

local AutoFarmBossAll = Tabs.Main:AddToggle("AutoFarmBossAll_Toggle", {Title = "Auto Farm Boss [All]", Default = false })
Options.AutoFarmBossAll_Toggle:SetValue(false)

AutoFarmBossAll:OnChanged(function(value)
	_G.Auto_Farm_All_Boss = value
	_G.Settings.Auto_Farm_All_Boss = value
end)

spawn(function()
	while wait() do
		if _G.Auto_Farm_All_Boss then
			pcall(function()
				for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
					if string.find(v.Name,"Boss") then
						repeat task.wait()
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
								getgenv().ToTarget(v.HumanoidRootPart.CFrame)
							elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
								AutoHaki()
								EquipWeapon(_G.Select_Weapon)
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(80,80,80)
								getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							end
						until v.Humanoid.Health <= 0 or _G.Auto_Farm_All_Boss == false or not v.Parent
					end
				end
			end)
		end
	end
end)

Tabs.Main:AddParagraph({
    Title = "Material",
    Content = ""
})

local SelectMaterialSet = Tabs.Main:AddDropdown("Dropdown3", {
    Title = "Select Material",
    Values = AllMaterial,
    Multi = false,
    Default = 1,
})

SelectMaterialSet:SetValue("")
SelectMaterialSet:OnChanged(function(value)
    SelectModeMaterial = value
end)

local AutoMaterialToggle = Tabs.Main:AddToggle("AutoMaterial_Toggle", {Title = "Auto Farm Material", Default = false })
Options.AutoMaterial_Toggle:SetValue(false)

AutoMaterialToggle:OnChanged(function(value)
	AutoFarmMaterial = value
end)

task.spawn(function()
	while task.wait() do
		if AutoFarmMaterial then
			xpcall(function()
				if (SelectModeMaterial ~= "") then
					CheckMaterial(SelectModeMaterial);
					if CustomFindFirstChild(MaterialMob) then
						for v0, v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (AutoFarmMaterial and table.find(MaterialMob, v1.Name) and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and (v1.Humanoid.Health > 0)) then
								repeat
									task.wait();
									FarmtoTarget = toTarget(v1.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1));
									if (v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and ((v1.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150)) then
										if FarmtoTarget then FarmtoTarget:Stop(); end
										FastAttack = true;
										EquipWeapon(_G.Select_Weapon);
										spawn(function()
											for v4, v5 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if (v5.Name == v1.Name) then
													spawn(function()
														if InMyNetWork(v5.HumanoidRootPart) then
															v5.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame;
															v5.Humanoid.JumpPower = 0;
															v5.Humanoid.WalkSpeed = 0;
															v5.HumanoidRootPart.CanCollide = false;
															v5.Humanoid:ChangeState(14);
															v5.Humanoid:ChangeState(16);
															v5.Humanoid:ChangeState(11);
															v5.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
														end
													end);
												end
											end
										end);
										if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150)) then
											game:service("VirtualInputManager"):SendKeyEvent(true, "V", false,game);
											game:service("VirtualInputManager"):SendKeyEvent(false, "V",false, game);
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1);
									end
								until not CustomFindFirstChild(MaterialMob) or not AutoFarmMaterial or (v1.Humanoid.Health <= 0) or not v1.Parent
								FastAttack = false;
							end
						end
					else
						FastAttack = false;
						Modstween = toTarget(CFrameMon);
						if (World1 and (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
							if Modstween then Modstween:Stop(); end wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
						elseif (World1 and not (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
							if Modstween then Modstween:Stop(); end wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3864.8515625, 6.6796875, -1926.7841796875));
						elseif (World1 and (table.find(MaterialMob, "God's Guard")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000)) then
							if Modstween then Modstween:Stop(); end wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656));
						elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
							if Modstween then 
								Modstween:Stop()
								spawn(function()
									if posrandom <= 1 then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
										posrandom = posrandom + 0.1
									elseif posrandom >= 1 and posrandom <= 2 then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
										posrandom = posrandom + 0.1
									elseif posrandom >= 2 and posrandom <= 3 then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
										posrandom = posrandom + 0.1
									elseif posrandom >= 3 and posrandom <= 4  then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
										posrandom = posrandom + 0.1
								elseif posrandom >=4 and posrandom <= 5 then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
									posrandom = 0
								end
							end)
						end
						   -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
						end
					end
				end
			end, function(x)
			end)
		else
			break;
		end
	end
end)

if World1 then
    Tabs.Main:AddParagraph({
        Title = "Status : World 1",
        Content = ""
    })

    local AutoNewWorldToggle = Tabs.Main:AddToggle("AutoNewWorld_Toggle", {Title = "Auto New World", Default = false })
    Options.AutoNewWorld_Toggle:SetValue(false)

    AutoNewWorldToggle:OnChanged(function(value)
		_G.Auto_New_World = value
		_G.Settings.Auto_New_World = value
    end)

	spawn(function()
		while wait() do
			if _G.Auto_New_World then
				pcall(function()
					if game.Players.LocalPlayer.Data.Level.Value >= 700 and W1 then
						_G.Auto_Farm_Level = false
						if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
							repeat wait() getgenv().ToTarget(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563)) until (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_New_World
							wait(1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
							EquipWeapon("Key")
							local pos2 = CFrame.new(1347.7124, 37.3751602, -1325.6488)
							repeat wait() getgenv().ToTarget(pos2) until (pos2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_New_World
							wait(3)
						elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
							if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Ice Admiral" and v.Humanoid.Health > 0 then
										repeat wait()
											AutoHaki()
											EquipWeapon(_G.Select_Weapon)
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(60,60,60)
											v.HumanoidRootPart.Transparency = 1
											getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											game:GetService("VirtualUser"):CaptureController()
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 870),workspace.CurrentCamera.CFrame)
										until v.Humanoid.Health <= 0 or not v.Parent or not _G.Auto_New_World
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
									end
								end
							else
								getgenv().ToTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
							end
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
						end
					end
				end)
			end
		end
	end)
end

if World2 then
    Tabs.Main:AddParagraph({
        Title = "Status : World 2",
        Content = ""
    })

    local AutoNewWorld3Toggle = Tabs.Main:AddToggle("AutoNewWorld3_Toggle", {Title = "Auto New World Third", Default = false })
    Options.AutoNewWorld3_Toggle:SetValue(false)

    AutoNewWorld3Toggle:OnChanged(function(value)
		_G.Auto_Third_World = value
		_G.Settings.Auto_Third_World = value
    end)
	spawn(function()
		while wait() do
			if _G.Auto_Third_World and W2 then
				pcall(function()
					local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
					local MyLevel = game.Players.LocalPlayer.Data.Level.Value
					if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then							
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
									if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
										for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "rip_indra" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.CanCollide = false
													v.Head.CanCollide = false
													EquipWeapon(_G.Select_Weapon)
													v.HumanoidRootPart.Transparency = 1
													getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
													AutoHaki()
													if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
														_G.FastAttack = true
													end
												until not _G.Auto_Third_World or not v.Parent or v.Humanoid.Health <= 0 
												repeat wait() game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou") until LOL == "LOLOL"
											end
										end
									else
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check")
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") ~= 0 then
										if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") or game.ReplicatedStorage:FindFirstChild("Don Swan") then
											for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if v.Name == "Don Swan" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
													repeat wait()
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														v.HumanoidRootPart.CanCollide = false
														v.Head.CanCollide = false
														EquipWeapon(_G.Select_Weapon)
														v.HumanoidRootPart.Transparency = 1
														getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
														AutoHaki()
														if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
															_G.FastAttack = true
														end
													until not _G.Auto_Third_World or not v.Parent or v.Humanoid.Health <= 0 
												else
													getgenv().ToTarget(2207.38672, 15.1333914, 883.866394, 0.931175113, 3.09244754e-08, -0.364572287, 1.20643637e-08, 1, 1.15638279e-07, 0.364572287, -1.12077821e-07, 0.931175113)
												end
											end
										else
											getgenv().ToTarget(2207.38672, 15.1333914, 883.866394, 0.931175113, 3.09244754e-08, -0.364572287, 1.20643637e-08, 1, 1.15638279e-07, 0.364572287, -1.12077821e-07, 0.931175113)
										end
									end
								end
							else
								for i,v in next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
									if v.Price >= 1000000 then  
										table.insert(FruitPrice,v.Name)
									end
								end
								for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
									for _,x in pairs(v) do
										if _ == "Name" then 
											table.insert(FruitStore,x)
										end
									end
								end
								function CheckFruit()
									local player = game.Players.LocalPlayer
									for _, tool in pairs(player.Backpack:GetDescendants()) do
										if tool:FindFirstChild("Fruit") then
											return tool
										end
									end
								end
								function AddToNpc()
									if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(CheckFruit())) then
										wait(1.5)
										EquipWeapon(tostring(CheckFruit()))
										wait(0.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
										wait(0.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
										wait(0.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
										wait(0.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
									end
								end
								for _,y in pairs(FruitPrice) do
									for _,z in pairs(FruitStore) do
										if y == z and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
											local args = {
												[1] = "LoadFruit",
												[2] = tostring(y)
											}
								
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											AddToNpc()
										end
									end 
								end
							end
						else
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
								_G.Auto_Farm_Level = false
								if QuestC.Visible == true then
									if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Swan Pirate" then
												if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
													repeat task.wait()
														if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirate") then
															--game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
														else
															PosMon = v.HumanoidRootPart.CFrame
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid.WalkSpeed = 0
															v.Head.CanCollide = false
															BringMobFarm = true
															EquipWeapon(_G.Select_Weapon)
															v.HumanoidRootPart.Transparency = 1
															getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
			
															if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO then
																_G.FastAttack = true
															end
														end
													until not _G.Auto_Third_World or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
												end
											end
										end
									else
										BringMobFarm = false
										for i,v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
											if v.Name == "Swan Pirate" then local CFrameEnemySpawns = v.CFrame  wait(0.5)
												getgenv().ToTarget(CFrameEnemySpawns * MethodFarm)
											end
										end
									end
								else
									repeat wait() getgenv().ToTarget(CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312)) until (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.Auto_Bartilo_Quest
									if (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
										BringMobFarm = false
										game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
									end
								end
							elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
								_G.Auto_Farm_Level = false
								if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Jeremy" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
												repeat task.wait()
													PosMon = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.Size = Vector3.new(60,60,60)
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.Head.CanCollide = false
													BringMobFarm = true
													EquipWeapon(_G.Select_Weapon)
													v.HumanoidRootPart.Transparency = 1
													getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
			
													if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO then
														_G.FastAttack = true
													end
												until not _G.Auto_Third_World or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
											end
										end
									end
								else
									getgenv().ToTarget(CFrame.new(2158.97412, 449.056244, 705.411682, -0.754199564, -4.17389057e-09, -0.656645238, -4.47752875e-08, 1, 4.50709301e-08, 0.656645238, 6.3393955e-08, -0.754199564))
								end
							elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
								repeat wait() getgenv().ToTarget(CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456)) until (CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or _G.Auto_Third_World == false
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate1.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate2.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate3.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate4.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate5.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate6.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate7.CFrame
								wait(0.7)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate8.CFrame
							end
						end
					end
				end)
			end
		end
	end)
end

if W1 then
Tabs.Item:AddParagraph({
	Title = "Saber | First World",
	Content = ""
})

local AutoFarmSaberToggle = Tabs.Item:AddToggle("AutoSaber_Toggle", {Title = "Auto Saber", Default = false })
Options.AutoSaber_Toggle:SetValue(false)

AutoFarmSaberToggle:OnChanged(function(value)
	_G.Auto_Saber = value
	_G.Settings.Auto_Saber = value
end)
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.Auto_Saber and game.Players.LocalPlayer.Data.Level.Value >= 200 and Check_Sword("Saber") == nil and W1 then
				_G.Auto_Farm_Level = false
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
				if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
					if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
						if (CFrame.new(-1480.06018, 47.9773636, 4.53454018, -0.386713833, 1.11673025e-07, 0.922199786, 7.96717785e-08, 1, -8.76847395e-08, -0.922199786, 3.95643944e-08, -0.386713833).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
							getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							task.wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
							task.wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
							task.wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
							task.wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
							task.wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
							task.wait(1) 
						end
					local CFrameSaber = CFrame.new(-1480.06018, 47.9773636, 4.53454018, -0.386713833, 1.11673025e-07, 0.922199786, 7.96717785e-08, 1, -8.76847395e-08, -0.922199786, 3.95643944e-08, -0.386713833)
					if _G.Auto_Farm_Level and _G.Auto_Saber and (CFrameSaber.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1200 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						getgenv().ToTarget(CFrameSaber)
					end
					getgenv().ToTarget(CFrameSaber)
				else
					if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
						if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
							EquipWeapon("Torch")
							getgenv().ToTarget(CFrame.new(1113.7229, 5.04679585, 4350.33691, -0.541527212, 5.27007726e-09, 0.840683222, 8.74004868e-08, 1, 5.00303372e-08, -0.840683222, 1.00568911e-07, -0.541527212))
							UnEquipWeapon("Torch")
							EquipWeapon("Torch")
							task.wait(0.5)
						else
							getgenv().ToTarget(CFrame.new(-1610.56824, 12.1773882, 162.830322, -0.907543361, -2.88120088e-08, -0.419958383, -4.66550922e-08, 1, 3.22163096e-08, 0.419958383, 4.88308949e-08, -0.907543361))                 
						end
					else
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
							task.wait(0.5)
							EquipWeapon("Cup")
							task.wait(0.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
							task.wait(0)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") 
						else
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
							elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
								if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Mob Leader" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat task.wait()
													EquipWeapon(_G.Select_Weapon)
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.Head.CanCollide = false
													v.HumanoidRootPart.Size = Vector3.new(100,100,100)
													v.HumanoidRootPart.Transparency = 1
													EquipWeapon(_G.Select_Weapon)
													getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
													if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO or _G.SuperFastAttack then game:GetService'VirtualUser':CaptureController() game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) end
												until v.Humanoid.Health <= 0 or _G.AutoSaber == false
											end
										end
									end
									for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
										if v.Name == "Mob Leader" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											end
										else
											if _G.Auto_Saber_Hop then
												wait(2.5)
												Hop()
											end
										end
									end		
								end
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
								task.wait(0.5)
								EquipWeapon("Relic")
								task.wait(0.5)
								getgenv().ToTarget(CFrame.new(-1406.37512, 29.9773273, 4.45027685, 0.877344251, -3.82776442e-08, 0.479861468, 4.93218133e-09, 1, 7.07504668e-08, -0.479861468, -5.9705755e-08, 0.877344251))
							end
						end
					end
				end
				else
					if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Saber Expert" then
								repeat task.wait()
									EquipWeapon(_G.Select_Weapon)
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.HumanoidRootPart.Transparency = 1
									getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
									if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO or _G.SuperFastAttack then game:GetService'VirtualUser':CaptureController() game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672)) end
								until v.Humanoid.Health <= 0 or _G.AutoSaber == false
								_G.Auto_Saber = false
								if _G.Settings.Auto_Farm_Level then
									_G.Auto_Farm_Level = true
								end
								if v.Humanoid.Health <= 0 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
								end
							end
						end
					else 
						if _G.Auto_Saber_Hop then
							wait(5)
							Hop()
						end
					end
				end
			end
		end)
	end
end)

local AutoFarmPoleToggle = Tabs.Item:AddToggle("AutoPole_Toggle", {Title = "Auto Pole", Default = false })
Options.AutoPole_Toggle:SetValue(false)

AutoFarmPoleToggle:OnChanged(function(value)
	_G.Auto_Pole = value
	_G.Settings.Auto_Pole = value
end)
spawn(function()
	while wait() do
		pcall(function()
			if _G.Auto_Pole and game.ReplicatedStorage:FindFirstChild("Thunder God") or game.Workspace.Enemies:FindFirstChild("Thunder God") then
				if game.Workspace.Enemies:FindFirstChild("Thunder God") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.Auto_Pole and v.Name == "Thunder God" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat wait()  
								AutoHaki()
								EquipWeapon(_G.Select_Weapon)
								getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until not _G.Auto_Pole or v.Humanoid.Health <= 0 or not v.Parent
						end
					end
				else
					if _G.Auto_Pole_Hop then
						wait(2.5)
						Hop()
					end
					getgenv().ToTarget(CFrame.new(-7900.66406, 5606.90918, -2267.46436))
				end
			else
				if _G.Auto_Pole_Hop then
					wait(5)
					Hop()
				end
			end
		end)
	end
end)
end

if W3 then
Tabs.Item:AddParagraph({
    Title = "Hallow Scythe",
    Content = ""
})

local HallowToggle = Tabs.Item:AddToggle("Hallow_Toggle", {Title = "Auto Hallow Scythe", Default = false })
Options.Hallow_Toggle:SetValue(false)

HallowToggle:OnChanged(function(value)
	_G.AutoFarmBossHallow = value
	_G.Settings.AutoFarmBossHallow = value
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AutoFarmBossHallow then
				if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v.Name , "Soul Reaper") then
							repeat task.wait()
								StartMagnet = true
								FastAttack = true
								if _G.AutoHaki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								EquipWeapon(_G.Select_Weapon)
								PosMon = v.HumanoidRootPart.CFrame
								if not _G.FastAttack then
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.CanCollide = false
								getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
							until v.Humanoid.Health <= 0 or not _G.AutoFarmBossHallow
							StartMagnet = false
							FastAttack = false
						end
					end
				else
					getgenv().ToTarget(CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813))
				end
			end
		end)
	end
end)
end

if W2 then
	Tabs.Item:AddParagraph({
		Title = "Factory | Second World",
		Content = ""
	})

	local AutoFarmFactoryToggle = Tabs.Item:AddToggle("AutoFactory_Toggle", {Title = "Auto Factory", Default = false })
	Options.AutoFactory_Toggle:SetValue(false)
	
	AutoFarmFactoryToggle:OnChanged(function(value)
		_G.Auto_Factory_Farm = value
		_G.Settings.Auto_Factory_Farm = value
	end)
	spawn(function()
		while wait() do
			if _G.Auto_Factory_Farm then
				pcall(function()
					if game.Workspace.Enemies:FindFirstChild("Core") then
						_G.FactoryCore = true
						_G.Auto_Farm_Level = false
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if _G.FactoryCore and v.Name == "Core" and v.Humanoid.Health > 0 then
								repeat wait()
									AutoHaki()
									EquipWeapon(_G.Select_Weapon)
									getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								until not _G.FactoryCore or v.Humanoid.Health <= 0 or _G.Auto_Factory_Farm == false
							end
						end
					elseif game.ReplicatedStorage:FindFirstChild("Core") and game.ReplicatedStorage:FindFirstChild("Core"):FindFirstChild("Humanoid") then
						getgenv().ToTarget(CFrame.new(502.7349853515625, 143.0749053955078, -379.078125))
					end
				end)
			end
		end
	end)


Tabs.Item:AddParagraph({
	Title = "Ectoplasm",
	Content = ""
})

local AutoFarmEctoplasmToggle = Tabs.Item:AddToggle("AutoEctoplasm_Toggle", {Title = "Auto Ectoplasm", Default = false })
Options.AutoEctoplasm_Toggle:SetValue(false)

AutoFarmEctoplasmToggle:OnChanged(function(value)
	_G.Auto_Farm_Ectoplasm = value
	_G.Settings.Auto_Farm_Ectoplasm = value
end)
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Farm_Ectoplasm and MagnetEctoplasm and string.find(v.Name, "Ship") and (v.HumanoidRootPart.Position - PosMonEctoplasm.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonEctoplasm
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)

spawn(function()
	while wait() do
		if _G.Auto_Farm_Ectoplasm then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v.Name, "Ship") then
							repeat wait()
								AutoHaki()
								EquipWeapon(_G.Select_Weapon)
								PosMonEctoplasm = v.HumanoidRootPart.CFrame
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								MagnetEctoplasm = true
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until _G.Auto_Farm_Ectoplasm == false or not v.Parent or v.Humanoid.Health <= 0
							MagnetEctoplasm = false
						else
							MagnetEctoplasm = false
							getgenv().ToTarget(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
						end
					end
				else 
					MagnetEctoplasm = false
					local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
					if Distance > 20000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
					getgenv().ToTarget(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
				end
			end)
		end
	end
end)

if W2 then
	Tabs.Item:AddParagraph({
		Title = "Sea Beast",
		Content = ""
	})

	local AutoSeaBeastToggle = Tabs.Item:AddToggle("AutoSeaBeast_Toggle", {Title = "Auto Sea Beast King", Default = false })
	Options.AutoSeaBeast_Toggle:SetValue(false)
	
	AutoSeaBeastToggle:OnChanged(function(value)
		_G.Auto_Sea_King = value
		_G.Settings.Auto_Sea_King = value
	end)
	local Sea_king_CFrame = {
		[1] = CFrame.new(210.99585, 12.9606171, 4158.57959, -0.917689145, 7.58163254e-11, -0.39729917, 1.20923558e-11, 1, 1.62898153e-10, 0.39729917, 1.44685583e-10, -0.917689145),
		[2] = ""
	}

	spawn(function()
		while wait() do
			pcall(function()
				if _G.Auto_Sea_King then
					if workspace.SeaBeasts:FindFirstChild("SeaBeast1") then
						getgenv().ToTarget(workspace.SeaBeasts:FindFirstChild("SeaBeast1").HumanoidRootPart.CFrame * CFrame.new(0,460,0))
						for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if v.ToolTip == "Sword" then
								if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
									EquipWeapon(v.Name)
								end
							end
						end
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
						wait(0.2)
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
						for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if v.ToolTip == "Blox Fruit" then
								if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
									EquipWeapon(v.Name)
								end
							end
						end
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
						wait(0.2)
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
						wait(0.2)
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
						wait(0.2)
						game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
						game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
					wait(0.2)
				end
			end
		end)
	end
end)

Tabs.Item:AddParagraph({
	Title = "Dack Coat",
	Content = ""
})

local AutoFarmDarkToggle = Tabs.Item:AddToggle("AutoDark_Toggle", {Title = "Auto Dark Coat", Default = false })
Options.AutoDark_Toggle:SetValue(false)

AutoFarmDarkToggle:OnChanged(function(value)
	_G.Auto_Dack_Coat = value
	_G.Settings.Auto_Dack_Coat = value
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
				if _G.Auto_Dack_Coat then
					if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
						for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == ("Darkbeard" or v.Name == "Darkbeard") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart")
							 then
								repeat
									task.wait()
									StartMagnet = true
									FastAttack = true
									if _G.AutoHaki then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then
										task.wait()
										EquipWeapon(_G.Select_Weapon)
									end
									PosMon = v.HumanoidRootPart.CFrame
									if not _G.FastAttack then
										game:GetService "VirtualUser":CaptureController()
										game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
									end
									v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
									v.HumanoidRootPart.CanCollide = false
									toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								until _G.Auto_Dack_Coat == false or v.Humanoid.Health <= 0
								StartMagnet = false
								FastAttack = false
							end
						end
					else
						toTarget(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
					end
				end
			end)
		end
    end)
end

Tabs.Item:AddParagraph({
	Title = "Swan Glasses",
	Content = ""
})

local AutoFarmSwanToggle = Tabs.Item:AddToggle("AutoSwan_Toggle", {Title = "Auto Swan Glasses", Default = false })
Options.AutoSwan_Toggle:SetValue(false)

AutoFarmSwanToggle:OnChanged(function(value)
	_G.Auto_Swan_Glasses = value
	_G.Settings.Auto_Swan_Glasses = value
end)

local AutoFarmSwanHopToggle = Tabs.Item:AddToggle("AutoSwanHop_Toggle", {Title = "Auto Swan Glasses [Hop]", Default = false })
Options.AutoSwanHop_Toggle:SetValue(false)

AutoFarmSwanHopToggle:OnChanged(function(value)
	_G.Auto_Swan_Glasses_Hop = value
	_G.Settings.Auto_Swan_Glasses_Hop = value
end)

spawn(function()
	while wait() do
		pcall(function()
			if _G.Auto_Swan_Glasses and game.ReplicatedStorage:FindFirstChild("Don Swan") or game.Workspace.Enemies:FindFirstChild("Don Swan") then
				if game.Workspace.Enemies:FindFirstChild("Don Swan") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.Auto_Swan_Glasses and v.Name == "Don Swan" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat wait()  
								EquipWeapon(_G.Select_Weapon)
								AutoHaki()
								getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until not _G.Auto_Swan_Glasses or v.Humanoid.Health <= 0 or not v.Parent
						end
					end
				else
					getgenv().ToTarget(CFrame.new(2289.47900390625, 15.152046203613281, 739.512939453125))
				end
			else
				if _G.Auto_Swan_Glasses_Hop then
					Hop()
				end
			end
		end)
	end
end)
end

local StatusSeaRough = Tabs.Item:AddParagraph({
    Title = "Sea Rough",
    Content = ""
})


task.spawn(function()
    while task.wait() do
        pcall(function()
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if string.find(v.Name, "Terror") then
					StatusTerror = "Found"
				else 
					StatusTerror = "Not Found"
				end
			end
			
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if string.find(v.Name, "Piranha") then
					StatusSea = "Found"
				else 
					StatusSea = "Not Found"
				end
			end
			
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if string.find(v.Name, "Shark") then
					StatusSea1 = "Found"
				else 
					StatusSea1 = "Not Found"
				end
			end
			
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if string.find(v.Name, "Fish Crew Member") then
					StatusSea2 = "Found"
				else 
			StatusSea2 = "Not Found"
		end
    end
 end)
end
end)

task.spawn(function()
    while wait() do
        pcall(function()
			StatusSeaRough:SetDesc("Terrorshark: "..StatusTerror.." | Piranha: "..StatusSea.." | Shark: "..StatusSea1.." | Fish Crew Member:"..StatusSea2) 
		end)
	end
end)


local AutoKillEventToggle = Tabs.Item:AddToggle("AutoKillEvent_Toggle", {Title = "Auto Kill [Event]", Default = false })
Options.AutoKillEvent_Toggle:SetValue(false)

AutoKillEventToggle:OnChanged(function(value)
	_G.AutoEvent = value
end)

spawn(function()
	while wait() do 
		if _G.AutoEvent then 
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if string.find(v.Name, "Fish Crew Member") or string.find(v.Name, "Piranha") or string.find(v.Name,"Shark") or string.find(v.Name , "Terror") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then 
					if v.Humanoid.Health > 0 then 
						repeat
							game:GetService("RunService").Heartbeat:wait()
							EquipWeapon(_G.Select_Weapon)
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local args = {
									[1] = "Buso"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							PosMon = v.HumanoidRootPart.CFrame
							v.Head.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(100,100,100)
							FastAttack = true
							toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
							if not FastAttack then
								game:GetService 'VirtualUser':CaptureController()
								game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
							end
							PosMon = v.HumanoidRootPart.CFrame
						until not _G.AutoEvent or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name) 
					end
				end
			end
		end
	end
end)

local AutoKillTerrorsharkToggle = Tabs.Item:AddToggle("AutoKillTerrorshark_Toggle", {Title = "Auto Kill Terrorshark", Default = false })
Options.AutoKillTerrorshark_Toggle:SetValue(false)

AutoKillTerrorsharkToggle:OnChanged(function(value)
	_G.AutoKillTerrorshark = value
end)

spawn(function()
	while wait() do 
		if _G.AutoKillTerrorshark then 
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if string.find(v.Name , "Terror") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then 
					if v.Humanoid.Health > 0 then 
						repeat
							game:GetService("RunService").Heartbeat:wait()
							EquipWeapon(_G.Select_Weapon)
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local args = {
									[1] = "Buso"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							PosMon = v.HumanoidRootPart.CFrame
							v.Head.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(100,100,100)
							FastAttack = true
							toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
							if not FastAttack then
								game:GetService 'VirtualUser':CaptureController()
								game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
							end
							PosMon = v.HumanoidRootPart.CFrame
						until not _G.AutoKillTerrorshark or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name) 
					end
				end
			end
		end
	end
end)

local AutoKillPiranhaToggle = Tabs.Item:AddToggle("AutoKillPiranha_Toggle", {Title = "Auto Kill Piranha", Default = false })
Options.AutoKillPiranha_Toggle:SetValue(false)

AutoKillPiranhaToggle:OnChanged(function(value)
	_G.AutoKillPiranha = value
end)

spawn(function()
	while wait() do 
		if _G.AutoKillPiranha then 
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if string.find(v.Name , "Piranha") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then 
					if v.Humanoid.Health > 0 then 
						repeat
							game:GetService("RunService").Heartbeat:wait()
							EquipWeapon(_G.Select_Weapon)
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local args = {
									[1] = "Buso"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							PosMon = v.HumanoidRootPart.CFrame
							v.Head.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(100,100,100)
							FastAttack = true
							toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
							if not FastAttack then
								game:GetService 'VirtualUser':CaptureController()
								game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
							end
							PosMon = v.HumanoidRootPart.CFrame
						until not _G.AutoKillPiranha or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name) 
					end
				end
			end
		end
	end
end)

local AutoKillSharkToggle = Tabs.Item:AddToggle("AutoKillShark_Toggle", {Title = "Auto Kill Shark", Default = false })
Options.AutoKillShark_Toggle:SetValue(false)

AutoKillSharkToggle:OnChanged(function(value)
	_G.AutoKillShark = value
end)

spawn(function()
	while wait() do 
		if _G.AutoKillShark then 
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if string.find(v.Name , "Shark") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then 
					if v.Humanoid.Health > 0 then 
						repeat
							game:GetService("RunService").Heartbeat:wait()
							EquipWeapon(_G.Select_Weapon)
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local args = {
									[1] = "Buso"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							PosMon = v.HumanoidRootPart.CFrame
							v.Head.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(100,100,100)
							FastAttack = true
							toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
							if not FastAttack then
								game:GetService 'VirtualUser':CaptureController()
								game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
							end
							PosMon = v.HumanoidRootPart.CFrame
						until not _G.AutoKillShark or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name) 
					end
				end
			end
		end
	end
end)


local AutoKillFishCrewMemberToggle = Tabs.Item:AddToggle("AutoKillFishCrewMember_Toggle", {Title = "Auto Kill Fish Crew Member", Default = false })
Options.AutoKillFishCrewMember_Toggle:SetValue(false)

AutoKillFishCrewMemberToggle:OnChanged(function(value)
	_G.AutoKillFishCrewMember = value
end)

spawn(function()
	while wait() do 
		if _G.AutoKillFishCrewMember then 
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if string.find(v.Name , "Fish Crew Member") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500 then 
					if v.Humanoid.Health > 0 then 
						repeat
							game:GetService("RunService").Heartbeat:wait()
							EquipWeapon(_G.Select_Weapon)
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								local args = {
									[1] = "Buso"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							PosMon = v.HumanoidRootPart.CFrame
							v.Head.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(100,100,100)
							FastAttack = true
							toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
							if not FastAttack then
								game:GetService 'VirtualUser':CaptureController()
								game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
							end
							PosMon = v.HumanoidRootPart.CFrame
						until not _G.AutoKillFishCrewMember or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name) 
					end
				end
			end
		end
	end
end)

local SetSpeedBoatSlider = Tabs.Item:AddSlider("SliderSpeedBoat", {
	Title = "Set Speed boat",
	Description = "",
	Default = 400,
	Min = 0,
	Max = 1000,
	Rounding = 1,
	Callback = function(value)
		SetSpeedBoat = value
	end
})

SetSpeedBoatSlider:OnChanged(function(value)
	SetSpeedBoat = value
end)

SetSpeedBoatSlider:SetValue(400)

local SpeedBoatToggle = Tabs.Item:AddToggle("SpeedBoat_Toggle", {Title = "Speed Boat", Default = false })
Options.SpeedBoat_Toggle:SetValue(false)

SpeedBoatToggle:OnChanged(function(value)
	_G.SpeedBoat = value
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if _G.SpeedBoat then
        for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
            if game:GetService("Players").LocalPlayer.Character.Humanoid.Sit then
                v:FindFirstChild("VehicleSeat").MaxSpeed = SetSpeedBoat
            end
        end
    end
end)

local No_clipRockBoatToggle = Tabs.Item:AddToggle("No_clipRockBoat_Toggle", {Title = "Noclip Rock", Default = false })
Options.No_clipRockBoat_Toggle:SetValue(false)

No_clipRockBoatToggle:OnChanged(function(value)
	_G.Nocliprock = value
end)

spawn(function()
	while wait() do
		if _G.Nocliprock then
			if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
				for _, v in pairs(game.Workspace.Boats:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == true then
						v.CanCollide = false
					end
				end
				for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == true then
						v.CanCollide = false
					end
				end
			elseif game.Players.LocalPlayer.Character.Humanoid.Sit == false then
				for _, v in pairs(game.Workspace.Boats:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == false then
						v.CanCollide = true
					end
				end
				for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") and v.CanCollide == false then
						v.CanCollide = true
					end
				end
			end
		end
	end
end)

Tabs.Item:AddParagraph({
	Title = "Rainbow Haki",
	Content = ""
})

local AutoFarmRainbowToggle = Tabs.Item:AddToggle("AutoRainbow_Toggle", {Title = "Auto Rainbow Haki", Default = false })
Options.AutoRainbow_Toggle:SetValue(false)

AutoFarmRainbowToggle:OnChanged(function(value)
	_G.Auto_Rainbow_Haki = value
	_G.Settings.Auto_Rainbow_Haki = value
end)

local AutoFarmRainbowHopToggle = Tabs.Item:AddToggle("AutoRainbowHop_Toggle", {Title = "Auto Rainbow Haki [Hop]", Default = false })
Options.AutoRainbowHop_Toggle:SetValue(false)

AutoFarmRainbowHopToggle:OnChanged(function(value)
	_G.Auto_Rainbow_Haki_Hop = value
	_G.Settings.Auto_Rainbow_Haki_Hop = value
end)

spawn(function()
	pcall(function()
		while wait() do
			if _G.Auto_Rainbow_Haki then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
					if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Stone") or game.Workspace.Enemies:FindFirstChild("Stone") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Stone" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame
									repeat wait()
										AutoHaki()
										EquipWeapon(_G.Select_Weapon)
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.CFrame = OldCFrameRainbow
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
									until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
								end
							end
						else
							getgenv().ToTarget(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
						end
					else
						if _G.Auto_Rainbow_Haki_Hop then
							wait(5)
							Hop()
						end
					end
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
					if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Island Empress") or game.Workspace.Enemies:FindFirstChild("Island Empress") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Island Empress" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame
									repeat wait()
										AutoHaki()
										EquipWeapon(_G.Select_Weapon)
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.CFrame = OldCFrameRainbow
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
									until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
								end
							end
						else
							getgenv().ToTarget(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
						end
					else
						if _G.Auto_Rainbow_Haki_Hop then
							wait(5)
							Hop()
						end
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
					if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Kilo Admiral") or game.Workspace.Enemies:FindFirstChild("Kilo Admiral") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Kilo Admiral" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame
									repeat wait()
										AutoHaki()
										EquipWeapon(_G.Select_Weapon)
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										v.HumanoidRootPart.CFrame = OldCFrameRainbow
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
									until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
								end
							end
						else
							getgenv().ToTarget(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
						end
					else
						if _G.Auto_Rainbow_Haki_Hop then
							wait(5)
							Hop()
						end
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
					if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Captain Elephant") or game.Workspace.Enemies:FindFirstChild("Captain Elephant") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Captain Elephant" then
									OldCFrameRainbow = v.HumanoidRootPart.CFrame
									repeat wait()
										AutoHaki()
										EquipWeapon(_G.Select_Weapon)
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										v.HumanoidRootPart.CFrame = OldCFrameRainbow
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
									until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
								end
							end
						else
							getgenv().ToTarget(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
						end
					else 
						if _G.Auto_Rainbow_Haki_Hop then
							wait(5)
							Hop()
						end
					end
				elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
					if _G.Auto_Rainbow_Haki and game.ReplicatedStorage:FindFirstChild("Beautiful Pirate") or game.Workspace.Enemies:FindFirstChild("Beautiful Pirate") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Beautiful Pirate"then 
									OldCFrameRainbow = v.HumanoidRootPart.CFrame
									repeat wait()
										AutoHaki()
										EquipWeapon(_G.Select_Weapon)
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										v.HumanoidRootPart.CFrame = OldCFrameRainbow
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
									until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
								end
							end
						else
							getgenv().ToTarget(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
						end
					else 
						if _G.Auto_Rainbow_Haki_Hop then
							wait(5)
							Hop()
						end
					end
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
				end
			end
		end
	end)
end)

if not W1 then
	Tabs.Item:AddParagraph({
		Title = "Item",
		Content = ""
	})
end

if W2 then
local AutoFarmEvoV2Toggle = Tabs.Item:AddToggle("AutoEvoV2_Toggle", {Title = "Auto Evo Race V2", Default = false })
Options.AutoEvoV2_Toggle:SetValue(false)
	
AutoFarmEvoV2Toggle:OnChanged(function(value)
	_G.Auto_Evo_Race_V2 = value
	_G.Settings.Auto_Evo_Race_V2 = value
end)
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Evo_Race_V2 and StartEvoMagnet and v.Name == "Swan Pirate" and (v.HumanoidRootPart.Position - PosMonEvo.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonEvo
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)

spawn(function()
	pcall(function()
		while wait() do
			if _G.Auto_Evo_Race_V2 then
				if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
						getgenv().ToTarget(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
						if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
							wait(1.3)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
						end
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
						pcall(function()
							if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
								getgenv().ToTarget(game:GetService("Workspace").Flower1.CFrame)
							elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
								getgenv().ToTarget(game:GetService("Workspace").Flower2.CFrame)
							elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Swan Pirate" then
											repeat wait()
												AutoHaki()
												EquipWeapon(_G.Select_Weapon)
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												PosMonEvo = v.HumanoidRootPart.CFrame
												StartEvoMagnet = true
											until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Evo_Race_V2 == false
											StartEvoMagnet = false
										end
									end
								else
									StartEvoMagnet = false
									getgenv().ToTarget(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
								end
							end
						end)
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
					end
				end
			end
		end
	end)
end)
end

if W2 then
local AutoFarmBartiloToggle = Tabs.Item:AddToggle("AutoBartilo_Toggle", {Title = "Auto Bartilo Quest", Default = false })
Options.AutoBartilo_Toggle:SetValue(false)
	
AutoFarmBartiloToggle:OnChanged(function(value)
	_G.Auto_Bartilo_Quest = value
	_G.Settings.Auto_Bartilo_Quest = value
end)
spawn(function()
	while true do wait()
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end
	end
end)
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.BringNormal and BringMobFarm then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 200 then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosMon
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.Transparency = 1
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							v.Humanoid:ChangeState(11)
							v.Humanoid:ChangeState(14)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
						end
					end
				end
			end
		end)
	end
end)			
function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
			return true
		end
		return false
	end
end

spawn(function()
	while wait() do
	local MyLevel = game.Players.LocalPlayer.Data.Level.Value
	local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
		pcall(function()
			if _G.Auto_Bartilo_Quest and MyLevel >= 850 then
				if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
					_G.Auto_Farm_Level = false
					if QuestC.Visible == true then
						if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Swan Pirate" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
										repeat task.wait()
											if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirate") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											else
												PosMon = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.Head.CanCollide = false
												BringMobFarm = true
												EquipWeapon(_G.Select_Weapon)
												v.HumanoidRootPart.Transparency = 1
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)

												if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO then
													_G.FastAttack = true
												end
											end
										until not _G.Auto_Bartilo_Quest or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
									end
								end
							end
						else
							BringMobFarm = false
							for i,v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
								if v.Name == "Swan Pirate" then local CFrameEnemySpawns = v.CFrame  wait(0.5)
									getgenv().ToTarget(CFrameEnemySpawns * MethodFarm)
								end
							end
						end
					else
						repeat wait() getgenv().ToTarget(CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312)) until (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.Auto_Bartilo_Quest
						if (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
							BringMobFarm = false
							game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
						end
					end
				elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
					_G.Auto_Farm_Level = false
					if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Jeremy" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat task.wait()
										PosMon = v.HumanoidRootPart.CFrame
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.Head.CanCollide = false
										BringMobFarm = true
										EquipWeapon(_G.Select_Weapon)
										v.HumanoidRootPart.Transparency = 1
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)

										if not _G.FastAttack or not _G.FastAttackO or _G.FastAttack or _G.FastAttackO then
											_G.FastAttack = true
										end
									until not _G.Auto_Bartilo_Quest or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
								end
							end
						end
					else
						getgenv().ToTarget(CFrame.new(2158.97412, 449.056244, 705.411682, -0.754199564, -4.17389057e-09, -0.656645238, -4.47752875e-08, 1, 4.50709301e-08, 0.656645238, 6.3393955e-08, -0.754199564))
					end
				elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
					repeat wait() getgenv().ToTarget(CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456)) until (CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or _G.Auto_Bartilo_Quest == false
					wait(0.7)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate1.CFrame
					wait(0.7)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate2.CFrame
					wait(0.7)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate3.CFrame
					wait(0.7)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate4.CFrame
					wait(0.7)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate5.CFrame
					wait(0.7)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate6.CFrame
					wait(0.7)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate7.CFrame
					wait(0.7)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate8.CFrame
					wait(2.5)
				end
			end
		end)
	end
end)
end

if W2 then
local AutoFarmRengokuToggle = Tabs.Item:AddToggle("AutoRengoku_Toggle", {Title = "Auto Rengoku Swords", Default = false })
Options.AutoRengoku_Toggle:SetValue(false)
	
AutoFarmRengokuToggle:OnChanged(function(value)
	_G.Auto_Rengoku = value
	_G.Settings.Auto_Rengoku = value
end)
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Rengoku and StartRengokuMagnet and (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and (v.HumanoidRootPart.Position - RengokuMon.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = RengokuMon
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)

spawn(function()
	while wait() do
		if _G.Auto_Rengoku then
			pcall(function()
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
					EquipWeapon("Hidden Key")
					getgenv().ToTarget(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
				elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and v.Humanoid.Health > 0 then
							repeat wait()
								AutoHaki()
								EquipWeapon(_G.Select_Weapon)
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								RengokuMon = v.HumanoidRootPart.CFrame
								getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								StartRengokuMagnet = true
							until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.Auto_Rengoku == false or not v.Parent or v.Humanoid.Health <= 0
							StartRengokuMagnet = false
						end
					end
				else
					StartRengokuMagnet = false
					getgenv().ToTarget(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
				end
			end)
		end
	end
end)
end

if W2 then
	local AutoLegendarySwordToggle = Tabs.Item:AddToggle("AutoLegendarySword_Toggle", {Title = "Auto Buy Legendary Sword", Default = false })
	Options.AutoLegendarySword_Toggle:SetValue(false)
		
	AutoLegendarySwordToggle:OnChanged(function(value)
		_G.Auto_Buy_Legendary_Sword = value
		_G.Settings.Auto_Buy_Legendary_Sword = value
	end)
	spawn(function()
		while wait() do
			if _G.Auto_Buy_Legendary_Sword then
				local args = {
					[1] = "LegendarySwordDealer",
					[2] = "2"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
		end
	end)
	local AutoEnchancementToggle = Tabs.Item:AddToggle("AutoEnchancement_Toggle", {Title = "Auto Buy Enchancement", Default = false })
	Options.AutoEnchancement_Toggle:SetValue(false)
		
	AutoEnchancementToggle:OnChanged(function(value)
		_G.Auto_Buy_Enchancement = value
		_G.Settings.Auto_Buy_Enchancement = value
	end)
	spawn(function()
		while wait() do
			if _G.Auto_Buy_Enchancement then
				local args = {
					[1] = "ColorsDealer",
					[2] = "2"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end 
		end
	end)
end

if W3 then	
	local AutoMusketeerToggle = Tabs.Item:AddToggle("AutoMusketeer_Toggle", {Title = "Auto Musketeer Hat", Default = false })
	Options.AutoMusketeer_Toggle:SetValue(false)
		
	AutoMusketeerToggle:OnChanged(function(value)
		_G.Auto_Musketeer_Hat = value
		_G.Settings.Auto_Musketeer_Hat = value
	end)
	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Auto_Musketeer_Hat and StartMagnetMusketeerhat and v.Name == "Forest Pirate" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).magnitude <= 350 then
						v.HumanoidRootPart.CFrame = MusketeerHatMon
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(50,50,50)
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end)
		end)
	end)

	spawn(function()
		pcall(function()
			while wait() do
				if _G.Auto_Musketeer_Hat then
					if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Forest Pirate" then
										repeat wait()
											pcall(function()
												AutoHaki()
												EquipWeapon(_G.Select_Weapon)
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
												v.HumanoidRootPart.CanCollide = false
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												MusketeerHatMon = v.HumanoidRootPart.CFrame
												StartMagnetMusketeerhat = true
											end)
										until _G.Auto_Musketeer_Hat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
										StartMagnetMusketeerhat = false
									end
								end
							else
								StartMagnetMusketeerhat = false
								getgenv().ToTarget(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
							end
						else
							getgenv().ToTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
							if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
								wait(1.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
							end
						end
					elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Captain Elephant" then
										OldCFrameElephant = v.HumanoidRootPart.CFrame
										repeat wait()
											pcall(function()
												AutoHaki()
												EquipWeapon(_G.Select_Weapon)
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.CFrame = OldCFrameElephant
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
											end)
										until _G.Auto_Musketeer_Hat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							else
								getgenv().ToTarget(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
							end
						else
							getgenv().ToTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
							if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
								wait(1.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
							end
						end
					elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
						getgenv().ToTarget(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
					end
				end
			end
		end)
	end)
end
if W3 then
	local AutoFarmHolyToggle = Tabs.Item:AddToggle("AutoHoly_Toggle", {Title = "Auto Holy Torch", Default = false })
	Options.AutoHoly_Toggle:SetValue(false)
	
	AutoFarmHolyToggle:OnChanged(function(value)
		_G.Auto_Holy_Torch = value
		_G.Settings.Auto_Holy_Torch = value
	end)
	spawn(function()
		while wait() do
			if _G.Auto_Holy_Torch then
				pcall(function()
					wait(1)
					repeat getgenv().ToTarget(CFrame.new(-10752, 417, -9366)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
					wait(1)
					repeat getgenv().ToTarget(CFrame.new(-11672, 334, -9474)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
					wait(1)
					repeat getgenv().ToTarget(CFrame.new(-12132, 521, -10655)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
					wait(1)
					repeat getgenv().ToTarget(CFrame.new(-13336, 486, -6985)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
					wait(1)
					repeat getgenv().ToTarget(CFrame.new(-13489, 332, -7925)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
				end)
			end
		end
	end)
end
if W3 then
	local YamaSwordToggle = Tabs.Item:AddToggle("YamaSword_Toggle", {Title = "Auto Yama", Default = false })
	Options.YamaSword_Toggle:SetValue(false)
	
	YamaSwordToggle:OnChanged(function(value)
		_G.Auto_Yama = value
		_G.Settings.Auto_Yama = value
	end)
	local Yama_All_Mon = {
		["Mon Quest"] = {"Diablo","Deandre","Urban"},
		["Mon"] = {"Diablo","Deandre","Urban"},
		["Item"] = "God's Chalice",
	}

	spawn(function()
		while wait() do
			if _G.Auto_Yama then
				pcall(function()
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
						fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
					else
						local QuestUI = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
						for _,_l1 in ipairs(Yama_All_Mon["Mon Quest"]) do
							for _,l in ipairs(Yama_All_Mon["Mon"]) do
								if QuestUI.Visible == true and _G.Auto_Farm_Level ~= true then
									if game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
										for _,_v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if _v1.Name == _l1 then
												if _v1:FindFirstChild("Humanoid") and _v1:FindFirstChild("HumanoidRootPart") and _v1.Humanoid.Health > 0 then
													repeat wait()
														_v1.HumanoidRootPart.Size = Vector3.new(60,60,60)
														_v1.HumanoidRootPart.CanCollide = false
														_v1.Head.CanCollide = false
														BringMobFarm = true
														EquipWeapon(_G.Select_Weapon)
														_v1.HumanoidRootPart.Transparency = 1
														getgenv().ToTarget(_v1.HumanoidRootPart.CFrame * MethodFarm)
														AutoHaki()
														if (_v1.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
															_G.FastAttack = true
														end
													until not _G.Auto_Yama or _v1.Humanoid.Health <= 0 or not _v1.Parent
												end
											else
												if _G.Bypass_TP then
													if (game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
														repeat wait()
															Bypass(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
														until not _G.Auto_Yama
													end
												end
												if game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
													getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
												end
											end
										end
									end
								else
									if game.Players.LocalPlayer.Backpack:FindFirstChild(Yama_All_Mon["Item"]) or game.Players.LocalPlayer.Character:FindFirstChild(Yama_All_Mon["Item"]) then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
										_G.Auto_Yama = false
										return
									else
										if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." and not ( game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) ) then
											_G.Auto_Farm_Level = true
										else
											_G.Auto_Farm_Level = false
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
										end
									end
								end
							end
						end
					end
				end)
			end
		end
	end)	
end

local ObservationRange = Tabs.Item:AddParagraph({
    Title = "Observation",
    Content = "Observation : "
})

spawn(function()
	while wait() do
		ObservationRange:SetDesc("Observation Range Level : "..math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value))
	end
end)

local AutoFarmObservation = Tabs.Item:AddToggle("AutoFarmObservation_Toggle", {Title = "Auto Farm Observation Haki", Default = false })
Options.AutoFarmObservation_Toggle:SetValue(false)

AutoFarmObservation:OnChanged(function(value)
	_G.AutoObservation = value 
	_G.Settings.AutoObservation = value
end)

local AutoFarmObservationHop = Tabs.Item:AddToggle("AutoFarmObservationHop_Toggle", {Title = "Auto Farm Observation Haki [Hop]", Default = false })
Options.AutoFarmObservationHop_Toggle:SetValue(false)

AutoFarmObservationHop:OnChanged(function(value)
	_G.AutoObservation_Hop = value 
	_G.Settings.AutoObservation_Hop = value
end)

spawn(function()
	while wait() do
		pcall(function()
				if _G.Settings.AutoObservation then
					repeat
						task.wait()
						if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
							local args = {
								[1] = "Ken",
								[2] = true
							}
						
							game:GetService("ReplicatedStorage").Remotes.CommE:FireServer(unpack(args))
						end
					until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AutoObservation
				end
			end)
		end
	end)

spawn(function()
	pcall(function()
			while wait() do
				if _G.Settings.AutoObservation then
					if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 6000 then
						Vec("<Color=Red>You Have Max Observation<Color=/>")
						wait(2)
					else
						if W2 then
							if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate") then
								if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
									repeat
										task.wait()
										wait(1.5)
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
									until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
								else
									repeat
										task.wait()
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
										if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
											wait(5)
											game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
										end
									until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
								end
							else
								getgenv().ToTarget(CFrame.new(-5478.39209, 15.9775667, -5246.9126)) 
							end
						elseif W1 then
							if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain") then
								if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
									repeat
										task.wait()
										wait(1.5)
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
									until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
								else
									repeat
										task.wait()
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
										if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
											wait(5)
											game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
										end
									until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
								end
							else
								getgenv().ToTarget(CFrame.new(5533.29785, 88.1079102, 4852.3916))
							end
						elseif W3 then
							if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander") then
								if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
									repeat
										task.wait()
										wait(1.5)
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(3, 0, 0)
									until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
								else
									repeat
										task.wait()
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander").HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
										if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
											wait(5)
											game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
										end
									until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
								end
							else
								getgenv().ToTarget(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
							end
						end
					end
				end
			end
		end)
	end)

if not W1 and not W2 then
Tabs.Item:AddParagraph({
	Title = "Rip Indar",
	Content = ""
})

local Rip_Indar_All_Mon = {
	["Mon Quest"] = {"Diablo","Deandre","Urban"},
	["Boss"] = "rip_indra True Form",
	["Mon"] = {"Diablo","Deandre","Urban"},
	["Item"] = "God's Chalice",
}

local AutoFarmrip_indra = Tabs.Item:AddToggle("AutoFarmrip_indra_Toggle", {Title = "Auto Farm Rip Indar [Boss]", Default = false })
Options.AutoFarmrip_indra_Toggle:SetValue(false)

AutoFarmrip_indra:OnChanged(function(value)
	_G.Auto_Rip_Indar = value
	_G.Settings.Auto_Rip_Indar = value
end)

spawn(function()
	while wait() do
		pcall(function()
			if _G.Auto_Rip_Indar then
				local QuestUI = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
				for _,_l1 in next,Rip_Indar_All_Mon["Mon Quest"] do
					for _,l in next,Rip_Indar_All_Mon["Mon"] do
						if game:GetService("Workspace").Enemies:FindFirstChild(Rip_Indar_All_Mon["Boss"]) or game:GetService("ReplicatedStorage"):FindFirstChild(Rip_Indar_All_Mon["Boss"]) then
							for _,_v3 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if _v3.Name == Rip_Indar_All_Mon["Boss"] then
									if _v3:FindFirstChild("Humanoid") and _v3:FindFirstChild("HumanoidRootPart") and _v3.Humanoid.Health > 0 then
										repeat wait()
											EquipWeapon(_G.Select_Weapon)
											_v3.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
											getgenv().ToTarget(_v3.HumanoidRootPart.CFrame * MethodFarm)
											if (_v3.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
												_G.FastAttack = true
											end
										until not _G.Auto_Rip_Indar or _v3.Humanoid.Health <= 0 or not _v3.Parent or _v3.Humanoid.Health <= 0
									end
								else
									if game:GetService("ReplicatedStorage"):FindFirstChild(Rip_Indar_All_Mon["Boss"]) then
										getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Rip_Indar_All_Mon["Boss"]).HumanoidRootPart.CFrame * MethodFarm)
									else
										EquipWeapon(Rip_Indar_All_Mon["Item"])
										getgenv().ToTarget(CFrame.new(-5561.09033, 314.179657, -2663.16919, -0.347872645, -0.00166249205, 0.937540352, -0.000768713537, 0.999998569, 0.00148801634, -0.937541485, -0.000203059797, -0.34787342))
									end
								end
							end
						else
							if game.Players.LocalPlayer.Backpack:FindFirstChild(Rip_Indar_All_Mon["Item"]) or game.Players.LocalPlayer.Character:FindFirstChild(Rip_Indar_All_Mon["Item"]) then
								for _, _v_1 in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
									if _v_1:IsA("Part") then
										if _v_1.Color == Color3.fromRGB(187, 187, 187) then
											_v_1.Name = "W1"
										elseif _v_1.Color == Color3.fromRGB(255, 0, 0) then
											_v_1.Name = "R2"
										elseif _v_1.Color == Color3.fromRGB(255, 0, 191) then
											_v_1.Name = "P3"
										end
									end
								end
								for _, _v2 in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
									if _v2:IsA("Part") then
										if _v2.Name == "W1" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor", "Snow White")
											wait(0.5)
											repeat wait()
												getgenv().ToTarget(_v2.CFrame)
											until (_v2.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2 or not _G.Auto_Rip_Indar
											wait(0.5)
										elseif _v2.Name == "R2" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
											wait(0.5)
											repeat wait()
												getgenv().ToTarget(_v2.CFrame)
											until (_v2.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2 or not _G.Auto_Rip_Indar
											wait(0.5)
										elseif _v2.Name == "P3" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
											wait(0.5)
											repeat wait()
												getgenv().ToTarget(_v2.CFrame)
											until (_v2.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2 or not _G.Auto_Rip_Indar
											wait(0.5)
										else
											for _, _v2 in pairs(workspace.Map["Boat Castle"].Summoner.Circle:GetChildren()) do
												if _v2:IsA("Part") then
													if _v2.Name == "W1" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
														_G.Part1 = false
													else
														_G.Part1 = true
													end
													if _v2.Name == "R2" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
														_G.Part2 = false
													else
														_G.Part2 = true
													end
													if _v2.Name == "P3" and _v2.Part.BrickColor == BrickColor.new("Dark stone grey") then
														_G.Part3 = false
													else
														_G.Part3 = true
													end
												end
											end
										end
									end
								end
							else
								if QuestUI.Visible == true then
									if game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
										for _,_1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if _1.Name == _l1 then
												if _1:FindFirstChild("Humanoid") and _1:FindFirstChild("HumanoidRootPart") and _1.Humanoid.Health > 0 then
													repeat wait()
														EquipWeapon(_G.Select_Weapon)
														_1.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
														getgenv().ToTarget(_1.HumanoidRootPart.CFrame * MethodFarm)
														if (_1.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
															_G.FastAttack = true
														end
													until _1.Humanoid.Health <= 0 or not _1.Parent or not game:GetService("Workspace").Enemies:FindFirstChild(l) or not game:GetService("ReplicatedStorage"):FindFirstChild(l) or not _G.Auto_Rip_Indar
												end
											else
												if _G.Bypass_TP then
													if (game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
														repeat wait()
															Bypass(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
														until not _G.Auto_Rip_Indar
													end
												end
												if game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
													getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
												end
											end
										end
									end
								else
									if game.Players.LocalPlayer.Backpack:FindFirstChild(Rip_Indar_All_Mon["Item"]) or game.Players.LocalPlayer.Character:FindFirstChild(Rip_Indar_All_Mon["Item"]) then
										return
									else
										if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." and not ( game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) ) then
											_G.Rejoin = false
											wait(0.5)
											Hop()
										else
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
										end
									end
								end
							end
						end
					end
				end
			end
		end)
	end
end)
end

local Mob_Kill_Cake_Prince = Tabs.Item:AddParagraph({
    Title = "Cake Prince",
    Content = "Cake Prince: "
})

spawn(function()
	while wait() do
		pcall(function()
			if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
				Mob_Kill_Cake_Prince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).."")
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
				Mob_Kill_Cake_Prince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).."")
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
				Mob_Kill_Cake_Prince:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." ")
			else
				Mob_Kill_Cake_Prince:SetDesc("Boss Is Found")
			end
		end)
	end
end)

local AutoFarmKatakuri = Tabs.Item:AddToggle("AutoFarmKatakuri_Toggle", {Title = "Auto Farm Cake Prince", Default = false })
Options.AutoFarmKatakuri_Toggle:SetValue(false)

AutoFarmKatakuri:OnChanged(function(value)
	_G.Auto_Cake_Prince = value
	_G.Settings.Auto_Cake_Prince = value
end)

spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.BringNormal and _G.Auto_Cake_Prince and StartCakeMagnet and (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = POSCAKE
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)

spawn(function()
	while wait() do
		if _G.Auto_Cake_Prince then
			pcall(function()
				if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or  game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then   
						if _G.Settings.Bypass_TP then
						_G.Bypass_TP = false
					end
					if not game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
						for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
							if x.Name == "Cake Prince" or x.Name == "Dough King" then
								if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
									_G.Bypass_TP = false
									wait(1.5)
									getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
									return
								end
							end
						end
					end

					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Cake Prince" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
										getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
										return
									end
									EquipWeapon(_G.Select_Weapon)
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
									BringMobFarm = true
									getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
									if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
										_G.FastAttack = true
									end
									sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
								until not _G.Auto_Cake_Prince or not v.Parent or v.Humanoid.Health <= 0
							end
						else
							for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
								if x.Name == "Cake Prince" or x.Name == "Dough King" then
									if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
										getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
										return
									end
								end
							end
						end
					end
				else 
					if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game.ReplicatedStorage:FindFirstChild("Cake Prince") then
						for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
							if x.Name == "Cake Prince" or x.Name == "Dough King" then
								if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
									getgenv().ToTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
									return
								end
							end
						end
					else
						if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
								if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
									repeat wait()
										PosMon = v.HumanoidRootPart.CFrame
										EquipWeapon(_G.Select_Weapon)
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
										BringMobFarm = true
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
											_G.FastAttack = true
										end
									until _G.Auto_Cake_Prince == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						else
							BringMobFarm = false
							getgenv().ToTarget(GetCake_CFrame_Mon() * MethodFarm)
							wait(0.5)
						end
					end
				end
			end)
		end
	end
end)

if W3 then
local StatusBone = Tabs.Item:AddParagraph({
    Title = "Bone",
    Content = "Bones: "
})

spawn(function()
    pcall(function()
        while wait() do
            StatusBone:SetDesc("Bones: "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check"))
        end
    end)
end)

local AutoFarmBone = Tabs.Item:AddToggle("AutoFarmBone_Toggle", {Title = "Auto Farm Bone", Default = false })
Options.AutoFarmBone_Toggle:SetValue(false)

AutoFarmBone:OnChanged(function(value)
	_G.Auto_Farm_Bone = value
	_G.Settings.Auto_Farm_Bone = value
end)

spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.BringNormal and _G.Auto_Farm_Bone and StartMagnetBoneMon and (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") and (v.HumanoidRootPart.Position - PosMonBone.Position).magnitude <= 1000 then
					v.HumanoidRootPart.CFrame = PosMonBone
					v.HumanoidRootPart.CanCollide = false
					v.Humanoid.JumpPower = 0
					v.Humanoid.WalkSpeed = 0
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)

local Number2 = 1
local BoneTabel = {
	["Mon"] = {"Reborn Skeleton","Demonic Soul","Living Zombie","Posessed Mummy"},
	["Boss"] = {"Soul Reaper"},
	["Item"] = "Hallow Essence",
}

local SetCFarmeBone = 1
function GetBone_CFrame_Mon()
	local matchingCFrames = {}

	for _, Mon in ipairs(BoneTabel["Mon"]) do
		local result = Mon:gsub("Lv. ", ""):gsub("[%[%]]", ""):gsub("%d+", ""):gsub("%s+", "")
		
		for _, v in ipairs(game.workspace.EnemySpawns:GetChildren()) do
			if v.Name == result then
				table.insert(matchingCFrames, v.CFrame)
			end
		end
	end
	
	return matchingCFrames
end

spawn(function()
	while wait() do
		pcall(function()
			if _G.Auto_Farm_Bone then
				for _, _Boss in ipairs(BoneTabel["Boss"]) do
					local _Item = BoneTabel["Item"]
					if game:GetService("Workspace").Enemies:FindFirstChild(_Boss) or game:GetService("ReplicatedStorage"):FindFirstChild(_Boss) then
						for _, _v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if string.find(_v1.Name, _Boss) then
								if _v1:FindFirstChild("Humanoid") and _v1:FindFirstChild("HumanoidRootPart") and _v1.Humanoid.Health > 0 then
									repeat wait()
										EquipWeapon(_G.Select_Weapon)
										_v1.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
										BringMobFarm = true
										getgenv().ToTarget(_v1.HumanoidRootPart.CFrame * MethodFarm)
										if (_v1.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
											_G.FastAttack = true
										end
									until not _G.Auto_Farm_Bone or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
									BringMobFarm = false
								end
							end
						end
					else
						if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(_Item) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(_Item) then
							EquipWeapon(_Item)
							getgenv().ToTarget(workspace.Map["Haunted Castle"].Summoner.Detection.CFrame)
						else
							for _, _Mon in next, BoneTabel["Mon"] do
								if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if string.find(v.Name, _Mon) then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
													PosMon = v.HumanoidRootPart.CFrame
													EquipWeapon(_G.Select_Weapon)
													v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
													BringMobFarm = true
													getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
													if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
														_G.FastAttack = true
													end
												until not _G.Auto_Farm_Bone or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
											else
												local CFrameMon = GetBone_CFrame_Mon()[1]
												repeat wait() getgenv().ToTarget(CFrameMon) until (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.Auto_Farm_Bone
											end
										end
									end
								else
									if _G.Auto_CFrame then
										getgenv().ToTarget(GetBone_CFrame_Mon()[SetCFarmeBone] * MethodFarm)
										if (GetBone_CFrame_Mon()[SetCFarmeBone].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
											if SetCFarmeBone == nil or SetCFarmeBone == '' then
												SetCFarmeBone = 1
											elseif SetCFarmeBone >= #GetBone_CFrame_Mon() then
												SetCFarmeBone = 1
											end
											SetCFarmeBone =  SetCFarmeBone + 1
		
											wait(0.5)
										end
									else
										if AttackRandomType_MonCFrame == 1 then
											getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,20))
										elseif AttackRandomType_MonCFrame == 2 then
											getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,-20))
										elseif AttackRandomType_MonCFrame == 3 then
											getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(20,30,0))
										elseif AttackRandomType_MonCFrame == 4 then
											getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,-20))
										elseif AttackRandomType_MonCFrame == 5 then
											getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(-20,30,0))
										else
											getgenv().ToTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,20))
										end
									end
								end
							end
						end
					end
				end
			end
		end)
	end
end)

local AutoRandomBone = Tabs.Item:AddToggle("AutoRandomBone_Toggle", {Title = "Auto Random Bone", Default = false })
Options.AutoRandomBone_Toggle:SetValue(false)

AutoRandomBone:OnChanged(function(value)
	_G.Auto_Trade_Bone = value
	_G.Settings.Auto_Trade_Bone = value
end)

spawn(function()
	while wait(.1) do
		if _G.Auto_Trade_Bone then
			local args = {
				[1] = "Bones",
				[2] = "Buy",
				[3] = 1,
				[4] = 1
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)
end

spawn(function()
	while wait() do
		pcall(function()
			if _G.Auto_Castle_Raid then
				if (CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
							repeat wait()
								PosMon = v.HumanoidRootPart.CFrame
								EquipWeapon(_G.Select_Weapon)
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
								BringMobFarm = true
								getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
									_G.FastAttack = true
								end
							until not _G.Auto_Castle_Raid or not v.Parent or v.Humanoid.Health <= 0
							BringMobFarm = false
						end
					end
				else
					if (CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
						for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
								getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
							end
						end
					end
					getgenv().ToTarget(CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125))
				end
			end
		end)
	end
end)

local StatusElite = Tabs.Item:AddParagraph({
    Title = "Elite Hunter",
    Content = "Status: "
})

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                StatusElite:SetDesc("Status : Found | Killed:  "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
            else
                StatusElite:SetDesc("Status : Not Found | Killed: "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
            end
        end)
    end
end)


local AutoEliteHunterToggle = Tabs.Item:AddToggle("AutoEliteHunter_Toggle", {Title = "Auto Elite Hunter", Default = false })
Options.AutoEliteHunter_Toggle:SetValue(false)

AutoEliteHunterToggle:OnChanged(function(value)
	_G.Auto_Elite_Hunter = value
	_G.Settings.Auto_Elite_Hunter = value
end)

local AutoEliteHunterHopToggle = Tabs.Item:AddToggle("AutoEliteHunterHop_Toggle", {Title = "Auto Elite Hunter [Hop]", Default = false })
Options.AutoEliteHunterHop_Toggle:SetValue(false)

AutoEliteHunterHopToggle:OnChanged(function(value)
	_G.Auto_Elite_Hunter_Hop = value 
	_G.Settings.Auto_Elite_Hunter_Hop = value
end)

local Elite_All_Mon = {
	["Mon Quest"] = {"Diablo","Deandre","Urban"},
	["Mon"] = {"Diablo","Deandre","Urban"},
	["Item"] = "God's Chalice",
}
spawn(function()
	while wait() do
		pcall(function()
			if _G.Auto_Elite_Hunter then
				local QuestUI = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
				for _,_l1 in next,Elite_All_Mon["Mon Quest"] do
					for _,l in next,Elite_All_Mon["Mon"] do
						if QuestUI.Visible == true then
							if game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
								for _,_1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if _1.Name == _l1 then
										if _1:FindFirstChild("Humanoid") and _1:FindFirstChild("HumanoidRootPart") and _1.Humanoid.Health > 0 then
											repeat wait()
												EquipWeapon(_G.Select_Weapon)
												_1.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
												getgenv().ToTarget(_1.HumanoidRootPart.CFrame * MethodFarm)
												if (_1.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
													_G.FastAttack = true
												end
											until _1.Humanoid.Health <= 0 or not _1.Parent or not game:GetService("Workspace").Enemies:FindFirstChild(l) or not game:GetService("ReplicatedStorage"):FindFirstChild(l) or not _G.Auto_Elite_Hunter
										end
									else
										if _G.Bypass_TP then
											if (game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
												repeat wait()
													Bypass(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
												until not _G.Auto_Elite_Hunter
											end
										end
										if game:GetService("ReplicatedStorage"):FindFirstChild(_l1) then
											getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild(_l1).HumanoidRootPart.CFrame * MethodFarm)
										end
									end
								end
							end
						else
							if game.Players.LocalPlayer.Backpack:FindFirstChild(Elite_All_Mon["Item"]) or game.Players.LocalPlayer.Character:FindFirstChild(Elite_All_Mon["Item"]) then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
								_G.Auto_Elite_Hunter = false
								return
							else
								if _G.Auto_Elite_Hunter_Hop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." and not ( game:GetService("Workspace").Enemies:FindFirstChild(_l1) or game:GetService("ReplicatedStorage"):FindFirstChild(_l1) ) then
									_G.Rejoin = false
									wait(5)
									Hop()
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
								end
							end
						end
					end
				end
			end
		end)
	end
end)

local StatsList = {"Melee","Defense","Sword","Gun","Fruit"}

local MultiDropdown1 = Tabs.Stats:AddDropdown("MultiDropdown", {
    Title = "Select Stats",
    Description = "",
    Values = StatsList,
    Multi = true,
    Default = {"Melee", "Defense"},
})

MultiDropdown1:SetValue({
    Melee = true,
    Defense = true,
    seven = false
})

MultiDropdown1:OnChanged(function(Value)
    _G.SelectStats = Value
end)

local EanbleStatsToggle = Tabs.Stats:AddToggle("EanbleStats_Toggle", {Title = "Eanble Stats", Default = false })
Options.EanbleStats_Toggle:SetValue(false)

EanbleStatsToggle:OnChanged(function(value)
    _G.EnabledAutoStats = value
end)

local EanbleStatsKaitunToggle = Tabs.Stats:AddToggle("EanbleStatsKaitun_Toggle", {Title = "Eanble Stats Kaitun", Default = false })
Options.EanbleStatsKaitun_Toggle:SetValue(false)

EanbleStatsKaitunToggle:OnChanged(function(value)
    _G.AutoStatsKaitun = value
end)

spawn(function()
    while task.wait() do
        if _G.AutoStatsKaitun then
            if game:GetService("Players").LocalPlayer.Data.Stats.Melee.Level.Value <= 2549 then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Melee",
                    [3] = 100
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            else
                local args = {
                    [1] = "AddPoint",
                    [2] = "Defense",
                    [3] = 100
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)

spawn(function()
    pcall(function()
        while task.wait() do
            if _G.EnabledAutoStats then
                if _G.SelectStats == "Melee" then
                    local args = {
                        [1] = "AddPoint",
                        [2] = "Melee",
                        [3] = 100
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                elseif _G.SelectStats == "Defense" then
                    local args = {
                        [1] = "AddPoint",
                        [2] = "Defense",
                        [3] = 100
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                elseif _G.SelectStats == "Sword" then
                    local args = {
                        [1] = "AddPoint",
                        [2] = "Sword",
                        [3] = 100
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                elseif _G.SelectStats == "Gun" then
                    local args = {
                        [1] = "AddPoint",
                        [2] = "Gun",
                        [3] = 100
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                elseif _G.SelectStats == "Fruit" then
                    local args = {
                        [1] = "AddPoint",
                        [2] = "Demon Fruit",
                        [3] = 100
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
        end
    end)
end)

listShop =  {"Refund Stat [2,500F]","Reroll Race [3,000F]","Haki [25,00$]", "Geppo [10,000$]", "Soru [100,000$]", "KenHaki [750,000$]", "Black Leg [150,000$]", "Electro [500,000$]", "Fishman Karate [750,000$]", "Dragon Claw [1,500F]",
"Superhuman [3,000,000]", "Death Step [2,500,000/5,000F]", "Sharkman Karate [2,500,000/5,000F]", "Electric Claw [3,000,000/5,000F]", "Dragon Talon [3,000,000/5,000F]", "Godhuman [5,000,000/5,000F]", "SanguineArt [5,000,000/5,000F]", "Katana [1,000]",
"Cutlass [1,000]", "Duel Katana [12,000]", "Iron Mace [25,000]", "Pipe [100,000]", "Triple Katana [60,000]", "Dual-Headed Blade [400,000]", "Bisento [1,000,000]", "Soul Cane [750,000]", "Slingshot [5,000]", "Musket [8,000]", "Flintlock [10,500]", "Refined Flintlock [65,000]", "Cannon [100,000]", "Kabucha [1500F]",
"Black Cape [50,000]", "Toemo Ring [500,000]", "Swordsman Hat [150,000]"}

local MultiDropdown = Tabs.Shop:AddDropdown("MultiDropdown1", {
    Title = "Select Shop",
    Description = "",
    Values = listShop,
    Multi = true,
    Default = {"Refund Stat [2,500F]", "Swordsman Hat [150,000]"},
})

MultiDropdown:SetValue({
    Melee = true,
    Defense = true,
    seven = false
})

MultiDropdown:OnChanged(function(Value)
    _G.ListShopBuy = Value
end)

Tabs.Shop:AddButton({
    Title = "Buy On Select Shop",
    Description = "",
    Callback = function()
        if _G.ListShopBuy == "Refund Stat [2,500F]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")   
        elseif _G.ListShopBuy == "Reroll Race [3,000F]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
        elseif _G.ListShopBuy == "Haki [25,00$]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
        elseif _G.ListShopBuy == "Geppo [10,000$]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
        elseif _G.ListShopBuy == "Soru [100,000$]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
        elseif _G.ListShopBuy == "KenHaki [750,000$]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
        elseif _G.ListShopBuy == "Black Leg [150,000$]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
        elseif _G.ListShopBuy == "Electro [500,000$]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
        elseif _G.ListShopBuy == "Fishman Karate [750,000$]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
        elseif _G.ListShopBuy == "Dragon Claw [1,500F]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
        elseif _G.ListShopBuy == "Superhuman [3,000,000]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
        elseif _G.ListShopBuy == "Death Step [2,500,000/5,000F]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
        elseif _G.ListShopBuy == "Sharkman Karate [2,500,000/5,000F]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
        elseif _G.ListShopBuy == "Electric Claw [3,000,000/5,000F]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
        elseif _G.ListShopBuy == "Dragon Talon [3,000,000/5,000F]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
        elseif _G.ListShopBuy == "Godhuman [5,000,000/5,000F]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
        elseif _G.ListShopBuy == "SanguineArt [5,000,000/5,000F]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt", true)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
        elseif _G.ListShopBuy == "Katana [1,000]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana")
        elseif _G.ListShopBuy == "Cutlass [1,000]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass")
        elseif _G.ListShopBuy == "Duel Katana [12,000]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana")
        elseif _G.ListShopBuy == "Iron Mace [25,000]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace")
        elseif _G.ListShopBuy == "Pipe [100,000]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe")
        elseif _G.ListShopBuy == "Triple Katana [60,000]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana")
        elseif _G.ListShopBuy == "Dual-Headed Blade [400,000]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade")
        elseif _G.ListShopBuy == "Bisento [1,000,000]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento")
        elseif _G.ListShopBuy == "Soul Cane [750,000]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane")
        elseif _G.ListShopBuy == "Slingshot [5,000]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot")
        elseif _G.ListShopBuy == "Musket [8,000]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket")
        elseif _G.ListShopBuy == "Flintlock [10,500]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock")
        elseif _G.ListShopBuy == "Refined Flintlock [65,000]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock")
        elseif _G.ListShopBuy == "Cannon [100,000]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon")
        elseif _G.ListShopBuy == "Kabucha [1500F]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2")
        elseif _G.ListShopBuy == "Black Cape [50,000]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Black Cape")
        elseif _G.ListShopBuy == "Toemo Ring [500,000]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Tomoe Ring")
        elseif _G.ListShopBuy == "Swordsman Hat [150,000]" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Swordsman Hat")
        end
    end
})

if World1 then
    TeleportTable = {"StraterIsland", "Marine1", "Marine2", "Midle Town", "Jungle", "Pirate Village", "Desert",
    "Frozen Village", "Colosseum", "Prison", "Mob Leader", "Magma Village", "UnderWater Gate", "UnderWater City",
    "Fountain City", "Sky1", "Sky2", "Sky3" }
    elseif World2 then
    TeleportTable = { "Dock", "Mansion", "Kingdom Of Rose", "Cafe", "Sunflower Field", "Jeramy Mountain", "Colossuem",
    "Factory", "The Bridge", "Green Bit", "Graveyard", "Dark Area", "Snow Mountain", "Hot Island", "Cold Island",
    "Ice Castle", "Usopp's Island", "inscription Island", "Forgotten Island", "Ghost Ship" }
    elseif World3 then
    TeleportTable = { "Port Town", "Hydra Island", "Gaint Tree", "Mansion", "Castle on the Sea", "Haunted Castle",
    "Icecream Island", "Peanut Island", "Lab", "Cake Loaf", "TikiOutpost" }
end

local SelectIslandSet = Tabs.Island:AddDropdown("Dropdown3", {
    Title = "Select Island",
    Values = TeleportTable,
    Multi = false,
    Default = 1,
})

if World1 then
SelectIslandSet:SetValue("Marine1")
elseif World2 then
SelectIslandSet:SetValue("Mansion")
elseif World3 then
SelectIslandSet:SetValue("Hydra Island")
end

SelectIslandSet:OnChanged(function(value)
    _G.SelectLocalTeleport = value
end)

Tabs.Island:AddButton({
    Title = "Teleport To First World",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})

Tabs.Island:AddButton({
    Title = "Teleport To Second World",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})

Tabs.Island:AddButton({
    Title = "Teleport To Third World",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})

local TpToIslandToggle = Tabs.Island:AddToggle("TpToIsland_Toggle", {Title = "Teleport To Island", Default = false })
Options.TpToIsland_Toggle:SetValue(false)

TpToIslandToggle:OnChanged(function(value)
    _G.TeleportIsland = value
end)

if _G.TeleportIsland then
    if World1 then
        if _G.SelectLocalTeleport == "Jones Salad" then
            toTarget(CFrame.new(1042.1501464844, 16.299360275269, 1444.3442382813))
        end
        if _G.SelectLocalTeleport == "Marine1" then
            toTarget(CFrame.new(-2599.6655273438, 6.9146227836609, 2062.2216796875))
        end
        if _G.SelectLocalTeleport == "Marine2" then
            toTarget(CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188))
        end
        if _G.SelectLocalTeleport == "Midle Town" then
            toTarget(CFrame.new(-655.97088623047, 7.878026008606, 1573.7612304688))
        end
        if _G.SelectLocalTeleport == "Jungle" then
            toTarget(CFrame.new(-1499.9877929688, 22.877912521362, 353.87060546875))
        end
        if _G.SelectLocalTeleport == "Pirate Village" then
            toTarget(CFrame.new(-1163.3889160156, 44.777843475342, 3842.8276367188))
        end
        if _G.SelectLocalTeleport == "Desert" then
            toTarget(CFrame.new(954.02056884766, 6.6275520324707, 4262.611328125))
        end
        if _G.SelectLocalTeleport == "Frozen Village" then
            toTarget(CFrame.new(1144.5270996094, 7.3292083740234, -1164.7322998047))
        end
        if _G.SelectLocalTeleport == "Colosseum" then
            toTarget(CFrame.new(-1667.5869140625, 39.385631561279, -3135.5817871094))
        end
        if _G.SelectLocalTeleport == "Prison" then
            toTarget(CFrame.new(4857.6982421875, 5.6780304908752, 732.75750732422))
        end
        if _G.SelectLocalTeleport == "Mob Leader" then
            toTarget(CFrame.new(-2841.9604492188, 7.3560485839844, 5318.1040039063))
        end
        if _G.SelectLocalTeleport == "Magma Village" then
            toTarget(CFrame.new(-5328.8740234375, 8.6164798736572, 8427.3994140625))
        end
        if _G.SelectLocalTeleport == "UnderWater Gate" then
            toTarget(CFrame.new(3893.953125, 5.3989524841309, -1893.4851074219))
        end
        if _G.SelectLocalTeleport == "UnderWater City" then
            toTarget(CFrame.new(61191.12109375, 18.497436523438, 1561.8873291016))
        end
        if _G.SelectLocalTeleport == "Fountain City" then
            toTarget(CFrame.new(5244.7133789063, 38.526943206787, 4073.4987792969))
        end
        if _G.SelectLocalTeleport == "Sky1" then
            toTarget(CFrame.new(-4878.0415039063, 717.71246337891, -2637.7294921875))
        end
        if _G.SelectLocalTeleport == "Sky2" then
            toTarget(CFrame.new(-7899.6157226563, 5545.6030273438, -422.21798706055))
        end
        if _G.SelectLocalTeleport == "Sky3" then
            toTarget(CFrame.new(-7868.5288085938, 5638.205078125, -1482.5548095703))
        end
    elseif World2 then
        if _G.SelectLocalTeleport == "Dock" then
            toTarget(CFrame.new(-12.519311904907, 19.302536010742, 2827.853515625))
        end
        if _G.SelectLocalTeleport == "Mansion" then
            toTarget(CFrame.new(-390.34829711914, 321.89730834961, 869.00506591797))
        end
        if _G.SelectLocalTeleport == "Kingdom Of Rose" then
            toTarget(CFrame.new(-388.29895019531, 138.35575866699, 1132.1662597656))
        end
        if _G.SelectLocalTeleport == "Cafe" then
            toTarget(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
        end
        if _G.SelectLocalTeleport == "Sunflower Field" then
            toTarget(CFrame.new(-1576.7171630859, 198.61849975586, 13.725157737732))
        end
        if _G.SelectLocalTeleport == "Jeramy Mountain" then
            toTarget(CFrame.new(1986.3519287109, 448.95678710938, 796.70239257813))
        end
        if _G.SelectLocalTeleport == "Colossuem" then
            toTarget(CFrame.new(-1871.8974609375, 45.820514678955, 1359.6843261719))
        end
        if _G.SelectLocalTeleport == "Factory" then
            toTarget(CFrame.new(349.53750610352, 74.446998596191, -355.62420654297))
        end
        if _G.SelectLocalTeleport == "The Bridge" then
            toTarget(CFrame.new(-1860.6354980469, 88.384948730469, -1859.1593017578))
        end
        if _G.SelectLocalTeleport == "Green Bit" then
            toTarget(CFrame.new(-2202.3706054688, 73.097663879395, -2819.2687988281))
        end
        if _G.SelectLocalTeleport == "Graveyard" then
            toTarget(CFrame.new(-5617.5927734375, 492.22183227539, -778.3017578125))
        end
        if _G.SelectLocalTeleport == "Dark Area" then
            toTarget(CFrame.new(3464.7700195313, 13.375151634216, -3368.90234375))
        end
        if _G.SelectLocalTeleport == "Snow Mountain" then
            toTarget(CFrame.new(561.23834228516, 401.44781494141, -5297.14453125))
        end
        if _G.SelectLocalTeleport == "Hot Island" then
            toTarget(CFrame.new(-5505.9633789063, 15.977565765381, -5366.6123046875))
        end
        if _G.SelectLocalTeleport == "Cold Island" then
            toTarget(CFrame.new(-5924.716796875, 15.977565765381, -4996.427734375))
        end
        if _G.SelectLocalTeleport == "Ice Castle" then
            toTarget(CFrame.new(6111.7109375, 294.41259765625, -6716.4829101563))
        end
        if _G.SelectLocalTeleport == "Usopp's Island" then
            toTarget(CFrame.new(4760.4985351563, 8.3444719314575, 2849.2426757813))
        end
        if _G.SelectLocalTeleport == "inscription Island" then
            toTarget(CFrame.new(-5099.01171875, 98.241539001465, 2424.4035644531))
        end
        if _G.SelectLocalTeleport == "Forgotten Island" then
            toTarget(CFrame.new(-3051.9514160156, 238.87203979492, -10250.807617188))
        end
        if _G.SelectLocalTeleport == "Ghost Ship" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",
                Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
        end
    elseif World3 then
        if _G.SelectLocalTeleport == "Port Town" then
            toTarget(CFrame.new(-275.21615600586, 43.755737304688, 5451.0659179688))
        end
        if _G.SelectLocalTeleport == "Mansion" then
            local args = {
                [1] = "requestEntrance",
                [2] = Vector3.new(-12548.595703125, 337.17001342773, -7554.6103515625)
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
        if _G.SelectLocalTeleport == "Castle on the Sea" then
            local args = {
                [1] = "requestEntrance",
                [2] = Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875)
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
        if _G.SelectLocalTeleport == "Hydra Island" then
            toTarget(CFrame.new(5541.2685546875, 668.30456542969, 195.48069763184))
        end
        if _G.SelectLocalTeleport == "Gaint Tree" then
            toTarget(CFrame.new(2276.0859375, 25.87850189209, -6493.03125))
        end
        if _G.SelectLocalTeleport == "Haunted Castle" then
            toTarget(CFrame.new(-9515.07324, 142.130615, 5537.58398))
        end
        if _G.SelectLocalTeleport == "Icecream Island" then
            toTarget(CFrame.new(-880.894531, 118.245354, -11030.7607, -0.867174983, 1.48501234e-09, 0.498003572,
                2.70457789e-08, 1, 4.41129586e-08, -0.498003572, 5.1722548e-08, -0.867174983))
        end
        if _G.SelectLocalTeleport == "Peanut Island" then
            toTarget(CFrame.new(-2124.06738, 44.0723495, -10179.8281, -0.623125494, -2.55908191e-07, -0.782121837,
                -1.40530574e-07, 1, -2.15235005e-07, 0.782121837, -2.42063933e-08, -0.623125494))
        end
        if _G.SelectLocalTeleport == "Lab" then
            toTarget(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
        end
        if _G.SelectLocalTeleport == "Cake Loaf" then
            toTarget(CFrame.new(-1977.36767578125, 251.509521484375, -12380.4189453125))
        end
        if _G.SelectLocalTeleport == "TikiOutpost" then
            toTarget(CFrame.new(-16753.5977, 189.528107, 451.797333, -0.777145505, 0, -0.629321039, 0, 1, 0, 0.629321039, 0, -0.777145505))
        end
        end
    end

Tabs.Island:AddButton({
    Title = "Stop Teleport",
    Description = "",
    Callback = function()
        toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
})

Tabs.Island:AddButton({
    Title = "Teleport To Advanced Fruit Dealer",
    Description = "",
    Callback = function()
        toTarget(CFrame.new(game:GetService("Workspace").NPCs["Advanced Fruit Dealer"].Hair.Handle.Position))
    end
})

Tabs.Island:AddButton({
    Title = "Teleport To Legendary Sword Dealer",
    Description = "",
    Callback = function()
        toTarget(CFrame.new(game:GetService("Workspace").NPCs["Legendary Sword Dealer"].Hair.Handle.Position))
    end
})

Tabs.Island:AddButton({
    Title = "Teleport To Master of Enhancement",
    Description = "",
    Callback = function()
        toTarget(CFrame.new(game:GetService("Workspace").NPCs["Master of Enhancement"].Hair.Handle.Position))
    end
})

local StatusMirage = Tabs.Island:AddParagraph({
    Title = "Mirage Island",
    Content = "Status: "
})

task.spawn(function()
while task.wait() do
pcall(function()
    if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
       FullMoonStatus = "100%"
    elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
        FullMoonStatus = "75%"
    elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
        FullMoonStatus = "50%"
    elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
        FullMoonStatus = "25%"
    elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
        FullMoonStatus = "15%"
    else
        FullMoonStatus = "0%"
    end
end)
end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
            MirageStatus = "Found"
        else
            MirageStatus = 'Not Found'
         end
    end)
 end
end)


spawn(function()
    pcall(function()
        while wait() do
            StatusMirage:SetDesc("Mirage Island: "..MirageStatus.." | Full Moon: "..FullMoonStatus)
        end
    end)
end)

local MirageTpToggle = Tabs.Island:AddToggle("MirageTp_Toggle", {Title = "Auto Teleport To Mirage Island", Default = false })
Options.MirageTp_Toggle:SetValue(false)

MirageTpToggle:OnChanged(function(value)
    _G.Mirage = value
    _G.Settings.Mirage = value
    _G.AutoMirageIsland = value 
end)

spawn(function()
    pcall(function()
        while task.wait() do
            if _G.AutoMirageIsland or _G.Mirage then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    toTarget(workspace.Map.MysticIsland.PrimaryPart.CFrame * CFrame.new(0, 300, 0))
                end
            end
        end
    end)
end)

local GearToggle = Tabs.Island:AddToggle("GearTp_Toggle", {Title = "Teleport To Gear", Default = false })
Options.GearTp_Toggle:SetValue(false)

GearToggle:OnChanged(function(value)
    _G.Auto_Gear = value
end)

function BlueGear()
    if WS.Map:FindFirstChild("MysticIsland") then
        for r, v in pairs(game.workspace.Map.MysticIsland:GetChildren()) do
            if v:IsA("MeshPart") and v.MeshId == "rbxassetid://10153114969" then
                return v
            end
        end
    end
end

local GearBToggle = Tabs.Island:AddToggle("GearBTp_Toggle", {Title = "Teleport To Gear Blue", Default = false })
Options.GearBTp_Toggle:SetValue(false)

GearBToggle:OnChanged(function(value)
	_G.AutoTPBlue = value
end)
if _G.AutoTPBlue then
    if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
        for r, v in pairs(game.workspace.Map.MysticIsland:GetChildren()) do
            if v:IsA("MeshPart") and v.MeshId == "rbxassetid://10153114969" then
                toTarget(v.CFrame)
            end
        end
    end
end

task.spawn(function()
    while task.wait(.01) do
        if _G.Auto_Gear then
            for i,v in pairs(game:GetService("Workspace").Map:FindFirstChild('MysticIsland'):GetChildren()) do
                if v.Name == "Part" then
                    if v.ClassName == "MeshPart" then
                        toTarget(v.CFrame)
                        v.Transparency = 0
                    end
                end
            end
        end
    end
end)

local StatusKitsune = Tabs.Island:AddParagraph({
    Title = "Kistune Island",
    Content = ""
})

function UpdateKitsune()
    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
        StatusKitsune:SetDesc("Kitsune Island : Found")
    else
        StatusKitsune:SetDesc("Kitsune Island : Not Found")
     end
end

spawn(function()
    pcall(function()
        while wait() do
            UpdateKitsune()
        end
    end)
end)

local KitsuneToggle = Tabs.Island:AddToggle("KitsuneTp_Toggle", {Title = "Auto Teleports To Kitsune Island", Default = false })
Options.KitsuneTp_Toggle:SetValue(false)

KitsuneToggle:OnChanged(function(value)
    _G.TptoKisuneIsland = value
end)

local KitsuneShrineToggle = Tabs.Island:AddToggle("KitsuneShrineTp_Toggle", {Title = "Auto Teleports To Kitsune Shrine", Default = false })
Options.KitsuneShrineTp_Toggle:SetValue(false)

KitsuneShrineToggle:OnChanged(function(value)
    _G.TptoKisuneshrine = value
end)

spawn(function()
    while task.wait() do
        if _G.TptoKisuneshrine then
            toTarget(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0,0,10))
        end
    end
end)

spawn(function()
    while task.wait() do
        if _G.TptoKisuneIsland then
            toTarget(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonShrinePart.CFrame * CFrame.new(0,100,0))
        end
    end
end)

local AzureToggle = Tabs.Island:AddToggle("Azure_Toggle", {Title = "Auto Collect Azure Ember", Default = false })
Options.Azure_Toggle:SetValue(false)

AzureToggle:OnChanged(function(value)
    _G.GetAzureEmber = value
end)

spawn(function()
    while _G.GetAzureEmber do wait()
        pcall(function()
            if game.Workspace.EmberTemplate then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.EmberTemplate.Part.CFrame
            end
        end)
    end
end)

local SelectRaids = {
    "Flame",
    "Ice",
    "Quake",
    "Light",
    "Dark",
    "String",
    "Rumble",
    "Magma",
    "Human: Buddha",
    "Sand",
    "Bird: Phoenix",
    "Dough"
}

local SelectRaidSet = Tabs.Raid:AddDropdown("Dropdown4", {
    Title = "Select Chips",
    Values = SelectRaids,
    Multi = false,
    Default = 1,
})
SelectRaidSet:SetValue("Ice")

SelectRaidSet:OnChanged(function(value)
	_G.Select_Dungeon = value
	_G.Settings.Select_Dungeon = value
end)

local ChipsToggle = Tabs.Raid:AddToggle("Chips_Toggle", {Title = "Auto Buy Chips", Default = false })
Options.Chips_Toggle:SetValue(false)

ChipsToggle:OnChanged(function(value)
	_G.Auto_Buy_Chips_Dungeon = value    
	_G.Settings.Auto_Buy_Chips_Dungeon = value
end)

spawn(function()
	while wait() do
		if _G.Auto_Buy_Chips_Dungeon then
			pcall(function()
				local args = {
					[1] = "RaidsNpc",
					[2] = "Select",
					[3] = _G.Select_Dungeon
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
		end
	end
end)

local RaidToggle = Tabs.Raid:AddToggle("Raid_Toggle", {Title = "Auto Start Raid", Default = false })
Options.Raid_Toggle:SetValue(false)

RaidToggle:OnChanged(function(value)
	_G.Auto_Start_Dungeon = value  
	_G.Settings.Auto_Start_Dungeon = value
end)

spawn(function()
	while wait() do
		if _G.Auto_Start_Dungeon then
			pcall(function()
				if W2 then
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then 
							fireclickdetector(game.Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
						end
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						Vec("<Color=Yellow>The Dungeon Has Started<Color=/>") 
					end
				elseif W3 then
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then
							fireclickdetector(game.Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
						end
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						Vec("<Color=Yellow>The Dungeon Has Started<Color=/>") 
					end
				end
			end)
		end
	end
end)

local KillAuraToggle = Tabs.Raid:AddToggle("KillAura_Toggle", {Title = "Kill Aura", Default = false })
Options.KillAura_Toggle:SetValue(false)

KillAuraToggle:OnChanged(function(value)
	_G.Kill_Aura = value
	_G.Settings.Kill_Aura = value
end)

spawn(function()
	while wait() do
		if _G.Kill_Aura then
			for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
				if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					pcall(function()
						repeat wait(.1)
							v.Humanoid.Health = 0
							v.HumanoidRootPart.CanCollide = false
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						until not _G.Kill_Aura  or not v.Parent or v.Humanoid.Health <= 0
					end)
				end
			end
		end
	end
end)

local NextIslandToggle = Tabs.Raid:AddToggle("NextIsland_Toggle", {Title = "Auto Next Island", Default = false })
Options.NextIsland_Toggle:SetValue(false)

NextIslandToggle:OnChanged(function(value)
	_G.Auto_Next_Island = value  
	_G.Settings.Auto_Next_Island = value
end)

spawn(function()
	while wait() do
		if _G.Auto_Next_Island then
			if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true and game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame * CFrame.new(4, 65, 10))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame *  CFrame.new(4, 65, 10))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame * CFrame.new(4, 65, 10))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame * CFrame.new(4, 65, 10))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame * CFrame.new(4, 65, 10))
				end
			end
		end
	end
end)

local AwakenedToggle = Tabs.Raid:AddToggle("Awakened_Toggle", {Title = "Auto Awakened", Default = false })
Options.Awakened_Toggle:SetValue(false)

AwakenedToggle:OnChanged(function(value)
	_G.Auto_Awake = value 
	_G.Settings.Auto_Awake = value
end)

spawn(function()
	while wait(.1) do
		if _G.Auto_Awake then
			pcall(function()
				local args = {
					[1] = "Awakener",
					[2] = "Check"
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "Awakener",
					[2] = "Awaken"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
		end
	end
end)

if W2 then
Tabs.Raid:AddParagraph({
	Title = "Law Raid",
	Content = ""
})
	
local LawChipsToggle = Tabs.Raid:AddToggle("LawChips_Toggle", {Title = "Auto Buy Law Chip", Default = false })
Options.LawChips_Toggle:SetValue(false)

LawChipsToggle:OnChanged(function(value)
	_G.Auto_Buy_Law_Chip = value   
	_G.Settings.Auto_Buy_Law_Chip = value
end)

spawn(function()
	while wait() do
		if _G.Auto_Buy_Law_Chip then
			pcall(function()
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Workspace").Enemies:FindFirstChild("Order") or game:GetService("ReplicatedStorage"):FindFirstChild("Order") then

				else
					local args = {
						[1] = "BlackbeardReward",
						[2] = "Microchip",
						[3] = "2"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end)
		end
	end
end)

local LawRaidToggle = Tabs.Raid:AddToggle("LawRaid_Toggle", {Title = "Auto Start Law Raid", Default = false })
Options.LawRaid_Toggle:SetValue(false)

LawRaidToggle:OnChanged(function(value)
	_G.Auto_Start_Law_Dungeon = value    
	_G.Settings.Auto_Start_Law_Dungeon = value
end)

spawn(function()
	while wait() do
		if _G.Auto_Start_Law_Dungeon then
			pcall(function()
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
					fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
				end
			end)
		end
	end
end)

local KillLawRaidToggle = Tabs.Raid:AddToggle("KillLaw_Toggle", {Title = "Auto Kill Law", Default = false })
Options.KillLaw:SetValue(false)

KillLawRaidToggle:OnChanged(function(value)
	_G.Auto_Kill_Law = value 
	_G.Settings.Auto_Kill_Law = value
end)
spawn(function()
	while wait() do
		if _G.Auto_Kill_Law then
			pcall(function()
				if game:GetService("ReplicatedStorage"):FindFirstChild("Order") or game:GetService("Workspace").Enemies:FindFirstChild("Order") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if _G.Auto_Kill_Law and v.Name == "Order" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat task.wait()
								AutoHaki()
								EquipWeapon(_G.Select_Weapon)
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								getgenv().ToTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until not _G.Auto_Kill_Law or v.Humanoid.Health <= 0 or not v.Parent
						end
					end
				end 
			end)
		end
	end
end)
end

function LockMoon()
    local Lighting = game:GetService("Lighting")
    local Cam = game.Workspace.CurrentCamera
    local CFNew, CFAng = CFrame.new, CFrame.Angles
    local asin = math.asin
    
    local Camera = workspace.CurrentCamera
    local Player = game.Players.LocalPlayer
    local Character = Player.Character
    local Root = Character:WaitForChild("HumanoidRootPart")
    local Neck = Character:FindFirstChild("Neck", true)
    local YOffset = Neck.C0.Y
    game:GetService("RunService").RenderStepped:Connect(function()
    if _G.LockMoon then
        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
    
        local pos = Vector3.new(0, 0, 0)
        local lookAt = Lighting:GetMoonDirection()
        local cameraCFrame = CFrame.new(pos, lookAt)
        workspace.CurrentCamera.CFrame = cameraCFrame
        local CameraDirection = Root.CFrame:toObjectSpace(cameraCFrame).lookVector.unit
        if Neck and Lock then
            Neck.C0 = CFNew(0, YOffset, 0) * CFAng(0, -asin(CameraDirection.x), 0) * CFAng(asin(CameraDirection.y), 0, 0)
        end
    else
        Cam.FieldOfView = 70
    end
    end)
end

LockMoon()

local LockMoonToggle = Tabs.RaceV4:AddToggle("LockMoon_Toggle", {Title = "Lock Moon", Default = false })
Options.LockMoon_Toggle:SetValue(false)

LockMoonToggle:OnChanged(function(value)
    _G.LockMoon = value
end)

Tabs.RaceV4:AddButton({
    Title = "Teleport To Top Great Tree",
    Description = "",
    Callback = function()
        toTarget(CFrame.new(2947.556884765625, 2281.630615234375, -7213.54931640625))
    end
})

Tabs.RaceV4:AddButton({
    Title = "Teleport To Timple Of Time",
    Description = "",
    Callback = function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875,14895.3017578125, 102.62469482421875)
    end
})

Tabs.RaceV4:AddButton({
    Title = "Teleport To Lever Pull",
    Description = "",
    Callback = function()
        toTarget(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end
})

Tabs.RaceV4:AddButton({
    Title = "Teleport To Acient One",
    Description = "",
    Callback = function()
        toTarget(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
    end
})

Tabs.RaceV4:AddButton({
    Title = "Unlock Lever",
    Description = "",
    Callback = function()
        if game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt:FindFirstChild("ProximityPrompt") then
            game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt:FindFirstChild("ProximityPrompt"):Remove()
        else
        end
        wait(0.1)
        local ProximityPrompt = Instance.new("ProximityPrompt")
        ProximityPrompt.Parent = game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt
        ProximityPrompt.MaxActivationDistance = 10
        ProximityPrompt.ActionText = "Secrets Beholds Inside"
        ProximityPrompt.ObjectText = "An unknown lever of time"
        function onProximity()
            local part = game:GetService("Workspace").Map["Temple of Time"].MainDoor1
            local TweenService = game:GetService("TweenService")
            local startPosition = part.Position
            local endPosition = startPosition + Vector3.new(0, -50, 0)
            local tweenInfo = TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
            local tween = TweenService:Create(part, tweenInfo, { Position = endPosition })
            tween:Play()
            local partnew = game:GetService("Workspace").Map["Temple of Time"].MainDoor2
            local TweenService = game:GetService("TweenService")
            local startPosition = partnew.Position
            local endPosition = startPosition + Vector3.new(0, -50, 0)
            local tweenInfo = TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
            local tween = TweenService:Create(partnew, tweenInfo, { Position = endPosition })
            tween:Play()
            local SoundSFX = Instance.new("Sound")
            SoundSFX.Parent = workspace
            SoundSFX.SoundId = "rbxassetid://1904813041"
            SoundSFX:Play()
            SoundSFX.Name = "POwfpxzxzfFfFF"
            game:GetService("Workspace").Map["Temple of Time"].Lever.Prompt:FindFirstChild("ProximityPrompt"):Remove()
            wait(5)
            workspace:FindFirstChild("POwfpxzxzfFfFF"):Remove()
            game:GetService("Workspace").Map["Temple of Time"].NoGlitching:Remove()
            game:GetService("Workspace").Map["Temple of Time"].NoGlitching:Remove()
            game:GetService("Workspace").Map["Temple of Time"].NoGlitching:Remove()
        end
        ProximityPrompt.Triggered:Connect(onProximity)
    end
})


Tabs.RaceV4:AddButton({
    Title = "Teleport Cyborg Door",
    Description = "",
    Callback = function()
        toTarget(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
    end
})

Tabs.RaceV4:AddButton({
    Title = "Teleport Fish Door",
    Description = "",
    Callback = function()
        toTarget(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
    end
})

Tabs.RaceV4:AddButton({
    Title = "Teleport Ghoul Door",
    Description = "",
    Callback = function()
        toTarget(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
    end
})

Tabs.RaceV4:AddButton({
    Title = "Teleport Human Door",
    Description = "",
    Callback = function()
        toTarget(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
    end
})

Tabs.RaceV4:AddButton({
    Title = "Teleport Mink Door",
    Description = "",
    Callback = function()
        toTarget(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
    end
})

Tabs.RaceV4:AddButton({
    Title = "Teleport Sky Door",
    Description = "",
    Callback = function()
        toTarget(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
    end
})

Tabs.RaceV4:AddButton({
    Title = "Complete Angel Trial",
    Description = "",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.SkyTrial.Model.FinishPart.CFrame
    end
})

Tabs.RaceV4:AddButton({
    Title = "Complete Rabbit Trial",
    Description = "",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.MinkTrial.Ceiling.CFrame * CFrame.new(0, -5, 0)
    end
})

Tabs.RaceV4:AddButton({
    Title = "Complete Cyborg Trial",
    Description = "",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 300, 0)
    end
})

Tabs.RaceV4:AddButton({
    Title = "Teleport PVP Zone",
    Description = "",
    Callback = function()
        toTarget(CFrame.new(28766.681640625, 14967.1455078125, -164.13290405273438))
    end
})

Tabs.RaceV4:AddButton({
    Title = "Teleport To Safe Zone PVP",
    Description = "",
    Callback = function()
        toTarget(CFrame.new(28273.0859375, 14896.5078125, 157.42063903808594))
    end
})

FruitList = {
    "Bomb-Bomb",
    "Spike-Spike",
    "Chop-Chop",
    "Spring-Spring",
    "Kilo-Kilo",
    "Spin-Spin",
    "Bird: Falcon",
    "Smoke-Smoke",
    "Flame-Flame",
    "Ice-Ice",
    "Sand-Sand",
    "Dark-Dark",
    "Revive-Revive",
    "Diamond-Diamond",
    "Light-Light",
    "Love-Love",
    "Rubber-Rubber",
    "Barrier-Barrier",
    "Magma-Magma",
    "Door-Door",
    "Quake-Quake",
    "Human-Human: Buddha",
    "String-String",
    "Bird-Bird: Phoenix",
    "Rumble-Rumble",
    "Paw-Paw",
    "Gravity-Gravity",
    "Dough-Dough",
    "Venom-Venom",
    "Shadow-Shadow",
    "Control-Control",
    "Soul-Soul",
    "Dragon-Dragon"
}

local FruitListSet = Tabs.Fruit:AddDropdown("Dropdown5", {
    Title = "Select Fruit Sniper",
    Values = FruitList,
    Multi = false,
    Default = 1,
})

FruitListSet:SetValue("Dragon-Dragon")

FruitListSet:OnChanged(function(value)
    _G.SelectFruit = value
end)

local SniperFruitToggle = Tabs.Fruit:AddToggle("SniperFruit_Toggle", {Title = "Auto Buy Fruit Sniper", Default = false })
Options.SniperFruit_Toggle:SetValue(false)

SniperFruitToggle:OnChanged(function(value)
    _G.AutoBuyFruitSniper = value
end)

Tabs.Fruit:AddParagraph({
    Title = "Fruit",
    Content = ""
})

local FruitList1Set = Tabs.Fruit:AddDropdown("Dropdown6", {
    Title = "Select Fruit",
    Values = FruitList,
    Multi = false,
    Default = 1,
})

FruitList1Set:SetValue("Soul-Soul")

FruitList1Set:OnChanged(function(value)
    _G.SelectFruitEat = value
end)

local EatFruitToggle = Tabs.Fruit:AddToggle("EatFruit_Toggle", {Title = "Auto Eat Fruit", Default = false })
Options.EatFruit_Toggle:SetValue(false)

EatFruitToggle:OnChanged(function(value)
    _G.AutoEatFruit = value
end)

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.AutoEatFruit then
                game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer()
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.AutoBuyFruitSniper then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.SelectFruit)
            end 
        end
    end)
end)

local GetInventoryFruitToggle = Tabs.Fruit:AddToggle("GetInventoryFruit_Toggle", {Title = "Get Fruit Inventory", Default = false })
Options.GetInventoryFruit_Toggle:SetValue(false)

GetInventoryFruitToggle:OnChanged(function(value)
    _G.Get_Fruit = value
end)

spawn(function()
    while wait(.5) do
        pcall(function()
            if _G.Get_Fruit then
                if Inventory_Fruit then
                    Inventory_Fruit = nil
                end
                fruit = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
                for i,v in pairs(fruit) do
                    if v["Price"] < 10000000 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v["Name"])
                    end
                end
			else
				wait(2)
            end
        end)
    end
end)

local Random_AutoToggle = Tabs.Fruit:AddToggle("Random_Auto_Toggle", {Title = "Auto Random Fruit", Default = false })
Options.Random_Auto_Toggle:SetValue(false)

Random_AutoToggle:OnChanged(function(value)
    _G.Random_Auto = value
end)

local AutoStoreToggle = Tabs.Fruit:AddToggle("AutoStoreFruit_Toggle", {Title = "Auto Store Fruit", Default = false })
Options.AutoStoreFruit_Toggle:SetValue(false)

AutoStoreToggle:OnChanged(function(value)
    _G.AutoStoreFruit = value
end)


spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Random_Auto then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end 
        end
    end)
end)

for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
    if v:IsA("Tool") and string.find(v.Name,"Fruit") then 
        NameFruit = v.Name 
    end
end

spawn(function()
	pcall(function()
		while wait(.1) do
			if _G.AutoStoreFruit then
				for i,v in pairs(NameFruit) do
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v)
				end
			end
		end
	end)
end)

local ESPPlrToggle = Tabs.ESP:AddToggle("ESPPlr_Toggle", {Title = "ESP Player", Default = false })
Options.ESPPlr_Toggle:SetValue(false)

ESPPlrToggle:OnChanged(function(value)
    ESPPlayer = value
end)

local ESPChestToggle = Tabs.ESP:AddToggle("ESPChest_Toggle", {Title = "ESP Chest", Default = false })
Options.ESPChest_Toggle:SetValue(false)

ESPChestToggle:OnChanged(function(value)
    ChestESP = value
end)

local ESPFruitDToggle = Tabs.ESP:AddToggle("ESPFruitD_Toggle", {Title = "ESP Devil Fruit", Default = false })
Options.ESPFruitD_Toggle:SetValue(false)

ESPFruitDToggle:OnChanged(function(value)
    DevilFruitESP = value
end)

local ESPFlowerDToggle = Tabs.ESP:AddToggle("ESPFlower_Toggle", {Title = "ESP Flower", Default = false })
Options.ESPFlower_Toggle:SetValue(false)

ESPFlowerDToggle:OnChanged(function(value)
    FlowerESP = value
end)

local ESPIslandToggle = Tabs.ESP:AddToggle("ESPIsland_Toggle", {Title = "ESP Island", Default = false })
Options.ESPIsland_Toggle:SetValue(false)

ESPIslandToggle:OnChanged(function(value)
    IslandESP = value
end)

spawn(function()
    while wait() do
        if IslandESP then
            UpdateIslandESP()
        end
    end
end)

spawn(function()
    while wait() do
        if FlowerESP then
            UpdateFlowerEsp()
        end
    end
end)

spawn(function()
    while wait() do
        if DevilFruitESP then
            UpdateBfEsp()
        end
    end
end)


spawn(function()
    while wait() do
        if ChestESP then
            UpdateChestEsp()
        end
    end
end)

spawn(function()
    while wait() do
        if ESPPlayer then
            UpdatePlayerChams()
        end
    end
end)

loadstring(game:HttpGet("https://pastebin.com/raw/igskZDq5"))()

Tabs.Misc:AddButton({
    Title = "Hop Server",
    Description = "",
    Callback = function()
        Teleport()
    end
})

Tabs.Misc:AddButton({
    Title = "Hop Low Player Server",
    Description = "",
    Callback = function()
        Hop()
    end
})

Tabs.Misc:AddButton({
    Title = "Rejoin Server",
    Description = "",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end
})

Tabs.Misc:AddParagraph({
    Title = "Miscellaneous Team",
    Content = ""
})

Tabs.Misc:AddButton({
    Title = "Join Pirates Team",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates") 
    end
})

Tabs.Misc:AddButton({
    Title = "Join Marines Team",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines") 
    end
})

Tabs.Misc:AddParagraph({
    Title = "Miscellaneous",
    Content = ""
})

Tabs.Misc:AddButton({
    Title = "Redeem Code [All]",
    Description = "",
    Callback = function()
        UseCode()
    end
})

function UseCode(Text)
    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
end

UseCode("NEWTROLL")
UseCode("KITT_RESET")
UseCode("SUB2OFFICIALNOOBIE")
UseCode("AXIORE")
UseCode("BIGNEWS")
UseCode("BLUXXY")
UseCode("CHANDLER")
UseCode("ENYU_IS_PRO")
UseCode("FUDD10")
UseCode("FUDD10_V2")
UseCode("JCWK")
UseCode("KITTGAMING")
UseCode("MAGICBUS")
UseCode("STARCODEHEO")
UseCode("STRAWHATMAINE")
UseCode("SUB2CAPTAINMAUI")
UseCode("SUB2DAIGROCK")
UseCode("SUB2FER999")
UseCode("SUB2GAMERROBOT_EXP1")
UseCode("SUB2GAMERROBOT_RESET1")
UseCode("SUB2NOOBMASTER123")
UseCode("SUB2UNCLEKIZARU")
UseCode("TANTAIGAMING")
UseCode("THEGREATACE")

Tabs.Misc:AddButton({
    Title = "Devil Shop",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
    end
})

Tabs.Misc:AddButton({
    Title = "Color Haki",
    Description = "",
    Callback = function()
        game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
    end
})

Tabs.Misc:AddButton({
    Title = "Title Name",
    Description = "",
    Callback = function()
        local args = {
            [1] = "getTitles"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
    end
})

Tabs.Misc:AddButton({
    Title = "Awakening",
    Description = "",
    Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
    end
})

Tabs.Misc:AddButton({
    Title = "Remove Fog",
    Description = "",
    Callback = function()
        game:GetService("Lighting").LightingLayers:Destroy()
	    game:GetService("Lighting").Sky:Destroy()
    end
})

Tabs.Misc:AddButton({
    Title = "ClockTime Day",
    Description = "",
    Callback = function()
        game:GetService("RunService").Heartbeat:wait() do
        game:GetService("Lighting").ClockTime = 12
        end
    end
})

local WalkOnWaterToggle = Tabs.Misc:AddToggle("WalkOnWater_Toggle", {Title = "Walk On Water", Default = true })
Options.WalkOnWater_Toggle:SetValue(true)

WalkOnWaterToggle:OnChanged(function(value)
    _G.WalkWater = value
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.WalkWater then
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
            else
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
            end
        end)
    end
end)

function InfAbility()
    if _G.InfAbility then
        if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0, 0, 0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0.2, 0.2)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0),
                NumberSequenceKeypoint.new(1, 4),
            }
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(999, 9999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(360, 360)
            inf.Texture = "rbxassetid://243098098"
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0, 255, 255), Color3.fromRGB(0, 255, 255))
            inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        end
    else
        if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end
end

function DodgeNoCoolDown()
    if _G.NoDashCooldown then
        for i, v in next, getgc() do
            if game.Players.LocalPlayer.Character.Dodge then
                if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
                    for i2, v2 in next, getupvalues(v) do
                        if tostring(v2) == "0.4" then
                            repeat
                                wait(.1)
                                setupvalue(v, i2, 0)
                            until not _G.NoDashCooldown
                        end
                    end
                end
            end
        end
    end
end
function SkyJumpNoCoolDown()
    if _G.InfinitiesSkyJump then
        for i, v in next, getgc() do
            if game.Players.LocalPlayer.Character.Geppo then
                if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Geppo then
                    for i2, v2 in next, getupvalues(v) do
                        if tostring(v2) == "0" then
                            repeat
                                wait(.1)
                                setupvalue(v, i2, 0)
                            until not _G.InfinitiesSkyJump
                        end
                    end
                end
            end
        end
    end
end
DodgeNoCoolDown()
InfAbility()
SkyJumpNoCoolDown()
local infinityAbilityToggle = Tabs.Misc:AddToggle("infinityAbility_Toggle", {Title = "infinity Ability", Default = false })
Options.infinityAbility_Toggle:SetValue(false)

infinityAbilityToggle:OnChanged(function(value)
    _G.InfAbility = value
end)

local NoDashCooldownToggle = Tabs.Misc:AddToggle("NoDashCooldown_Toggle", {Title = "No Dash Cooldown", Default = false })
Options.NoDashCooldown_Toggle:SetValue(false)

NoDashCooldownToggle:OnChanged(function(value)
    _G.NoDashCooldown = value
end)

local infGeppoToggle = Tabs.Misc:AddToggle("infGeppo_Toggle", {Title = "Infinities Geppo", Default = false })
Options.infGeppo_Toggle:SetValue(false)

infGeppoToggle:OnChanged(function(value)
    _G.InfinitiesSkyJump = value
end)

local infEnergyToggle = Tabs.Misc:AddToggle("infEnergy_Toggle", {Title = "Infinities Energy", Default = false })
Options.infEnergy_Toggle:SetValue(false)

infEnergyToggle:OnChanged(function(value)
	InfinitsEnergy = value
end)

local LocalPlayer = game:GetService'Players'.LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function infinitestam()
LocalPlayer.Character.Energy.Changed:connect(function()
	if InfinitsEnergy then
		LocalPlayer.Character.Energy.Value = originalstam
	end 
end)
end
spawn(function()
while wait(.1) do
	if InfinitsEnergy then
		wait(0.3)
		originalstam = LocalPlayer.Character.Energy.Value
		infinitestam()
	end
end
end)

Tabs.Visual:AddButton({
    Title = "Rain Fruit",
    Description = "",
    Callback = function()
        for i, v in pairs(game:GetObjects("rbxassetid://14759368201")[1]:GetChildren()) do
            v.Parent = game.Workspace.Map
            v:MoveTo(game.Players.LocalPlayer.Character.PrimaryPart.Position + Vector3.new(math.random(-50, 50), 100, math.random(-50, 50)))
            if v.Fruit:FindFirstChild("AnimationController") then
                v.Fruit:FindFirstChild("AnimationController"):LoadAnimation(v.Fruit:FindFirstChild("Idle")):Play()
            end
            v.Handle.Touched:Connect(function(otherPart)
                if otherPart.Parent == game.Players.LocalPlayer.Character then
                    v.Parent = game.Players.LocalPlayer.Backpack
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                end
            end)
        end
    end
})

Tabs.Visual:AddButton({
    Title = "Instant Level/Beli/EXP",
    Description = "",
    Callback = function()
        local plr = game:GetService("Players").LocalPlayer
        local Notification = require(game:GetService("ReplicatedStorage").Notification)
        local Data = plr:WaitForChild("Data")
        local EXPFunction = require(game.ReplicatedStorage:WaitForChild("EXPFunction"))
        local LevelUp = require(game:GetService("ReplicatedStorage").Effect.Container.LevelUp)
        local Sound = require(game:GetService("ReplicatedStorage").Util.Sound)
        local LevelUpSound = game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy") or game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp")
        function v129(p15)
            local v130 = p15;
            while true do
                local v131, v132 = string.gsub(v130, "^(-?%d+)(%d%d%d)", "%1,%2");
                v130 = v131;
                if v132 == 0 then
                    break;
                end;    
            end;
            return v130;
        end;
        
        Notification.new("<Color=Yellow>QUEST COMPLETED!<Color=/>"):Display()
        Notification.new("Earned <Color=Yellow>9,999,999,999,999 Exp.<Color=/> (+ None)"):Display()
        Notification.new("Earned <Color=Green>$9,999,999,999,999<Color=/>"):Display()
        plr.Data.Exp.Value = 999999999999
        plr.Data.Beli.Value = plr.Data.Beli.Value + 999999999999
        
        delay = 0
        count = 0
        while plr.Data.Exp.Value - EXPFunction(Data.Level.Value) > 0 do
            plr.Data.Exp.Value = plr.Data.Exp.Value - EXPFunction(Data.Level.Value)
            plr.Data.Level.Value = plr.Data.Level.Value + 1
            plr.Data.Points.Value = plr.Data.Points.Value + 3
            LevelUp({ plr })
            Sound.Play(Sound, LevelUpSound.Value)
            Notification.new("<Color=Green>LEVEL UP!<Color=/> (" .. plr.Data.Level.Value .. ")"):Display()
            count = count + 1
            if count >= 5 then
                delay = tick()
                count = 0
                wait(2)
            end
        end
    end
})

Tabs.Visual:AddInput("Input_Level", {
    Title = "Level",
    Default = "",
    Placeholder = "input",
    Numeric = false, 
    Finished = false,
    Callback = function(value)
        game:GetService("Players")["LocalPlayer"].Data.Level.Value = tonumber(value)
    end
})

Tabs.Visual:AddInput("Input_EXP", {
    Title = "EXP",
    Default = "",
    Placeholder = "input",
    Numeric = false, 
    Finished = false,
    Callback = function(value)
        game:GetService("Players")["LocalPlayer"].Data.Exp.Value = tonumber(value)
    end
})

Tabs.Visual:AddInput("Input_Beli", {
    Title = "Beli",
    Default = "",
    Placeholder = "input",
    Numeric = false, 
    Finished = false,
    Callback = function(value)
        game:GetService("Players")["LocalPlayer"].Data.Beli.Value = tonumber(value)
    end
})

Tabs.Visual:AddInput("Input_Fragments", {
    Title = "Fragments",
    Default = "",
    Placeholder = "input",
    Numeric = false, 
    Finished = false,
    Callback = function(value)
        game:GetService("Players")["LocalPlayer"].Data.Fragments.Value = tonumber(value)
    end
})

Tabs.Visual:AddInput("Input_Health", {
    Title = "Health",
    Default = "",
    Placeholder = "input",
    Numeric = false, 
    Finished = false,
    Callback = function(value)
        game:GetService("Players")["LocalPlayer"].Data.Health.Value = tonumber(value)
    end
})

Tabs.Visual:AddInput("Input_Energy", {
    Title = "Energy",
    Default = "",
    Placeholder = "input",
    Numeric = false, 
    Finished = false,
    Callback = function(value)
        game:GetService("Players")["LocalPlayer"].Data.Energy.Value = tonumber(value)
    end
})

Tabs.Visual:AddInput("Input_Melee", {
    Title = "Melee Stats",
    Default = "",
    Placeholder = "input",
    Numeric = false, 
    Finished = false,
    Callback = function(value)
        game:GetService("Players")["LocalPlayer"].Data.Stats.Melee.Level.Value = tonumber(value)
    end
})

Tabs.Visual:AddInput("Input_Defense", {
    Title = "Defense Stats",
    Default = "",
    Placeholder = "input",
    Numeric = false, 
    Finished = false,
    Callback = function(value)
        game:GetService("Players")["LocalPlayer"].Data.Stats.Defense.Level.Value = tonumber(value)
    end
})

Tabs.Visual:AddInput("Input_Sword", {
    Title = "Sword Stats",
    Default = "",
    Placeholder = "input",
    Numeric = false, 
    Finished = false,
    Callback = function(value)
        game:GetService("Players")["LocalPlayer"].Data.Stats.Sword.Level.Value = tonumber(value)
    end
})

Tabs.Visual:AddInput("Input_Gun", {
    Title = "Gun Stats",
    Default = "",
    Placeholder = "input",
    Numeric = false, 
    Finished = false,
    Callback = function(value)
        game:GetService("Players")["LocalPlayer"].Data.Stats.Gun.Level.Value = tonumber(value)
    end
})

local BypassACToggle = Tabs.Settings:AddToggle("BypassAC_Toggle", {Title = "Bypass Anti-Cheat: Anti Flag", Default = true })
Options.BypassAC_Toggle:SetValue(true)

BypassACToggle:OnChanged(function(value)
    _G.AntiFlagReset = value
end)

spawn(function()
    while wait(2000) do
        if _G.AntiFlagReset then
            pcall(function()
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
        end)
    end
   end
end)

spawn(function()
    while _G.AntiFlagReset do task.wait()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            local HealthPercent = game.Players.LocalPlayer.Character.Humanoid.Health / game.Players.LocalPlayer.Character.Humanoid.MaxHealth * 100
            if HealthPercent < 50 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 100, 0)
            end
        end
        task.wait()
    end
end)

local Players = game:GetService("Players")

local function onCharacterAdded(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.Died:Connect(function()
        humanoid.Health = 0
    end)
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(onCharacterAdded)
end)

for _, player in ipairs(Players:GetPlayers()) do
    if player.Character then
        onCharacterAdded(player.Character)
    end
end


local AutoHakiToggle = Tabs.Settings:AddToggle("AutoHaki_Toggle", {Title = "Auto Haki", Default = true })
Options.AutoHaki_Toggle:SetValue(true)

AutoHakiToggle:OnChanged(function(value)
    _G.AutoHaki = value
end)

task.spawn(function()
    while task.wait() do
    pcall(function()
        if _G.AutoHaki then
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            end
        end
    end)
    end
end)

local AutoKenToggle = Tabs.Settings:AddToggle("AutoKen_Toggle", {Title = "Auto Ken", Default = false })
Options.AutoKen_Toggle:SetValue(false)

AutoKenToggle:OnChanged(function(value)
    _G.AutoKen = value
end)

spawn(function()
    while task.wait() do
    pcall(function()
        if _G.AutoKen then  
            if game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui") and game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
            else
                wait(1)
                game:service('VirtualUser'):CaptureController()
                game:service('VirtualUser'):SetKeyDown('0x65')
                wait(2)
                game:service('VirtualUser'):SetKeyUp('0x65')
            end
        end
    end)
    end
end)

local BringMobToggle = Tabs.Settings:AddToggle("BringMob_Toggle", {Title = "Bring Mob", Default = true })
Options.BringMob_Toggle:SetValue(true)

BringMobToggle:OnChanged(function(value)
    _G.BringMob = value
	_G.Brimob = value
	_G.Settings.Brimob = value
end)

function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
			return true
		end
		return false
	end
end
spawn(function()
	while true do wait()
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end
	end
end)
spawn(function()
	while task.wait() do
		pcall(function()
			if _G.Brimob and _G.BringMob then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 200 then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosMon
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.Transparency = 1
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							v.Humanoid:ChangeState(11)
							v.Humanoid:ChangeState(14)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
						end
					end
				end
			end
		end)
	end
end)
spawn(function()
	while wait() do
		pcall(function()
			if _G.Brimob and _G.BringMob then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == QuestCheck()[3] and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 200 then
						v.HumanoidRootPart.CFrame = PosMon
						v.HumanoidRootPart.Size = Vector3.new(60,60,60)
						v.HumanoidRootPart.Transparency = 1
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						v.HumanoidRootPart.CanCollide = false
						v.Head.CanCollide = false
						v.Humanoid:ChangeState(11)
						v.Humanoid:ChangeState(14)
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end
		end)
	end
end)

local RemoveDamageToggle = Tabs.Settings:AddToggle("RemoveDamage_Toggle", {Title = "Remove Damage Text", Default = false })
Options.RemoveDamage_Toggle:SetValue(false)

RemoveDamageToggle:OnChanged(function(value)
    Removetext = value
end)

local RemoveNotifyToggle = Tabs.Settings:AddToggle("RemoveNotify_Toggle", {Title = "Remove Notify", Default = false })
Options.RemoveNotify_Toggle:SetValue(false)

RemoveNotifyToggle:OnChanged(function(value)
    RemoveNotify = value
end)

spawn(function()
    while wait() do
        if RemoveNotify then
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
        else
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
        end
    end
end)

spawn(function()
    while wait() do
        if Removetext then
            game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
        else
            game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
        end
    end
end)

local WhiteToggle = Tabs.Settings:AddToggle("White_Toggle", {Title = "White Screen", Default = false })
Options.White_Toggle:SetValue(false)

WhiteToggle:OnChanged(function(value)
    _G.WhiteScreen = value
    if _G.WhiteScreen == true then
     game:GetService("RunService"):Set3dRenderingEnabled(false)
 elseif _G.WhiteScreen == false then
     game:GetService("RunService"):Set3dRenderingEnabled(true)
    end
end)
end