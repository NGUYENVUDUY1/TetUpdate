
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/rblx/main/FixedFluent.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Hiru Hub",
    SubTitle = "Version Beta 5⁵ | By Nguyen Vu Duy ",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 320),
    Acrylic = false,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.End
})
local Tabs = {
    home = Window:AddTab({ Title = "Tab Profile", Icon = "activity" }),
    Main = Window:AddTab({ Title = "Tab Main Farm", Icon = "home" }),
    Setting = Window:AddTab({ Title = "Tab Setting", Icon = "settings" }),
    Status = Window:AddTab({ Title = "Sever Status", Icon = "user" }),
    ST = Window:AddTab({ Title = "Tab Stats", Icon = "plus-circle" }),
    Player = Window:AddTab({ Title = "Tab Player", Icon = "baby" }),
    Teleport = Window:AddTab({ Title = "Tab Teleport", Icon = "palmtree" }),
    Fruit = Window:AddTab({ Title = "Tab Fruit blox Esp", Icon = "apple" }),
    Raid = Window:AddTab({ Title = "Tab Dungeon", Icon = "swords" }),
    Race = Window:AddTab({ Title = "Tab Race V4", Icon = "clock" }),
    Shop = Window:AddTab({ Title = "Tab Shop", Icon = "shopping-cart" }),
	Misc = Window:AddTab({ Title = "Tab Miscellaneous", Icon = "list-plus" }),
    Hop = Window:AddTab({ Title = "Tab Hop", Icon = "wifi" }),
}
local Options = Fluent.Options
do

local id = game.PlaceId
if id == 2753915549 then First_Sea = true; elseif id == 4442272183 then Second_Sea = true; elseif id == 7449423635 then Third_Sea = true; else game:Shutdown() end;

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

loadstring(game:HttpGet("https://raw.githubusercontent.com/NGUYENVUDUY1/Opfile/main/Ch%C6%B0a%20c%C3%B3%20ti%C3%AAu%20%C4%91%E1%BB%81.txt"))()

--// Select Monster
if First_Sea then
tableMon = {
  "Bandit","Monkey","Gorilla","Pirate","Brute","Desert Bandit","Desert Officer","Snow Bandit","Snowman","Chief Petty Officer","Sky Bandit","Dark Master","Prisoner", "Dangerous Prisoner","Toga Warrior","Gladiator","Military Soldier","Military Spy","Fishman Warrior","Fishman Commando","God's Guard","Shanda","Royal Squad","Royal Soldier","Galley Pirate","Galley Captain"
} elseif Second_Sea then
tableMon = {
  "Raider","Mercenary","Swan Pirate","Factory Staff","Marine Lieutenant","Marine Captain","Zombie","Vampire","Snow Trooper","Winter Warrior","Lab Subordinate","Horned Warrior","Magma Ninja","Lava Pirate","Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Arctic Warrior","Snow Lurker","Sea Soldier","Water Fighter"
} elseif Third_Sea then
tableMon = {
  "Pirate Millionaire","Dragon Crew Warrior","Dragon Crew Archer","Female Islander","Giant Islander","Marine Commodore","Marine Rear Admiral","Fishman Raider","Fishman Captain","Forest Pirate","Mythological Pirate","Jungle Pirate","Musketeer Pirate","Reborn Skeleton","Living Zombie","Demonic Soul","Posessed Mummy", "Peanut Scout", "Peanut President", "Ice Cream Chef", "Ice Cream Commander", "Cookie Crafter", "Cake Guard", "Baking Staff", "Head Baker", "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief", "Candy Rebel", "Candy Pirate", "Snow Demon","Isle Outlaw","Island Boy","Isle Champion"
}
end

--// Select Island
if First_Sea then
AreaList = {
  'Jungle', 'Buggy', 'Desert', 'Snow', 'Marine', 'Sky', 'Prison', 'Colosseum', 'Magma', 'Fishman', 'Sky Island', 'Fountain'
} elseif Second_Sea then
AreaList = {
  'Area 1', 'Area 2', 'Zombie', 'Marine', 'Snow Mountain', 'Ice fire', 'Ship', 'Frost', 'Forgotten'
} elseif Third_Sea then
AreaList = {
  'Pirate Port', 'Amazon', 'Marine Tree', 'Deep Forest', 'Haunted Castle', 'Nut Island', 'Ice Cream Island', 'Cake Island', 'Choco Island', 'Candy Island','Tiki Outpost'
}
end

--// Check Boss Quest
function CheckBossQuest()
if First_Sea then
if SelectBoss == "The Gorilla King" then
BossMon = "The Gorilla King"
NameBoss = 'The Gorrila King'
NameQuestBoss = "JungleQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$2,000\n7,000 Exp."
CFrameQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
CFrameBoss = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, -0.707134247)
elseif SelectBoss == "Bobby" then
BossMon = "Bobby"
NameBoss = 'Bobby'
NameQuestBoss = "BuggyQuest1"
QuestLvBoss = 3
RewardBoss = "Reward:\n$8,000\n35,000 Exp."
CFrameQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
CFrameBoss = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
elseif SelectBoss == "The Saw" then
BossMon = "The Saw"
NameBoss = 'The Saw'
CFrameBoss = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
elseif SelectBoss == "Yeti" then
BossMon = "Yeti"
NameBoss = 'Yeti'
NameQuestBoss = "SnowQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$10,000\n180,000 Exp."
CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
elseif SelectBoss == "Mob Leader" then
BossMon = "Mob Leader"
NameBoss = 'Mob Leader'
CFrameBoss = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
elseif SelectBoss == "Vice Admiral" then
BossMon = "Vice Admiral"
NameBoss = 'Vice Admiral'
NameQuestBoss = "MarineQuest2"
QuestLvBoss = 2
RewardBoss = "Reward:\n$10,000\n180,000 Exp."
CFrameQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
CFrameBoss = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
elseif SelectBoss == "Saber Expert" then
NameBoss = 'Saber Expert'
BossMon = "Saber Expert"
CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564)
elseif SelectBoss == "Warden" then
BossMon = "Warden"
NameBoss = 'Warden'
NameQuestBoss = "ImpelQuest"
QuestLvBoss = 1
RewardBoss = "Reward:\n$6,000\n850,000 Exp."
CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, -4.49946401e-06, 0.975376427, -1.95412576e-05, 1, 9.03162072e-06, -0.975376427, -2.10519756e-05, 0.220546961)
CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
elseif SelectBoss == "Chief Warden" then
BossMon = "Chief Warden"
NameBoss = 'Chief Warden'
NameQuestBoss = "ImpelQuest"
QuestLvBoss = 2
RewardBoss = "Reward:\n$10,000\n1,000,000 Exp."
CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749, 0.00191645394, 0.999998152, -2.80422337e-05, -0.939682961, 0.00181045406, 0.342041939)
CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
elseif SelectBoss == "Swan" then
BossMon = "Swan"
NameBoss = 'Swan'
NameQuestBoss = "ImpelQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$15,000\n1,600,000 Exp."
CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, 0, 0.951042235, 0, 1, 0, -0.951042235, 0, -0.309060812)
CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, 0, 0.681965172, 0, 1, 0, -0.681965172, 0, -0.731384635)
elseif SelectBoss == "Magma Admiral" then
BossMon = "Magma Admiral"
NameBoss = 'Magma Admiral'
NameQuestBoss = "MagmaQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$15,000\n2,800,000 Exp."
CFrameQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
CFrameBoss = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
elseif SelectBoss == "Fishman Lord" then
BossMon = "Fishman Lord"
NameBoss = 'Fishman Lord'
NameQuestBoss = "FishmanQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$15,000\n4,000,000 Exp."
CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
elseif SelectBoss == "Wysper" then
BossMon = "Wysper"
NameBoss = 'Wysper'
NameQuestBoss = "SkyExp1Quest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$15,000\n4,800,000 Exp."
CFrameQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
CFrameBoss = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
elseif SelectBoss == "Thunder God" then
BossMon = "Thunder God"
NameBoss = 'Thunder God'
NameQuestBoss = "SkyExp2Quest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$20,000\n5,800,000 Exp."
CFrameQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
CFrameBoss = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
elseif SelectBoss == "Cyborg" then
BossMon = "Cyborg"
NameBoss = 'Cyborg'
NameQuestBoss = "FountainQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$20,000\n7,500,000 Exp."
CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
elseif SelectBoss == "Ice Admiral" then
BossMon = "Ice Admiral"
NameBoss = 'Ice Admiral'
CFrameBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, 0, -0.81913656, 0, 1, 0, 0.81913656, 0, -0.573599219)
elseif SelectBoss == "Greybeard" then
BossMon = "Greybeard"
NameBoss = 'Greybeard'
CFrameBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
end
end
if Second_Sea then
if SelectBoss == "Diamond" then
BossMon = "Diamond"
NameBoss = 'Diamond'
NameQuestBoss = "Area1Quest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$25,000\n9,000,000 Exp."
CFrameQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
CFrameBoss = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
elseif SelectBoss == "Jeremy" then
BossMon = "Jeremy"
NameBoss = 'Jeremy'
NameQuestBoss = "Area2Quest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$25,000\n11,500,000 Exp."
CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
elseif SelectBoss == "Fajita" then
BossMon = "Fajita"
NameBoss = 'Fajita'
NameQuestBoss = "MarineQuest3"
QuestLvBoss = 3
RewardBoss = "Reward:\n$25,000\n15,000,000 Exp."
CFrameQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
CFrameBoss = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
elseif SelectBoss == "Don Swan" then
BossMon = "Don Swan"
NameBoss = 'Don Swan'
CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
elseif SelectBoss == "Smoke Admiral" then
BossMon = "Smoke Admiral"
NameBoss = 'Smoke Admiral'
NameQuestBoss = "IceSideQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$20,000\n25,000,000 Exp."
CFrameQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
CFrameBoss = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
elseif SelectBoss == "Awakened Ice Admiral" then
BossMon = "Awakened Ice Admiral"
NameBoss = 'Awakened Ice Admiral'
NameQuestBoss = "FrostQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$20,000\n36,000,000 Exp."
CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
elseif SelectBoss == "Tide Keeper" then
BossMon = "Tide Keeper"
NameBoss = 'Tide Keeper'
NameQuestBoss = "ForgottenQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$12,500\n38,000,000 Exp."
CFrameQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
CFrameBoss = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
elseif SelectBoss == "Darkbeard" then
BossMon = "Darkbeard"
NameBoss = 'Darkbeard'
CFrameMon = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
elseif SelectBoss == "Cursed Captain" then
BossMon = "Cursed Captain"
NameBoss = 'Cursed Captain'
CFrameBoss = CFrame.new(916.928589, 181.092773, 33422)
elseif SelectBoss == "Order" then
BossMon = "Order"
NameBoss = 'Order'
CFrameBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
end
end
if Third_Sea then
if SelectBoss == "Stone" then
BossMon = "Stone"
NameBoss = 'Stone'
NameQuestBoss = "PiratePortQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$25,000\n40,000,000 Exp."
CFrameQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
CFrameBoss = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
elseif SelectBoss == "Island Empress" then
BossMon = "Island Empress"
NameBoss = 'Island Empress'
NameQuestBoss = "AmazonQuest2"
QuestLvBoss = 3
RewardBoss = "Reward:\n$30,000\n52,000,000 Exp."
CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609)
CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875)
elseif SelectBoss == "Kilo Admiral" then
BossMon = "Kilo Admiral"
NameBoss = 'Kilo Admiral'
NameQuestBoss = "MarineTreeIsland"
QuestLvBoss = 3
RewardBoss = "Reward:\n$35,000\n56,000,000 Exp."
CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
elseif SelectBoss == "Captain Elephant" then
BossMon = "Captain Elephant"
NameBoss = 'Captain Elephant'
NameQuestBoss = "DeepForestIsland"
QuestLvBoss = 3
RewardBoss = "Reward:\n$40,000\n67,000,000 Exp."
CFrameQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
CFrameBoss = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
elseif SelectBoss == "Beautiful Pirate" then
BossMon = "Beautiful Pirate"
NameBoss = 'Beautiful Pirate'
NameQuestBoss = "DeepForestIsland2"
QuestLvBoss = 3
RewardBoss = "Reward:\n$50,000\n70,000,000 Exp."
CFrameQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
CFrameBoss = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
elseif SelectBoss == "Cake Queen" then
BossMon = "Cake Queen"
NameBoss = 'Cake Queen'
NameQuestBoss = "IceCreamIslandQuest"
QuestLvBoss = 3
RewardBoss = "Reward:\n$30,000\n112,500,000 Exp."
CFrameQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, 0, 0.642767608, 0, 1, 0, -0.642767608, 0, -0.766061664)
CFrameBoss = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)
elseif SelectBoss == "Longma" then
BossMon = "Longma"
NameBoss = 'Longma'
CFrameBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
elseif SelectBoss == "Soul Reaper" then
BossMon = "Soul Reaper"
NameBoss = 'Soul Reaper'
CFrameBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
elseif SelectBoss == "rip_indra True Form" then
BossMon = "rip_indra True Form"
NameBoss = 'rip_indra True Form'
CFrameBoss = CFrame.new(-5415.3920898438, 505.74133300781, -2814.0166015625)
end
end
end

--// Check Material
function MaterialMon()
if SelectMaterial == "Radioactive Material" then
MMon = "Factory Staff"
MPos = CFrame.new(295,73,-56)
SP = "Default"
elseif SelectMaterial == "Mystic Droplet" then
MMon = "Water Fighter"
MPos = CFrame.new(-3385,239,-10542)
SP = "Default"
elseif SelectMaterial == "Magma Ore" then
if First_Sea then
MMon = "Military Spy"
MPos = CFrame.new(-5815,84,8820)
SP = "Default"
elseif Second_Sea then
MMon = "Magma Ninja"
MPos = CFrame.new(-5428,78,-5959)
SP = "Default"
end
elseif SelectMaterial == "Angel Wings" then
MMon = "God's Guard"
MPos = CFrame.new(-4698,845,-1912)
SP = "Default"
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-7859.09814, 5544.19043, -381.476196)).Magnitude >= 5000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7859.09814, 5544.19043, -381.476196))
end
elseif SelectMaterial == "Leather" then
if First_Sea then
MMon = "Brute"
MPos = CFrame.new(-1145,15,4350)
SP = "Default"
elseif Second_Sea then
MMon = "Marine Captain"
MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
SP = "Default"
elseif Third_Sea then
MMon = "Jungle Pirate"
MPos = CFrame.new(-11975.78515625, 331.7734069824219, -10620.0302734375)
SP = "Default"
end
elseif SelectMaterial == "Scrap Metal" then
if First_Sea then
MMon = "Brute"
MPos = CFrame.new(-1145,15,4350)
SP = "Default"
elseif Second_Sea then
MMon = "Swan Pirate"
MPos = CFrame.new(878,122,1235)
SP = "Default"
elseif Third_Sea then
MMon = "Jungle Pirate"
MPos = CFrame.new(-12107,332,-10549)
SP = "Default"
end
elseif SelectMaterial == "Fish Tail" then
if Third_Sea then
MMon = "Fishman Raider"
MPos = CFrame.new(-10993,332,-8940)
SP = "Default"
elseif First_Sea then
MMon = "Fishman Warrior"
MPos = CFrame.new(61123,19,1569)
SP = "Default"
if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875))
end
end
elseif SelectMaterial == "Demonic Wisp" then
MMon = "Demonic Soul"
MPos = CFrame.new(-9507,172,6158)
SP = "Default"
elseif SelectMaterial == "Vampire Fang" then
MMon = "Vampire"
MPos = CFrame.new(-6033,7,-1317)
SP = "Default"
elseif SelectMaterial == "Conjured Cocoa" then
MMon = "Chocolate Bar Battler"
MPos = CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625)
SP = "Default"
elseif SelectMaterial == "Dragon Scale" then
MMon = "Dragon Crew Archer"
MPos = CFrame.new(6594,383,139)
SP = "Default"
elseif SelectMaterial == "Gunpowder" then
MMon = "Pistol Billionaire"
MPos = CFrame.new(-469,74,5904)
SP = "Default"
elseif SelectMaterial == "Mini Tusk" then
MMon = "Mythological Pirate"
MPos = CFrame.new(-13545,470,-6917)
SP = "Default"
end
end




---------------------Esp

function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~= "Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(8, 0, 0)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size10"
                    name.TextWrapped = true
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    if v.Team == game.Players.LocalPlayer.Team then
                        name.TextColor3 = Color3.new(0,0,254)
                    else
                        name.TextColor3 = Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == "Chest1" then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 174, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(251, 255, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end

function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
                if v.Name ~= "Sea" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "GothamBold"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(7, 236, 240)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
for i,v in pairs(game:GetService'Players':GetChildren()) do
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    if v.Team == game.Players.LocalPlayer.Team then
                        name.TextColor3 = Color3.new(0,255,0)
                    else
                        name.TextColor3 = Color3.new(255,0,0)
                    end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == "Chest1" then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 174, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(251, 255, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end

spawn(function()
while wait() do
    pcall(function()
        if MobESP then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("MobEap") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "MobEap"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.MobEap.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild("MobEap") then
                    v.MobEap:Destroy()
                end
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        if SeaESP then
            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("Seaesps") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "Seaesps"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.Seaesps.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild("Seaesps") then
                    v.Seaesps:Destroy()
                end
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        if NpcESP then
            for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("NpcEspes") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "NpcEspes"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.NpcEspes.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild("NpcEspes") then
                    v.NpcEspes:Destroy()
                end
            end
        end
    end)
end
end)

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)

function UpdateIslandMirageESP() 
for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
    pcall(function()
        if MirageIslandESP then 
            if v.Name == "Mirage Island" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)

function UpdateAfdESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if AfdESP then 
            if v.Name == "Advanced Fruit Dealer" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end

function UpdateAuraESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if AuraESP then 
            if v.Name == "Master of Enhancement" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end

function UpdateLSDESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if LADESP then 
            if v.Name == "Legendary Sword Dealer" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end

function UpdateGeaESP() 
for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
    pcall(function()
        if GearESP then 
            if v.Name == "MeshPart" then
                if not v:FindFirstChild('NameEsp') then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = "Code"
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(80, 245, 245)
                else
                    v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                end
            end
        else
            if v:FindFirstChild('NameEsp') then
                v:FindFirstChild('NameEsp'):Destroy()
            end
        end
    end)
end
end
--------------------------------------------------------------------------------------------------------------------------------------------
---------Tween

  function Tween2(P1)
    local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance >= 1 then
    Speed = 300
    end
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
      CFrame = P1
    }):Play()
    if _G.CancelTween2 then
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
      CFrame = P1
    }):Cancel()
    end
    _G.Clip2 = true
    wait(Distance/Speed)
    _G.Clip2 = false
    end
   
-- [Function (Abandoned Quest , Others)]

function Com(com,...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end

--BTP
function BTP(Position)
	game.Players.LocalPlayer.Character.Head:Destroy()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	wait(0.5)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
--BTPZ
function BTPZ(Point)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
        end
------Bypass TP 2
 function GetIsLand(...)
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


     function toTarget(...)
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
        repeat wait(_G.Fast_Delay) until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2)
    end
    local tweenfunc = {}
    local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position)
        .Magnitude
    if Distance < 1000 then
        Speed = 315
    elseif Distance >= 1000 then
        Speed = 300
    end
    if BypassTP then
        if Distance > 3000 and not AutoNextIsland and not (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Hallow Essence") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice")) and not (Name == "Fishman Commando" or Name == "Fishman Warrior") then
            pcall(function()
                tween:Cancel()
                fkwarp = false
                if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
                    wait(.1)
                    Com("F_", "TeleportToSpawn")
                elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                    wait(0.1)
                    repeat wait(_G.Fast_Delay) until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
                else
                    if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
                        if fkwarp == false then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
                        end
                        fkwarp = true
                    end
                    wait(.08)
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                    repeat wait(_G.Fast_Delay) until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
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

----------------------------------------------------------------------------------------------------------------------------------------------
  TweenSpeed = 340
   function Tween(P1)
    local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance >= 1 then
    Speed = TweenSpeed
    end
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
      CFrame = P1
    }):Play()
    if _G.StopTween then
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear), {
      CFrame = P1
    }):Cancel()
    end
    end
    function CancelTween(target)
    if not target then
    _G.StopTween = true
    wait()
    Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    wait()
    _G.StopTween = false
    end
    end
----------------------------------------------------------------------------------------------------------------------------------------------

function toTargetP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait(_G.Fast_Delay) until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
		pcall(function()
			tween:Cancel()

			game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

			return
		end)
	end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end

    --function TP to Boat/Ship
    function TweenShip(CFgo)
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
        tween = tween_s:Create(game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat, info, {CFrame = CFgo})
        tween:Play()
    
        local tweenfunc = {}
    
        function tweenfunc:Stop()
            tween:Cancel()
        end
    
        return tweenfunc
    end
    
    function TweenBoat(CFgo)
        if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait(_G.Fast_Delay) until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
        local tween_s = game:service"TweenService"
        local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
        tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
        tween:Play()
    
        local tweenfunc = {}
    
        function tweenfunc:Stop()
            tween:Cancel()
        end
    
        return tweenfunc
    end

--select weapon
function EquipTool(ToolSe)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			wait(0.5)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
		end
	end
    
    --aimbot mastery

	spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
		  local method = getnamecallmethod()
		  local args = {
			...
		  }
		  if tostring(method) == "FireServer" then
		  if tostring(args[1]) == "RemoteEvent" then
		  if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
		  if _G.UseSkill then
		  if type(args[2]) == "vector" then
		  args[2] = PositionSkillMasteryDevilFruit
		  else
			args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
		  end
		  return old(unpack(args))
		  end
		  end
		  end
		  end
		  return old(...)
		  end)
        end)
--Equip Gun
spawn(function()
  pcall(function()
    while task.wait() do
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
    if v:FindFirstChild("RemoteFunctionShoot") then
    CurrentEquipGun = v.Name
    end
    end
    end
    end
    end)
  end)

-- [Body Gyro]
   spawn(function()
			while task.wait() do
				pcall(function()
					if _G.TeleportIsland or _G.AutoEvoRace or AutoFarmChest or _G.chestsea2 or _G.chestsea3 or _G.CastleRaid or _G.CollectAzure or _G.TweenToKitsune or _G.AutoCandy or _G.GhostShip or _G.Ship or _G.SailBoat or _G.Auto_Holy_Torch or _G.FindMirageIsland or _G.TeleportPly or _G.Tweenfruit or _G.AutoFishCrew or _G.AutoShark or _G.AutoCakeV2 or _G.AutoMysticIsland or _G.AutoQuestRace or _G.AutoBuyBoat or _G.dao or _G.AutoMirage or AutoFarmAcient or _G.AutoQuestRace or Auto_Law or _G.AutoAllBoss or AutoTushita or _G.AutoHolyTorch or _G.AutoTerrorshark or _G.farmpiranya or _G.DriveMytic or _G.AutoCakeV2V2 or PirateShip or _G.AutoSeaBeast or _G.AutoNear or _G.BossRaid or _G.GrabChest or AutoCitizen or _G.Ectoplasm or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or _G.AutoLevel or _G.Clip2 or AutoFarmNoQuest or _G.AutoBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonsterNoQuest or _G.AutoBoss or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or _G.CakePrince or _G.AutoElite or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or _G.AutoKillPlayerMelee or _G.AutoKillPlayerGun or _G.AutoKillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or _G.AutoMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or _G.Ectoplasm then
						if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
							local Noclip = Instance.new("BodyVelocity")
							Noclip.Name = "BodyClip"
							Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
							Noclip.MaxForce = Vector3.new(100000,100000,100000)
							Noclip.Velocity = Vector3.new(0,0,0)
						end
					else
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
					end
				end)
			end
		end)

	
--No CLip Auto Farm
spawn(function()
  pcall(function()
    game:GetService("RunService").Stepped:Connect(function()
      if _G.TeleportIsland or _G.AutoEvoRace or _G.CastleRaid or AutoFarmChest or _G.CollectAzure or _G.TweenToKitsune or _G.AutoCandy or _G.GhostShip or _G.Ship or _G.SailBoat or _G.Auto_Holy_Torch or _G.Tweenfruit or _G.FindMirageIsland or _G.TeleportPly or _G.AutoFishCrew or _G.AutoShark or _G.AutoMysticIsland or _G.AutoCakeV2 or _G.AutoQuestRace or _G.AutoBuyBoat or _G.dao or AutoFarmAcient or _G.AutoMirage or Auto_Law or _G.AutoQuestRace or _G.AutoAllBoss or _G.AutoHolyTorch or AutoTushita or _G.farmpiranya or _G.AutoTerrorshark or _G.AutoNear or _G.AutoCakeV2V2 or PirateShip or _G.AutoSeaBeast or _G.DriveMytic or _G.BossRaid or _G.GrabChest or AutoCitizen or _G.Ectoplasm or AutoEvoRace or AutoBartilo or AutoFactory or BringChestz or BringFruitz or _G.AutoLevel or _G.Clip2 or AutoFarmNoQuest or _G.AutoBone or AutoFarmSelectMonsterQuest or AutoFarmSelectMonsterNoQuest or _G.AutoBoss or AutoFarmBossQuest or AutoFarmMasGun or AutoFarmMasDevilFruit or AutoFarmSelectArea or AutoSecondSea or AutoThirdSea or AutoDeathStep or AutoSuperhuman or AutoSharkman or AutoElectricClaw or AutoDragonTalon or AutoGodhuman or AutoRengoku or AutoBuddySword or AutoPole or AutoHallowSycthe or AutoCavander or AutoTushita or AutoDarkDagger or _G.CakePrince or _G.AutoElite or AutoRainbowHaki or AutoSaber or AutoFarmKen or AutoKenHop or AutoKenV2 or _G.AutoKillPlayerMelee or _G.AutoKillPlayerGun or _G.AutoKillPlayerFruit or AutoDungeon or AutoNextIsland or AutoAdvanceDungeon or Musketeer or RipIndra or Auto_Serpent_Bow or AutoTorch or AutoSoulGuitar or Auto_Cursed_Dual_Katana or _G.AutoMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Factory or _G.SwanGlasses or AutoBartilo or AutoEvoRace or _G.Ectoplasm then
      for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
      if v:IsA("BasePart") then
      v.CanCollide = false
      end
      end
      end
      end)
    end)
  end)
  --//Stun Player
  task.spawn(function()
    if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
    game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
      pcall(function()
        if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
        game.Players.LocalPlayer.Character.Stun.Value = 0
        end
        end)
      end)
    end
    end)
  

--Check Material
function CheckMaterial(matname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
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

-----------------------------------------------------------------------------------------------------------------------------------------------
------AttackNoCD  
local plr = game.Players.LocalPlayer
local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then return end
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
    return ret
end

function AttackNoCoolDown() 
    local AC = CbFw2.activeController
    for i = 1, 1 do 
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            {plr.Character.HumanoidRootPart},
            60
        )
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            pcall(function()
                for k, v in pairs(AC.animator.anims.basic) do
                    v:Play()
                end                  
            end)
            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "") 
            end
        end
    end
end

--Attack Mastery
    function NormalAttack()
        if not _G.NormalAttack then
            local Module = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework)
            local CombatFramework = debug.getupvalues(Module)[2]
            local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
            CamShake:Stop()
            CombatFramework.activeController.attacking = false
            CombatFramework.activeController.timeToNextAttack = 0
            CombatFramework.activeController.hitboxMagnitude = 180
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
        end
    end

--------------------------------------------------------------------------------------------------------------------------------------------

--Sword Weapon
function GetWeaponInventory(Weaponname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
if type(v) == "table" then
if v.Type == "Sword" then
if v.Name == Weaponname then
return true
end
end
end
end
return false
end

---Method Farm
Type1 = 1
spawn(function()
    while wait(.1) do
        if Type == 1 then
            Pos = CFrame.new(10,40,10)
        elseif Type == 2 then
            Pos = CFrame.new(-30,10,-30)
        elseif Type == 3 then
            Pos = CFrame.new(10,10,-40)
        elseif Type == 4 then
            Pos = CFrame.new(-40,10,10)	
        end
        end
    end)

spawn(function()
    while wait(.1) do
        Type = 1
        wait(1)
        Type = 2
        wait(1)
        Type = 3
        wait(1)
        Type = 4
        wait(1)
    end
end)
--auto turn haki
  function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end
---Bypass Teleport
function to(P)
	repeat wait(0.5)
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
		task.wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
	until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
end

function to(p)
		pcall(function()
			if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				if NameMon == "FishmanQuest" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				elseif Mon == "God's Guard"  then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
				elseif NameMon == "SkyExp1Quest" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
				elseif NameMon == "ShipQuest1" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				elseif NameMon == "ShipQuest2" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				elseif NameMon == "FrostQuest" then
					Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
				else
						repeat wait(0.5)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
						wait(.05)
						game.Players.LocalPlayer.Character.Head:Destroy()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
					wait()
				end
			end
		end)
	end

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
--Remove Effect
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
	game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
	game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end
--------------------------------------------------------------------------------------------------------------------------------------------
-- Hehe
--------------------------------------------------------------------------------------------------------------------------------------------
--Create Tabs
Tabs.home:AddButton({
        Title = "Owner",
        Description = "DuydepZaiiCuto!",
        Callback = function()
            print("hiru")
        end
    })
    
Tabs.home:AddButton({
        Title = "Version",
        Description = "Beta Hub 5⁵",
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
    
local listfastattack = {'0.01','0.05','0.015','0.001','0.1','0.005','0','0.02'}

    local DropdownDelayAttack = Tabs.Main:AddDropdown("DropdownDelayAttack", {
        Title = "Select Fast Attack",
        Description = "Chọn Tốc Độ Farm",
        Values = listfastattack,
        Multi = false,
        Default = 1,
    })
    DropdownDelayAttack:SetValue("0.05")
    DropdownDelayAttack:OnChanged(function(Value)
    _G.m1m_Mode = Value
	if _G.m1m_Mode == "0.1" then
		_G.Fast_Delay = 0.1
    elseif _G.m1m_Mode == "0.05" then
		_G.Fast_Delay = 0.05
	elseif _G.m1m_Mode == "0.005" then
        _G.Fast_Delay = 0.005
    elseif _G.m1m_Mode == "0.001" then
		_G.Fast_Delay = 0.001
    elseif _G.m1m_Mode == "0" then
		_G.Fast_Delay = 0
    elseif _G.m1m_Mode == "0.01" then
        _G.Fast_Delay = 0.01
    elseif _G.m1m_Mode == "0.015" then
        _G.Fast_Delay = 0.015
    elseif _G.m1m_Mode == "0.02" then
        _G.Fast_Delay = 0.02
	end
end)

    local DropdownSelectWeapon = Tabs.Main:AddDropdown("DropdownSelectWeapon", {
        Title = "Weapon",
        Description = "vũ khí",
        Values = {'Melee','Sword','Blox Fruit'},
        Multi = false,
        Default = 1,
    })
    DropdownSelectWeapon:SetValue('Melee')
    DropdownSelectWeapon:OnChanged(function(Value)
        ChooseWeapon = Value
    end)
    task.spawn(function()
        while wait() do
            pcall(function()
                if ChooseWeapon == "Melee" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                elseif ChooseWeapon == "Sword" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Sword" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                elseif ChooseWeapon == "Blox Fruit" then
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Blox Fruit" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                else
                    for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                        if v.ToolTip == "Melee" then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                                SelectWeapon = v.Name
                            end
                        end
                    end
                end
            end)
        end
    end)


    local ToggleLevel = Tabs.Main:AddToggle("ToggleLevel", {
        Title = "Auto Farm Level",
        Description = "Cày Cấp Độ",
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
          toTarget(CFrameQ)
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
        
--------------------------------------------------------------------------------------------------------------------------------------------

    local ToggleMobAura = Tabs.Main:AddToggle("ToggleMobAura", {
        Title = "Auto Kill Near Mob Aura",
        Description = "Giết Quái ở Gần",
        Default = false })
    ToggleMobAura:OnChanged(function(Value)
        _G.AutoNear = Value
        if Value == false then
            wait()
            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end)
    Options.ToggleMobAura:SetValue(false)
    spawn(function()
        while wait(.1) do
        if _G.AutoNear then
        pcall(function()
          for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
          if v.Name then
          if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
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
          --Click
          until not _G.AutoNear or not v.Parent or v.Humanoid.Health <= 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
          bringmob = false
        end
          end
          end
          end
          end)
        end
        end
      end)


    local ToggleCastleRaid = Tabs.Main:AddToggle("ToggleCastleRaid", {
        Title = "Auto Pirates Castle Raid",
        Description = "Đánh Hải Tặc Pháo đài", 
        Default = false })
    ToggleCastleRaid:OnChanged(function(Value)
        _G.CastleRaid = Value
    end)
    Options.ToggleCastleRaid:SetValue(false)
    spawn(function()
        while wait() do
            if _G.CastleRaid then
                pcall(function()
                    local CFrameCastleRaid = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
                    if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.CastleRaid and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                    repeat wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    until v.Humanoid.Health <= 0 or not v.Parent or not _G.CastleRaid
                                end
                            end
                        end
                    else
                        toTarget(CFrameCastleRaid)
                     
                      
                    end
                end)
            end
        end
        end)


--// auto farm chest

local ToggleChestTween = Tabs.Main:AddToggle("ToggleChestTween", {
    Title = "Auto Farm Chest[Tween]",
    Description = "Nhặt Rương", 
    Default = false })
ToggleChestTween:OnChanged(function(Value)
    AutoFarmChest = Value
end)
Options.ToggleChestTween:SetValue(false)
_G.MagnitudeAdd = 0
spawn(function()
	while wait() do 
		if AutoFarmChest then
			for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
				if v.Name:find("Chest") then
					if game:GetService("Workspace"):FindFirstChild(v.Name) then
						if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+_G.MagnitudeAdd then
							repeat wait()
								if game:GetService("Workspace"):FindFirstChild(v.Name) then
									Tween(v.CFrame)
								end
							until AutoFarmChest == false or not v.Parent
							Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							_G.MagnitudeAdd = _G.MagnitudeAdd+1500
							break
						end
					end
				end
			end
		end
	end
end)

    Tabs.Main:AddButton({
        Title = "Hiru Fps Booster",
        Description = "Fix Lag",
        Callback = function()
            FPSBooster()
        end
    })

    function FPSBooster()
        local decalsyeeted = true
        local g = game
        local w = g.Workspace
        local l = g.Lighting
        local t = w.Terrain
        sethiddenproperty(l,"Technology",2)
        sethiddenproperty(t,"Decoration",false)
        t.WaterWaveSize = 0
        t.WaterWaveSpeed = 0
        t.WaterReflectance = 0
        t.WaterTransparency = 0
        l.GlobalShadows = false
        l.FogEnd = 9e9
        l.Brightness = 0
        settings().Rendering.QualityLevel = "Level01"
        for i, v in pairs(g:GetDescendants()) do
            if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
            elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                v.Transparency = 1
            elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                v.Lifetime = NumberRange.new(0)
            elseif v:IsA("Explosion") then
                v.BlastPressure = 1
                v.BlastRadius = 1
            elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                v.Enabled = false
            elseif v:IsA("MeshPart") then
                v.Material = "Plastic"
                v.Reflectance = 0
                v.TextureID = 10385902758728957
            end
        end
        for i, e in pairs(l:GetChildren()) do
            if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                e.Enabled = false
            end
        end
    end
    
local ToggleSafeM = Tabs.Main:AddToggle("ToggleSafeM", {Title = "Anti Flag", Description = "Fix Lag Chức Năng", Default = true })
    ToggleMobAura:OnChanged(function(Value)
        _G.runwhenloworantiflag = Value
    end)
    Options.ToggleSafeM:SetValue(true)  
    spawn(function()
            while _G.runwhenloworantiflag do
                task.wait()
                if
                    game.Players.LocalPlayer.Character and
                        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                 then
                    local h =
                        game.Players.LocalPlayer.Character.Humanoid.Health /
                        game.Players.LocalPlayer.Character.Humanoid.MaxHealth *
                        100
                    if h < 25 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 150, 0)
                    end
                end
                task.wait()
            end
        end)
--------------------------------------------------------------------------------------------------------------------------------------------
--Mastery
local Mastery = Tabs.Main:AddSection("Mastery Farm")
    local DropdownMastery = Tabs.Main:AddDropdown("DropdownMastery", {
        Title = "Auto Mastery Mode",
        Description = "Thông Thạo ",
        Values = {"Level","Near Mobs",},
        Multi = false,
        Default = 1,
    })

    DropdownMastery:SetValue("Level")

    DropdownMastery:OnChanged(function(Value)
        TypeMastery = Value
    end)

    local ToggleMasteryFruit = Tabs.Main:AddToggle("ToggleMasteryFruit", {
        Title = "Auto BF Mastery",
        Description = "Thông Thạo Trái", 
        Default = false })
    ToggleMasteryFruit:OnChanged(function(Value)
        AutoFarmMasDevilFruit = Value
    end)
    Options.ToggleMasteryFruit:SetValue(false)

 

    local SliderHealt = Tabs.Main:AddSlider("SliderHealt", {
        Title = "Health (%) Mob",
        Description = "",
        Default = 25,
        Min = 0,
        Max = 100,
        Rounding = 1,
        Callback = function(Value)
            KillPercent = Value
        end
    })

    SliderHealt:OnChanged(function(Value)
        KillPercent = Value
    end)

    SliderHealt:SetValue(25)
    
    
spawn(function()
while task.wait(1) do
if _G.UseSkill then
pcall(function()
  if _G.UseSkill then
  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
  if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
  repeat game:GetService("RunService").Heartbeat:wait()
  EquipTool(game.Players.LocalPlayer.Data.DevilFruit.Value)
  Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
  PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
  if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
  game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = PositionSkillMasteryDevilFruit
  local DevilFruitMastery = game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value
  if SkillZ and DevilFruitMastery >= 1 then
  game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
  wait(0.1)
  game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
  end
  if SkillX and DevilFruitMastery >= 2 then
  game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
  wait(0.2)
  game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
  end
  if SkillC and DevilFruitMastery >= 3 then
  game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
  wait(0.3)
  game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
  end
  if SkillV and DevilFruitMastery >= 4 then
  game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
  wait(0.4)
  game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
  end
  if SkillF and DevilFruitMastery >= 5 then
  game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game)
  wait(0.5)
  game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game)
  end
  end
  until not AutoFarmMasDevilFruit or not _G.UseSkill or v.Humanoid.Health == 0
  end
  end
  end
  end)
end
end
end)
spawn(function()
    while task.wait(.1) do
    if AutoFarmMasDevilFruit and TypeMastery == 'Level' then
    pcall(function()
      CheckLevel(SelectMonster)
      if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
      if BypassTP then
        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQ.Position).Magnitude > 2500 then
        to(CFrameQ)
        wait(0.2)
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
      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
      if v.Name == Ms then
        repeat wait(_G.Fast_Delay)
      if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
      _G.UseSkill = true
      else
    _G.UseSkill = false
	   AutoHaki()
       bringmob = true
      EquipTool(SelectWeapon)
      Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
      v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
      v.HumanoidRootPart.Transparency = 1
      v.Humanoid.JumpPower = 0
      v.Humanoid.WalkSpeed = 0
      v.HumanoidRootPart.CanCollide = false
      FarmPos = v.HumanoidRootPart.CFrame
      MonFarm = v.Name
      
      NormalAttack()
      end
      until not AutoFarmMasDevilFruit or not v.Parent or v.Humanoid.Health == 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or not TypeMastery == 'Level'
      bringmob = false
      _G.UseSkill = false
      
      end
      end
      end
      end
      end)
---------Near Mas
    elseif AutoFarmMasDevilFruit and TypeMastery == 'Near Mobs' then
    pcall(function()
      for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
      if v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
      if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000 then
        repeat wait(_G.Fast_Delay)
      if v.Humanoid.Health <= v.Humanoid.MaxHealth * KillPercent / 100 then
      _G.UseSkill = true
      else
        _G.UseSkill = false
		AutoHaki()
        bringmob = true
      EquipTool(SelectWeapon)
      Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
      v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
      v.HumanoidRootPart.Transparency = 1
      v.Humanoid.JumpPower = 0
      v.Humanoid.WalkSpeed = 0
      v.HumanoidRootPart.CanCollide = false
  --v.Humanoid:ChangeState(11)
  --v.Humanoid:ChangeState(14)
      FarmPos = v.HumanoidRootPart.CFrame
      MonFarm = v.Name
      
       NormalAttack()
      end
      until not AutoFarmMasDevilFruit or not MasteryType == 'Near Mobs' or not v.Parent or v.Humanoid.Health == 0 or not TypeMastery == 'Near Mobs'
      bringmob = false
      _G.UseSkill = false
      
    end
end
end
end)
end
end
end)

if Third_Sea then
local MiscFarm = Tabs.Main:AddSection("Bone Farm")

local StatusBone = Tabs.Main:AddParagraph({
    Title = "Bone Status",
    Content = ""
})
	spawn(function()
		pcall(function()
			while wait() do
				StatusBone:SetDesc("You Have : "..tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check").." Bones"))
			end
		end)
	end)


local ToggleBone = Tabs.Main:AddToggle("ToggleBone", {
    Title = "Auto farm Bone",
    Description = "Cày Xương", 
    Default = false })
ToggleBone:OnChanged(function(Value)
    _G.AutoBone = Value
    if Value == false then
        wait()
        Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
Options.ToggleBone:SetValue(false)
local BoneCFrame = CFrame.new(-9515.75, 174.8521728515625, 6079.40625)
local BoneCFrame2 = CFrame.new(-9359.453125, 141.32679748535156, 5446.81982421875)
spawn(function()
    while wait() do
        if _G.AutoBone then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, "Demonic Soul") then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                 toTarget(BoneCFrame)
                if (BoneCFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","HauntedQuest2",1)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
                                        repeat wait(_G.Fast_Delay)
                                            AttackNoCoolDown()
                                            AutoHaki()
                                            bringmob = true
                                            EquipTool(SelectWeapon)
                                            Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
			                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            FarmPos = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                        until not _G.AutoBone or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        bringmob = false
                                    end
                                end
                            end
                        end
                    else
                    end
                end
            end)
        end
    end
end)

local ToggleRandomBone = Tabs.Main:AddToggle("ToggleRandomBone", {Title = "Auto Random Bone",Description = "Đổi Xương", Default = false })
ToggleRandomBone:OnChanged(function(Value)  
		_G.AutoRandomBone = Value
end)
Options.ToggleRandomBone:SetValue(false)
	
spawn(function()
	while wait(0.0000000000000000000000000000000000000000000000000001) do
	if _G.AutoRandomBone then
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
if Third_Sea then
local MiscFarm = Tabs.Main:AddSection("Katakuri Farm")
local Mob_Kill_Cake_Prince = Tabs.Main:AddParagraph({
    Title = "Check Katakuri Spam",
    Content = ""
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
				Mob_Kill_Cake_Prince:SetDesc("Cake Prince : [YES]")
			end
		end)
	end
end)


local ToggleCake = Tabs.Main:AddToggle("ToggleCake", {
    Title = "Auto Farm Cake Prince",
    Description = "Cày Katakuri", 
    Default = false })
ToggleCake:OnChanged(function(Value)
 _G.CakePrince = Value
 if Value == false then
    wait()
    Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    wait()
end
end)
Options.ToggleCake:SetValue(false)
spawn(function()
		while wait() do
			if _G.CakePrince then
                pcall(function()
                    local CakeCFrame = CFrame.new(-2142.66821,71.2588654,-12327.4619,0.996939838,-4.33107843e-08,0.078172572,4.20252917e-08,1,1.80894251e-08,-0.078172572,-1.47488439e-08, 0.996939838)
                    toTarget(CakeCFrame)
					if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then   
						if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
								if v.Name == "Cake Prince" then
                                    repeat wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
										AutoHaki()
										EquipTool(SelectWeapon)
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
										v.HumanoidRootPart.CanCollide = false
										Tween(v.HumanoidRootPart.CFrame * Pos)
										--Click
									until _G.CakePrince == false or not v.Parent or v.Humanoid.Health <= 0
                                    bringmob = false
                                end    
							end    
						else
							Tween(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
						end
					else
                        if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
                                if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
                                    repeat wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
										AutoHaki()
                                        bringmob = true
										EquipTool(SelectWeapon)
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
										FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
										Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
									until _G.CakePrince == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0
                                    bringmob = false
                                end
							end
						else
							Tween(CakeCFrame)
						end
					end
				end)
			end
		end
    end)


    local ToggleSpawnCake = Tabs.Main:AddToggle("ToggleSpawnCake", {
        Title = "Auto spam Katakuri",
        Description = "Triệu Hồi Katakuri", 
        Default = true })
    ToggleSpawnCake:OnChanged(function(Value)
      _G.SpawnCakePrince = Value
    end)
    Options.ToggleSpawnCake:SetValue(true)
end

spawn(function()
  while wait() do
    if _G.SpawnCakePrince then
      local args = {
        [1] = "CakePrinceSpawner",
        [2] = true
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                    
      local args = {
        [1] = "CakePrinceSpawner"
      }
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
  end
end)
end
    if Second_Sea then
	local MiscFarm = Tabs.Main:AddSection("Ectoplasm Farm")
    local ToggleVatChatKiDi = Tabs.Main:AddToggle("ToggleVatChatKiDi", {
        Title = "Auto Farm Ectoplasm",
        Description = "Vật chất Kì Dị", 
        Default = false })
    ToggleVatChatKiDi:OnChanged(function(Value)
        _G.Ectoplasm = Value
    end)
    Options.ToggleVatChatKiDi:SetValue(false)

    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.Ectoplasm then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Ship Steward" or v.Name == "Ship Engineer" or v.Name == "Ship Deckhand" or v.Name == "Ship Officer" and v:FindFirstChild("Humanoid") then
                                if v.Humanoid.Health > 0 then
                                    repeat wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        AutoHaki()
                                        bringmob = true
                                        EquipTool(SelectWeapon)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        --Click
                                    until _G.Ectoplasm == false or not v.Parent or v.Humanoid.Health == 0 or not game:GetService("Workspace").Enemies:FindFirstChild(v.Name)
                                    bringmob = false
                                end
                            end
                        end
                    else
                        local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if Distance > 20000 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                        end
                        Tween(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
                    end
                end
            end)
        end
    end)
end

local boss = Tabs.Main:AddSection("Boss Farm")


    if First_Sea then
		tableBoss = {"The Gorilla King","Bobby","Yeti","Mob Leader","Vice Admiral","Warden","Chief Warden","Swan","Magma Admiral","Fishman Lord","Wysper","Thunder God","Cyborg","Saber Expert"}
	elseif Second_Sea then
		tableBoss = {"Diamond","Jeremy","Fajita","Don Swan","Smoke Admiral","Cursed Captain","Darkbeard","Order","Awakened Ice Admiral","Tide Keeper"}
	elseif Third_Sea then
		tableBoss = {"Stone","Island Empress","Kilo Admiral","Captain Elephant","Beautiful Pirate","rip_indra True Form","Longma","Soul Reaper","Cake Queen"}
	end


    local DropdownBoss = Tabs.Main:AddDropdown("DropdownBoss", {
        Title = "choose boss",
        Description = "Chọn boss",
        Values = tableBoss,
        Multi = false,
        Default = 1,
    })

    DropdownBoss:SetValue("")
    DropdownBoss:OnChanged(function(Value)
		_G.SelectBoss = Value
    end)

	local ToggleAutoFarmBoss = Tabs.Main:AddToggle("ToggleAutoFarmBoss", {
        Title = "Auto Kill Boss",
        Description = "Đánh Boss", 
        Default = false })

    ToggleAutoFarmBoss:OnChanged(function(Value)
		_G.AutoBoss = Value
    end)

    Options.ToggleAutoFarmBoss:SetValue(false)

    spawn(function()
        while wait() do
            if _G.AutoBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == _G.SelectBoss then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)                             
                                        Tween(v.HumanoidRootPart.CFrame * Pos)
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                            toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                        end
                    end
                end)
            end
        end
    end)

    local Material = Tabs.Main:AddSection("Material Farm")

    if First_Sea then
        MaterialList = {
          "Scrap Metal","Leather","Angel Wings","Magma Ore","Fish Tail"
        } elseif Second_Sea then
        MaterialList = {
          "Scrap Metal","Leather","Radioactive Material","Mystic Droplet","Magma Ore","Vampire Fang"
        } elseif Third_Sea then
        MaterialList = {
          "Scrap Metal","Leather","Demonic Wisp","Conjured Cocoa","Dragon Scale","Gunpowder","Fish Tail","Mini Tusk"
        }
        end

    local DropdownMaterial = Tabs.Main:AddDropdown("DropdownMaterial", {
        Title = "choose materials",
        Description = "Chọn Nguyên Liệu",
        Values = MaterialList,
        Multi = false,
        Default = 1,
    })

    DropdownMaterial:SetValue("Dragon Scale")

    DropdownMaterial:OnChanged(function(Value)
        SelectMaterial = Value
    end)

    local ToggleMaterial = Tabs.Main:AddToggle("ToggleMaterial", {
        Title = "Auto Farm Material",
        Description = "Cày Nguyên Liệu", 
        Default = false })

    ToggleMaterial:OnChanged(function(Value)
        _G.AutoMaterial = Value
        if Value == false then
            wait()
            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            wait()
        end
    end)
    Options.ToggleMaterial:SetValue(false)
    spawn(function()
        while task.wait() do
        if _G.AutoMaterial then
        pcall(function()
          MaterialMon(SelectMaterial)
            toTarget(MPos)
          if game:GetService("Workspace").Enemies:FindFirstChild(MMon) then
          for i,v in pairs (game.Workspace.Enemies:GetChildren()) do
          if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
          if v.Name == MMon then
            repeat wait(_G.Fast_Delay)
                AttackNoCoolDown()
          AutoHaki()
          bringmob = true
          EquipTool(SelectWeapon)
          Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
          v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
          v.HumanoidRootPart.Transparency = 1
          v.Humanoid.JumpPower = 0
          v.Humanoid.WalkSpeed = 0
          v.HumanoidRootPart.CanCollide = false
          FarmPos = v.HumanoidRootPart.CFrame
          MonFarm = v.Name
          --Click
          until not _G.AutoMaterial or not v.Parent or v.Humanoid.Health <= 0
          bringmob = false
        end
          end
          end
          else
            for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
          if string.find(v.Name, Mon) then
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

      if Third_Sea then
      local RoughSea = Tabs.Main:AddSection("Kitsune")
	 
local StatusKitsune = Tabs.Main:AddParagraph({
    Title = "Kistune Island Spam",
    Content = ""
})
function UpdateKitsune()
    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
        StatusKitsune:SetDesc("Kitsune Island : [YES]")
    else
        StatusKitsune:SetDesc("Kitsune Island : [NO]")
     end
end
spawn(function()
    pcall(function()
        while wait() do
            UpdateKitsune()
        end
    end)
end)

      local ToggleEspKitsune = Tabs.Main:AddToggle("ToggleEspKitsune", {Title = "Esp Kitsune Event Island",Description = "Định Vị Đảo Kitsune", Default = false })
      ToggleEspKitsune:OnChanged(function(Value)
        KitsuneIslandEsp = Value
        while KitsuneIslandEsp do wait()
            UpdateIslandKisuneESP() 
        end
    end)
      Options.ToggleEspKitsune:SetValue(false)

      function UpdateIslandKisuneESP() 
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if KitsuneIslandEsp then 
                    if v.Name == "Kitsune Island" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "Code"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end

      local ToggleTPKitsune = Tabs.Main:AddToggle("ToggleTPKitsune", {Title = "Tween To Kitsune Island",Description = "Di Chuyển Đến Đảo Cáo", Default = false })
      ToggleTPKitsune:OnChanged(function(Value)
        _G.TweenToKitsune = Value
      end)
      Options.ToggleTPKitsune:SetValue(false)
      spawn(function()
        local kitsuneIsland
        while not kitsuneIsland do
            kitsuneIsland = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
            wait(1)
        end
        while wait() do
            if _G.TweenToKitsune then
                local shrineActive = kitsuneIsland:FindFirstChild("ShrineActive")
                if shrineActive then
                    for _, v in pairs(shrineActive:GetDescendants()) do
                        if v:IsA("BasePart") and v.Name:find("NeonShrinePart") then
                            Tween(v.CFrame)
                        end
                    end
                end
            end
        end
    end)


      local ToggleCollectAzure = Tabs.Main:AddToggle("ToggleCollectAzure", {Title = "Collect Azure Ambers",Description = "Nhặt Lửa Linh Hồn", Default = false })
      ToggleCollectAzure:OnChanged(function(Value)
         _G.CollectAzure = Value
      end)
      Options.ToggleCollectAzure:SetValue(false)
spawn(function()
    while wait() do
        if _G.CollectAzure then
            pcall(function()
                if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                    Tween(game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame)
					print("Azure")
                end
            end)
        end
    end
end)
end

if Third_Sea then
    local RoughSea = Tabs.Main:AddSection("Rough Sea")

    local ToggleSailBoat = Tabs.Main:AddToggle("ToggleSailBoat", {Title = "Auto buy Boat",Description = "Tự Động Mua Thuyền", Default = false })
    ToggleSailBoat:OnChanged(function(Value)
        _G.SailBoat = Value
    end)
    Options.ToggleSailBoat:SetValue(false)
    spawn(function()
        while wait() do
            pcall(function()
                if _G.SailBoat then
                    if not game:GetService("Workspace").Enemies:FindFirstChild("Shark") or not game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or not game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or not game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                        if not game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                            buyb = TweenBoat(CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781))
                            if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                if buyb then buyb:Stop() end
                                local args = {
                                    [1] = "BuyBoat",
                                    [2] = "PirateGrandBrigade"
                                }
    
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                        elseif game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                            if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                                TweenBoat(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0,1,0))
                            else
                                for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                    if v.Name == "PirateGrandBrigade" then
                                        repeat wait(_G.Fast_Delay)
                                            if (CFrame.new(-17013.80078125, 10.962434768676758, 438.0169982910156).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                                TweenShip(CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094))
                                            elseif (CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                                TweenShip(CFrame.new(-37952.49609375, 10.96342945098877, -1324.12109375))
                                            elseif (CFrame.new(-37952.49609375, 10.96342945098877, -1324.12109375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                                TweenShip(CFrame.new(-33163.1875, 10.964323997497559, -324.4842224121094))
                                            end 
                                        until game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") or _G.SailBoat == false
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
    
    spawn(function()
		pcall(function()
			while wait() do
				if _G.SailBoat then
					if game:GetService("Workspace").Enemies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
					    game.Players.LocalPlayer.Character.Humanoid.Sit = false
					end
				end
			end
		end)
	end)
	
	
local ToggleNocliprock = Tabs.Main:AddToggle("ToggleNocliprock", {
    Title = "Auto No Clip Rock",
    Description = "Đi Xuyên Đá", 
    Default = false })
ToggleNocliprock:OnChanged(function(Value)
    _G.Nocliprock = Value
end)
Options.ToggleNocliprock:SetValue(false)
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

	
	local SetSpeedBoatSlider = Tabs.Main:AddSlider("SliderSpeedBoat", {
	Title = "Set Speed (boat)",
	Description = "Chỉnh Tốc Độ Thuyền",
	Default = 300,
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

SetSpeedBoatSlider:SetValue(300)

local SpeedBoatToggle = Tabs.Main:AddToggle("SpeedBoat_Toggle", {Title = "Auto Speed Boat",Description = "Tốc Độ Thuyền", Default = false })
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



    local ToggleTerrorshark = Tabs.Main:AddToggle("ToggleTerrorshark", {Title = "Auto Kill Terrorshark",Description = "Đánh Cá Terrorshark", Default = false })

    ToggleTerrorshark:OnChanged(function(Value)
        _G.AutoTerrorshark = Value
    end)
    Options.ToggleTerrorshark:SetValue(false)
    spawn(function()
        while wait() do
            if _G.AutoTerrorshark then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Terrorshark" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    until not _G.AutoTerrorshark or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                      
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                        end
                    end
                end)
    
            end
        end
     end)



     local TogglePiranha = Tabs.Main:AddToggle("TogglePiranha", {Title = "Auto Kill Piranha",Description = "Đánh Cá Piranha", Default = false })

     TogglePiranha:OnChanged(function(Value)
        _G.farmpiranya = Value
     end)
     Options.TogglePiranha:SetValue(false)

     spawn(function()
        while wait() do
            if _G.farmpiranya then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Piranha" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    until not _G.farmpiranya or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                     
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Piranha") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Piranha").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else  
                        end
                    end
        
                end)
            end
        end
     end)



     local ToggleShark = Tabs.Main:AddToggle("ToggleShark", {Title = "Auto Kill Shark",Description = "Đánh Cá Shark", Default = false })
     ToggleShark:OnChanged(function(Value)
        _G.AutoShark = Value
     end)
     Options.ToggleShark:SetValue(false)
     spawn(function()
        while wait() do
            if _G.AutoShark then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Shark" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    until not _G.AutoShark or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        Tween(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0,1,0))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                        end
                    end
                end)
    
            end
        end
    end)



    local ToggleFishCrew = Tabs.Main:AddToggle("ToggleFishCrew", {Title = "Auto Kill Fish Crew",Description = "Tự động giết cá", Default = false })
    ToggleFishCrew:OnChanged(function(Value)
       _G.AutoFishCrew = Value
    end)
    Options.ToggleFishCrew:SetValue(false)

    spawn(function()
        while wait() do
            if _G.AutoFishCrew then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Fish Crew Member" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                            
                                        game.Players.LocalPlayer.Character.Humanoid.Sit = false
                                    until not _G.AutoFishCrew or not v.Parent or v.Humanoid.Health <= 0
                                end
                            
                            end
                        end
                    else
                  
                        Tween(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0,1,0))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Fish Crew Member") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Fish Crew Member").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                           
                        end
                    end
        
                end)
            end
        end
    end)



    local ToggleShip = Tabs.Main:AddToggle("ToggleShip", {Title = "Auto Kill Ship",Description = "Đánh Thuyền Ma", Default = false })
    ToggleShip:OnChanged(function(Value)
        _G.Ship = Value
       end)
       Options.ToggleShip:SetValue(false)
       function CheckPirateBoat()
        local checkmmpb = {"PirateGrandBrigade", "PirateBrigade"}
        for r, v in next, game:GetService("Workspace").Enemies:GetChildren() do
            if table.find(checkmmpb, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 then
                return v
            end
        end
    end
    
    spawn(function()
while wait() do
    if _G.Ship then
        pcall(function()
            if CheckPirateBoat() then
                game:GetService("VirtualInputManager"):SendKeyEvent(true,32,false,game)
                wait(.5)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,32,false,game)
                local v = CheckPirateBoat()
                repeat
                    wait()
                    spawn(Tween(v.Engine.CFrame * CFrame.new(0, -20, 0)), 1)
                    AimBotSkillPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                    Skillaimbot = true
                    AutoSkill = false
                until not v or not v.Parent or v.Health.Value <= 0 or not CheckPirateBoat()
                Skillaimbot = true
                AutoSkill = false
            end
        end)
    end
end
end)



    local ToggleGhostShip = Tabs.Main:AddToggle("ToggleGhostShip", {Title = "Auto Kill Shost Ship",Description = "Đánh Tàu Ma",Default = false })
    ToggleGhostShip:OnChanged(function(Value)
        _G.GhostShip = Value
       end)
       Options.ToggleGhostShip:SetValue(false)
    
       function CheckPirateBoat()
        local checkmmpb = {"FishBoat"}
        for r, v in next, game:GetService("Workspace").Enemies:GetChildren() do
            if table.find(checkmmpb, v.Name) and v:FindFirstChild("Health") and v.Health.Value > 0 then
                return v
            end
        end
    end
spawn(function()
while wait() do
    pcall(function()
        if _G.bjirFishBoat then
            if CheckPirateBoat() then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
                wait(0.5)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
                local v = CheckPirateBoat()
                repeat
                    wait()
                    spawn(Tween(v.Engine.CFrame * CFrame.new(0, -20, 0), 1))
                    AutoSkill = true
                    Skillaimbot = true
                    AimBotSkillPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -5, 0)
                until v.Parent or v.Health.Value <= 0 or not CheckPirateBoat()
                AutoSkill = false
                Skillaimbot = false
            end
        end
    end)
end
end)

spawn(function()
    while wait() do
        if _G.bjirFishBoat then
               pcall(function()
                    if CheckPirateBoat() then
                        AutoHaki()
                        game:GetService("VirtualUser"):CaptureController()
                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") then
                                if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                end
                            end
                        end
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") then
                                if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                end
                            end
                        end
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.6)
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") then
                                if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                end
                            end
                        end
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(0.5)
                        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if v:IsA("Tool") then
                                if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                                end
                            end
                        end
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        wait(.2)
                        game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                        game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
                    end
                end)
            end
    end
      end)



    local AutoElite = Tabs.Main:AddSection("Elite Hunter Farm")

    local StatusElite = Tabs.Main:AddParagraph({
        Title = "Auto Check Elite Hunter Spam",
        Content = "Status: "
    })
    
    spawn(function()
        while wait() do
            pcall(function()
                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                    StatusElite:SetDesc("Elite Boss : [YES] | Killed:  "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
                else
                    StatusElite:SetDesc("Elite Boss : [NO] | Killed: "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))	
                end
            end)
        end
    end)
    
    local ToggleElite = Tabs.Main:AddToggle("ToggleElite", {Title = "Auto kill Elite Hunter",Description = "Đánh Boss Elite", Default = false })

    ToggleElite:OnChanged(function(Value)
       _G.AutoElite = Value
       end)
       Options.ToggleElite:SetValue(false)
       spawn(function()
           while task.wait() do
               if _G.AutoElite then
                   pcall(function()
                       if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                           if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                               if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                                   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                       if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                           if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
                                            repeat wait(_G.Fast_Delay)
                                                AttackNoCoolDown()
                                                   EquipTool(SelectWeapon)
                                                   AutoHaki()
                                                   toTarget(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                                   MonsterPosition = v.HumanoidRootPart.CFrame
                                                   v.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                                                   v.Humanoid.JumpPower = 0
                                                   v.Humanoid.WalkSpeed = 0
                                                   v.HumanoidRootPart.CanCollide = false
                                                   v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                               until _G.AutoElite == false or v.Humanoid.Health <= 0 or not v.Parent
                                           end
                                       end
                                   end
                               else
                                 
                                   if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                    toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                   elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                    toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                   elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                    toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                   end
   
                               end
                         
                           end
                       else
                           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                       end
                   end)
               end
           end
       end)
    end


if Third_Sea then
    local Sea = Tabs.Main:AddSection("Sea Beast")


local ToggleSeaBeAst = Tabs.Main:AddToggle("ToggleSeaBeAst", {Title = "Auto kill Sea Beast",Description = "Đánh Sea Beast", Default = false })

ToggleSeaBeAst:OnChanged(function(Value)
    _G.AutoSeaBeast = Value
    end)
    Options.ToggleSeaBeAst:SetValue(false)
 
    
    Skillz = true
    Skillx = true
    Skillc = true
    Skillv = true
    
    spawn(function()
        while wait() do
            pcall(function()
                if AutoSkill then
                    if Skillz then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                    end
                    if Skillx then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                    end
                    if Skillc then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                    end
                    if Skillv then
                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                        wait(.1)
                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                    end
                end
            end)
        end
    end)
    task.spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoSeaBeast then
                    if not game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
                        if not game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then 
                            if not game:GetService("Workspace").Boats:FindFirstChild("PirateBasic") then
                                if not game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                                    buyb = TweenBoat(CFrame.new(-4513.90087890625, 16.76398277282715, -2658.820556640625))
                                    if (CFrame.new(-4513.90087890625, 16.76398277282715, -2658.820556640625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                        if buyb then buyb:Stop() end
                                        local args = {
                                            [1] = "BuyBoat",
                                            [2] = "PirateGrandBrigade"
                                        }
            
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                elseif game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                                    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                                        TweenBoat(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0,1,0))
                                    elseif game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
                                        repeat wait(_G.Fast_Delay)
                                            if (game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                                TweenShip(CFrame.new(35.04552459716797, 17.750778198242188, 4819.267578125))
                                            end
                                        until game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or _G.AutoSeaBeast == false
                                    end
                                end
                            elseif game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                                for is,vs in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                    if vs.Name == "PirateGrandBrigade" then
                                        if vs:FindFirstChild("VehicleSeat") then
                                            repeat wait(_G.Fast_Delay)
                                                game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                                TweenBoat(vs.VehicleSeat.CFrame * CFrame.new(0,1,0))
                                            until not game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") or _G.AutoSeaBeast == false
                                        end
                                    end
                                end
                            end
                        elseif game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") then
                            for iss,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                if v.Name == "PirateGrandBrigade" then
                                    if v:FindFirstChild("VehicleSeat") then
                                        repeat wait(_G.Fast_Delay)
                                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                            TweenBoat(v.VehicleSeat.CFrame * CFrame.new(0,1,0))
                                        until not game:GetService("Workspace").Boats:FindFirstChild("PirateGrandBrigade") or _G.AutoSeaBeast == false
                                    end
                                end
                            end
                        end
                    elseif game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then  
                        for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") then
                                repeat wait(_G.Fast_Delay)
                                    game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                    TweenBoat(v.HumanoidRootPart.CFrame * CFrame.new(0,500,0))
                                    EquipAllWeapon()  
                                    AutoSkill = true
                                    AimBotSkillPosition = v.HumanoidRootPart
                                    Skillaimbot = true
                                until not v:FindFirstChild("HumanoidRootPart") or _G.AutoSeaBeast == false
                                AutoSkill = false
                                Skillaimbot = false
                            end
                        end
                    end
                end
            end)
        end
    end)

local ToggleAutoW = Tabs.Main:AddToggle("ToggleAutoW", {Title = "Auto Press W",Description = "Tự Động Lái Thuyền", Default = false })
ToggleAutoW:OnChanged(function(Value)
    _G.AutoW = Value
    end)
 Options.ToggleAutoW:SetValue(false)
 spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoW then
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
            end
        end)
    end
    end)




    local AutoMysticIsland = Tabs.Main:AddSection("Mirage Island")

    local StatusMirage = Tabs.Main:AddParagraph({
        Title = "Status",
        Content = "Status:"
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
                MirageStatus = "[YES]"
            else
                MirageStatus = '[NO]'
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

    Tabs.Main:AddButton({
        Title = "Auto Tween to Mirage Island",
        Description = "Di Chuyển Đến Đảo Bí Ẩn",
        Callback = function()
            TweenMirage()
        end
    })
    function TweenMirage()
        repeat
            wait()
        until game:GetService("Workspace").Map:FindFirstChild("MysticIsland")
        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
            AllNPCS = getnilinstances()
            for r, v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                table.insert(AllNPCS, v)
            end
            for r, v in pairs(AllNPCS) do
                if v.Name == "Advanced Fruit Dealer" then
                    Tween2(v.HumanoidRootPart.CFrame)
                end
            end
        end
    end


    Tabs.Main:AddButton({
        Title = "Tween to Highest Point",
        Description = "Đến Chỗ Cao Nhất Đảo Bí Ẩn",
        Callback = function()
            TwenetoHighestPoint()
        end
    })

    function TwenetoHighestPoint()
        HighestPoint = getHighestPoint()
        if HighestPoint then
            Tween2(HighestPoint.CFrame * CFrame.new(0, 211.88, 0))
        end
    end
    function getHighestPoint()
        if not game.workspace.Map:FindFirstChild("MysticIsland") then
            return nil
        end
        for r, v in pairs(game:GetService("Workspace").Map.MysticIsland:GetDescendants()) do
            if v:IsA("MeshPart") then
                if v.MeshId == "rbxassetid://6745037796" then
                    return v
                end
            end
        end
    end

local ToggleTweenGear = Tabs.Main:AddToggle("ToggleTweenGear", {Title = "Tween To Gear",Description = "Nhặt Gear", Default = false })
ToggleTweenGear:OnChanged(function(Value)
    _G.TweenToGear = Value
end) 
Options.ToggleTweenGear:SetValue(false)

spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenToGear then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
						if v:IsA("MeshPart")then 
                            if v.Material ==  Enum.Material.Neon then  
                                Tween2(v.CFrame)
                            end
                        end
					end
				end
			end
        end
    end)
    end)




    local Togglelockmoon = Tabs.Main:AddToggle("Togglelockmoon", {Title = "Lock Moon and Use Race Skill",Description = "Nhìn Trăng Bật Tộc", Default = false })
    Togglelockmoon:OnChanged(function(Value)
        _G.AutoLockMoon = Value
    end) 
    Options.Togglelockmoon:SetValue(false)

    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoLockMoon then
                    local moonDir = game.Lighting:GetMoonDirection()
                    local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                    game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
                end
            end)
        end
    end)


    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoLockMoon then
                    game:GetService("VirtualInputManager"):SendKeyEvent(true,"T",false,game)
                    wait(0.1)
                    game:GetService("VirtualInputManager"):SendKeyEvent(false,"T",false,game)
                end
            end)
        end
    end)


local ToggleMirage = Tabs.Main:AddToggle("ToggleMirage", {Title = "Auto hang Mirage Island",Description = "Shop Đảo Bí Ẩn", Default = false })
ToggleMirage:OnChanged(function(Value)
 _G.AutoSeaBeast = Value
end) 

 Options.ToggleMirage:SetValue(false)

 local AutoW = Tabs.Main:AddToggle("AutoW", {Title = "Auto Press W",Description = "Tự Động Lái Thuyền", Default = false })
 AutoW:OnChanged(function(Value)
    _G.AutoW = Value
     end)
  Options.AutoW:SetValue(false)
  spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoW then
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"W",false,game)
            end
        end)
    end
    end)
end

local Items = Tabs.Main:AddSection("Items Farm")

if Third_Sea then
    local ToggleHallow = Tabs.Main:AddToggle("ToggleHallow", {Title = "Auto Hallow Scythe [Fully]",Description = "Đánh Boss Lưỡi Hái Bóng Tối", Default = false })

    ToggleHallow:OnChanged(function(Value)
        AutoHallowSycthe = Value
    end)
    Options.ToggleHallow:SetValue(false)
    spawn(function()
        while wait() do
            if AutoHallowSycthe then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(v.Name , "Soul Reaper") then
                                repeat wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    v.HumanoidRootPart.Transparency = 1
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
									--Click
                                until v.Humanoid.Health <= 0 or AutoHallowSycthe == false
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        repeat toTarget(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                      wait(0.5)
                        EquipTool("Hallow Essence")
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                            toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                        end
                    end
                end)
    
            end
        end
    end)
	
	
	spawn(function()
           while wait(0.001) do
           if AutoHallowSycthe then
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
        
           
           local ToggleYama = Tabs.Main:AddToggle("ToggleYama", {Title = "Auto Get Yama",Description = "Tự Động Lấy Kiếm Yama", Default = false })
           ToggleYama:OnChanged(function(Value)
            _G.AutoYama = Value
           end)
           Options.ToggleYama:SetValue(false)
           spawn(function()
            while wait() do
                if _G.AutoYama then
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
                        repeat wait(.1)
                            fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
                        until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
                    end
                end
            end
        end)


        local ToggleTushita = Tabs.Main:AddToggle("ToggleTushita", {Title = "Auto Get Tushita",Description = "Tự Động Lấy Kiếm Tushita", Default = false })
        ToggleTushita:OnChanged(function(Value)
            AutoTushita = Value
        end)
        Options.ToggleTushita:SetValue(false)
           spawn(function()
                   while wait() do
                               if AutoTushita then
                                   if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                                       for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                           if v.Name == ("Longma" or v.Name == "Longma") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                            repeat wait(_G.Fast_Delay)
                                                AttackNoCoolDown()
                                                   AutoHaki()
                                                   if not game.Players.LocalPlayer.Character:FindFirstChild(SelectWeapon) then
                                                       wait()
                                                       EquipTool(SelectWeapon)
                                                   end
                                                   FarmPos = v.HumanoidRootPart.CFrame
                                                     --Click
                                                   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                   v.Humanoid.JumpPower = 0
                                                   v.Humanoid.WalkSpeed = 0
                                                   v.HumanoidRootPart.CanCollide = false
                                                   v.Humanoid:ChangeState(11)
                                                   Tween(v.HumanoidRootPart.CFrame * Pos)
                                               until not AutoTushita or not v.Parent or v.Humanoid.Health <= 0
                                           end
                                       end
                                   else
                                       Tween(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                                   end
                               end
                           end
                   end)


                   local ToggleHoly = Tabs.Main:AddToggle("ToggleHoly", {Title = "Auto Holy Torch",Description = "Tự Động Cắm Đuốc", Default = false })
                   ToggleHoly:OnChanged(function(Value)
                    _G.Auto_Holy_Torch = Value
                   end)
                   Options.ToggleHoly:SetValue(false)
                   spawn(function()
                    while wait() do
                        if _G.Auto_Holy_Torch then
                            pcall(function()
                                wait(1)
                                repeat Tween(CFrame.new(-10752, 417, -9366)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
                                wait(1)
                                repeat Tween(CFrame.new(-11672, 334, -9474)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
                                wait(1)
                                repeat Tween(CFrame.new(-12132, 521, -10655)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
                                wait(1)
                                repeat Tween(CFrame.new(-13336, 486, -6985)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
                                wait(1)
                                repeat Tween(CFrame.new(-13489, 332, -7925)) wait() until not _G.Auto_Holy_Torch or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
                            end)
                        end
                    end
                end)
            end


if Second_Sea then
        local ToggleFactory = Tabs.Main:AddToggle("ToggleFactory", {Title = "Auto Farm Factory",Description = "Đánh Nhà Máy", Default = false })
        ToggleFactory:OnChanged(function(Value)
            _G.Factory = Value
        end)
        Options.ToggleFactory:SetValue(false)

        spawn(function()
            while wait() do
                if _G.Factory then
                    if game.Workspace.Enemies:FindFirstChild("Core") then
                        for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == "Core" and v.Humanoid.Health > 0 then
                                repeat wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    repeat Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                                        wait()
                                    until not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
                                    EquipTool(SelectWeapon)
                                    AutoHaki()
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    --Click
                                until not v.Parent or v.Humanoid.Health <= 0  or _G.Factory == false
                            end
                        end
                    elseif game.ReplicatedStorage:FindFirstChild("Core") then
                        repeat Tween(CFrame.new(448.46756, 199.356781, -441.389252))
                            wait()
                        until not _G.Factory or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(448.46756, 199.356781, -441.389252)).Magnitude <= 10
                    end
        
                end
            end
        end)

    end

        if Third_Sea then
    local ToggleCakeV2 = Tabs.Main:AddToggle("ToggleCakeV2", {Title = "Auto Kill Dought King (Need Spawn)",Description = "Đánh Boss Dough King V2", Default = false })
    ToggleCakeV2:OnChanged(function(Value)
        _G.AutoCakeV2 = Value
    end)
        Options.ToggleCakeV2:SetValue(false)
end
    spawn(function()
        while wait() do
            if _G.AutoCakeV2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Dough King" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat wait(_G.Fast_Delay)
                                        AttackNoCoolDown()
                                        AutoHaki()
                                        EquipTool(SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        Tween(v.HumanoidRootPart.CFrame * Pos)
                                    until not _G.AutoCakeV2 or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King") then
                     Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                        end
            
                    end
                end)
            end
        end
    end)

if Third_Sea then
local ToggleKillPlayerTrial = Tabs.Main:AddToggle("ToggleKillPlayerTrial", {Title = "Auto Cursed Dual Katana",Description = "Tự Động Lấy Song Kiếm", Default = false })
ToggleKillPlayerTrial:OnChanged(function(Value)
    _G.KillAfterTrials = value
end)




    
if Second_Sea or Third_Sea then
    local ToggleHakiColor = Tabs.Main:AddToggle("ToggleHakiColor", {Title = "Auto Buy Haki Color",Description = "Tự Động Mua Haki Màu",Default = false })
    ToggleHakiColor:OnChanged(function(Value)
        _G.Auto_Buy_Enchancement = Value
    end)
        Options.ToggleHakiColor:SetValue(false)
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

if Second_Sea then
    local ToggleSwordLengend = Tabs.Main:AddToggle("ToggleSwordLengend", {Title = "Auto Buy Sword Lengendary",Description = "Tự Động Mua Kiếm Lengendary",Default = false })
    ToggleSwordLengend:OnChanged(function(Value)
        _G.BuyLengendSword = Value
    end)
        Options.ToggleSwordLengend:SetValue(false)

        spawn(function()
            while wait(.1) do
                pcall(function()
                    if _G.BuyLengendSword or Triple_A then
                        local args = {
                            [1] = "LegendarySwordDealer",
                            [2] = "2"
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    else
                        wait(2)
                    end
                end)
            end
        end)
    end

--------------------------------------------------------------------------------------------------------------------------------------------
--Setting
local SettingFarm = Tabs.Setting:AddSection("Farming")


local ToggleFastAttack = Tabs.Setting:AddToggle("ToggleFastAttack", {Title = "Enabled Fast Attack", Description = "Tốc Độ Đánh", Default = true })

    ToggleFastAttack:OnChanged(function(Value)
     _G.FastAttackFaiFao = Value
    end)
    Options.ToggleFastAttack:SetValue(true)

spawn(function()
	while wait(0.4) do
		pcall(function()
			if _G.FastAttackFaiFao then
				repeat wait(_G.Fast_Delay)
					AttackNoCD()
				until not _G.FastAttackFaiFao
			end
		end)
	end
end)

local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
Camera:Stop()
-- local random_number = math.random(325, 335)

    local ToggleBringMob = Tabs.Setting:AddToggle("ToggleBringMob", {Title = "Enabled Bring Mob / Magnet",Description = "Gom Quái", Default = true })
    ToggleBringMob:OnChanged(function(Value)
        _G.BringMob = Value
    end)
    Options.ToggleBringMob:SetValue(true)
    spawn(function()
        while wait() do
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.BringMob and bringmob then
                        if v.Name == MonFarm and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if v.Name == "Factory Staff" then
                                if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 500 then
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.CFrame = FarmPos
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == MonFarm then
                                if (v.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 337.5 then
                                    v.HumanoidRootPart.CFrame = FarmPos
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
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                                end
                            end
                        end)
                end
            end)
         

    local ToggleBypassTP = Tabs.Setting:AddToggle("ToggleBypassTP", {Title = "Enabled Bypass Tp", Description = "Di Chuyển Reset", Default = false })
    ToggleBypassTP:OnChanged(function(Value)
        BypassTP = Value
    end)
    Options.ToggleBypassTP:SetValue(false)


local ToggleRemove = Tabs.Setting:AddToggle("ToggleRemove", {Title = "Enabled Remove Dame Text",Description = "Xóa Dame Khi Đánh", Default = true })
ToggleRemove:OnChanged(function(Value)
    _G.RemoveDameText = Value
    end)
    Options.ToggleRemove:SetValue(true)

    spawn(function()
        while wait() do
            if _G.RemoveDameText then
                game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
            else
                game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
            end
        end
        end)

        
local ToggleRemoveNotify = Tabs.Setting:AddToggle("ToggleRemoveNotify", {Title = "Enabled Remove All Notify",Description = "Xóa Thông Báo", Default = false })
ToggleRemoveNotify:OnChanged(function(Value)
    RemoveNotify = Value
    end)
    Options.ToggleRemoveNotify:SetValue(false)

    spawn(function()
        while wait() do
            if RemoveNotify then
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
            else
                game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
            end
        end
    end)



    local ToggleWhite = Tabs.Setting:AddToggle("ToggleWhite", {Title = "Enabled White Screen",Description = "Màng Hình Trắng", Default = false })
    ToggleWhite:OnChanged(function(Value)
       _G.WhiteScreen = Value
       if _G.WhiteScreen == true then
        game:GetService("RunService"):Set3dRenderingEnabled(false)
    elseif _G.WhiteScreen == false then
        game:GetService("RunService"):Set3dRenderingEnabled(true)
            end
        end)
        Options.ToggleWhite:SetValue(false)
      


        local SKill = Tabs.Setting:AddSection("Skill Mastery")
local ToggleZ = Tabs.Setting:AddToggle("ToggleZ", {Title = "Skill Z",Description = "", Default = true })
ToggleZ:OnChanged(function(Value)
    SkillZ = Value
end)
Options.ToggleZ:SetValue(true)

local ToggleX = Tabs.Setting:AddToggle("ToggleX", {Title = "Skill X", Description = "",Default = true })
ToggleX:OnChanged(function(Value)
    SkillX = Value
end)
Options.ToggleX:SetValue(true)


local ToggleC = Tabs.Setting:AddToggle("ToggleC", {Title = "Skill C",Description = "", Default = true })
ToggleC:OnChanged(function(Value)
    SkillC = Value
end)
Options.ToggleC:SetValue(true)


local ToggleV = Tabs.Setting:AddToggle("ToggleV", {Title = "Skill V",Description = "", Default = true })
ToggleV:OnChanged(function(Value)
    SkillV = Value
end)
Options.ToggleV:SetValue(true)


local ToggleF = Tabs.Setting:AddToggle("ToggleF", {Title = "Skill F",Description = "", Default = false })
ToggleF:OnChanged(function(Value)
   SkillF = Value
    end)
Options.ToggleF:SetValue(false)


local Pos = Tabs.Setting:AddSection("Distance Farm")

local SliderPosX = Tabs.Setting:AddSlider("SliderPosX", {
    Title = "Pos X",
    Description = "",
    Default = 0,
    Min = -60,
    Max = 60,
    Rounding = 1,
    Callback = function(Value)
      posX = Value
    end
})
SliderPosX:OnChanged(function(Value)
  posX = Value
end)
SliderPosX:SetValue(0)

local SliderPosY = Tabs.Setting:AddSlider("SliderPosY", {
    Title = "Pos Y",
    Description = "",
    Default = 30,
    Min = -60,
    Max = 60,
    Rounding = 1,
    Callback = function(Value)
      posY = Value
    end
})
SliderPosY:OnChanged(function(Value)
  posY = Value
end)
SliderPosY:SetValue(30)

local SliderPosZ = Tabs.Setting:AddSlider("SliderPosZ", {
    Title = "Pos Z",
    Description = "",
    Default = 0,
    Min = -60,
    Max = 60,
    Rounding = 1,
    Callback = function(Value)
      posZ = Value
    end
})
SliderPosZ:OnChanged(function(Value)
     posZ = Value
end)
SliderPosZ:SetValue(0)


--------------------------------------------------------------------------------------------------------------------------------------------
--Status Server
local Time = Tabs.Status:AddParagraph({
        Title = "Time Zone",
        Content = ""
    })
    
    local function UpdateOS()
        local date = os.date("*t")
        local hour = (date.hour) % 24
        local ampm = hour < 12 and "AM" or "PM"
        local timezone = string.format("%02i:%02i:%02i %s", ((hour -1) % 12) + 1, date.min, date.sec, ampm)
        local datetime = string.format("%02d/%02d/%04d", date.day, date.month, date.year)
        local LocalizationService = game:GetService("LocalizationService")
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local name = player.Name
        local result, code = pcall(function()
            return LocalizationService:GetCountryRegionForPlayerAsync(player)
        end)
        Time:SetDesc(datetime.." - "..timezone.." [ " .. code .. " ]")
    end
    spawn(function()
        while true do
            UpdateOS()
            game:GetService("RunService").RenderStepped:Wait()
        end
    end)
    
    local Timekl = Tabs.Status:AddParagraph({
        Title = "Time Sever",
        Content = ""
    })
    
    function UpdateTime()
local GameTime = math.floor(workspace.DistributedGameTime+0.5)
local Hour = math.floor(GameTime/(60^2))%24
local Minute = math.floor(GameTime/(60^1))%60
local Second = math.floor(GameTime/(60^0))%60
Timekl:SetDesc("[Time Sever] : Hours : "..Hour.. "  Minutes : "..Minute.."  Seconds : "..Second)
end

spawn(function()
 while task.wait() do
 pcall(function()
  UpdateTime()
  end)
 end
 end)
 
local FM = Tabs.Status:AddParagraph({
        Title = "Full Moon",
        Content = ""
    })
    
    task.spawn(function()
            while task.wait() do
                pcall(function()
                    if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                        FM:SetDesc("Moon: 5/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                        FM:SetDesc("Moon: 4/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                        FM:SetDesc("Moon: 3/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                        FM:SetDesc("Moon: 2/5")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                        FM:SetDesc("Moon: 1/5")
                    else
                        FM:SetDesc("Moon: 0/5")
                    end
                end)
            end
    end)     
 
local Elite_Hunter_Status = Tabs.Status:AddParagraph({
    Title = "Elite Status",
    Content = "Status: "
})


spawn(function()
    while wait() do
        spawn(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                Elite_Hunter_Status:SetDesc("Status : ✅")    
            else
                Elite_Hunter_Status:SetDesc("Status : ❌")    
            end
        end)
    end
end)

local Kitsune = Tabs.Status:AddParagraph({
    Title = "KITSUNE Island",
    Content = "Status: "
})

spawn(function()
    pcall(function()
        while wait() do
if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
Kitsune:SetDesc('✅')
else
  Kitsune:SetDesc('❌' )
        end
           end
    end)
end)

local Mirragecheck = Tabs.Status:AddParagraph({
    Title = "Mirrage Island",
    Content = "Status: "
})

spawn(function()
    pcall(function()
        while wait() do
if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
Mirragecheck:SetDesc('✅')
else
  Mirragecheck:SetDesc('❌' )end
        end
    end)
end)

local FrozenIsland = Tabs.Status:AddParagraph({
    Title = "Frozen Dimension",
    Content = "Status: "
})

spawn(function()
pcall(function()
    while wait() do
        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Frozen Dimension') then
            FrozenIsland:SetDesc('✅')
        else
            FrozenIsland:SetDesc('❌')
        end
    end
end)
end)

local Input = Tabs.Status:AddInput("Input", {
        Title = "Job Id",
        Default = "",
        Placeholder = "Paste Job Id",
        Numeric = false, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
            _G.Job = Value
        end
    })
    
    Tabs.Status:AddButton({
        Title = "Start Join Job ID",
        Description = "",
        Callback = function()
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
        end
    })
    
    Tabs.Status:AddButton({
        Title = "Copy Job ID",
        Description = "",
        Callback = function()
            setclipboard(tostring(game.JobId))
        end
    })
            
    local Toggle = Tabs.Status:AddToggle("MyToggle", {Title = "Spam Join Job Id", Default = false })
    Toggle:OnChanged(function(Value)
  _G.Join = Value
		end)
		
		spawn(function()
while wait() do
if _G.Join then
game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
end
end
end)




local ToggleMelee = Tabs.ST:AddToggle("ToggleMelee", {Title = "Auto Melee",Description = "Nâng Cận Chiến", Default = false })
ToggleMelee:OnChanged(function(Value)
    _G.Auto_Stats_Melee = Value
    end)
Options.ToggleMelee:SetValue(false)



local ToggleDe = Tabs.ST:AddToggle("ToggleDe", {Title = "Auto Defense",Description = "Nâng Phòng Thủ ", Default = false })
ToggleDe:OnChanged(function(Value)
    _G.Auto_Stats_Defense = Value
    end)
Options.ToggleDe:SetValue(false)



local ToggleSword = Tabs.ST:AddToggle("ToggleSword", {Title = "Auto Sword",Description = "Nâng Kiếm", Default = false })
ToggleSword:OnChanged(function(Value)
    _G.Auto_Stats_Sword = Value
    end)
Options.ToggleSword:SetValue(false)



local ToggleGun = Tabs.ST:AddToggle("ToggleGun", {Title = "Auto Gun", Description = "Nâng Súng",Default = false })
ToggleGun:OnChanged(function(Value)
    _G.Auto_Stats_Gun = Value
    end)
Options.ToggleGun:SetValue(false)


local ToggleFruit = Tabs.ST:AddToggle("ToggleFruit", {Title = "Auto Demon Fruit",Description = "Nâng Trái", Default = false })
ToggleFruit:OnChanged(function(Value)
    _G.Auto_Stats_Devil_Fruit = Value
    end)
Options.ToggleFruit:SetValue(false)


spawn(function()
    while wait() do
        if _G.Auto_Stats_Devil_Fruit then
            local args = {
                [1] = "AddPoint",
                [2] = "Demon Fruit",
                [3] = 3
            }
                        
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Stats_Gun then
            local args = {
                [1] = "AddPoint",
                [2] = "Gun",
                [3] = 3
            }
                        
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)


spawn(function()
    while wait() do
        if _G.Auto_Stats_Sword then
            local args = {
                [1] = "AddPoint",
                [2] = "Sword",
                [3] = 3
            }
                        
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait() do
        if _G.Auto_Stats_Defense then
            local args = {
                [1] = "AddPoint",
                [2] = "Defense",
                [3] = 3
            }
                        
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)


spawn(function()
    while wait() do
        if _G.Auto_Stats_Melee then
            local args = {
                [1] = "AddPoint",
                [2] = "Melee",
                [3] = 3
            }
                        
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    end
end)
--------------------------------------------------------------------------------------------------------------------------------------------
--Player

local Playerslist = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist,v.Name)
end

local SelectedPly = Tabs.Player:AddDropdown("SelectedPly", {
    Title = "Select Player",
    Description = "Chọn Người Chơi",
    Values = Playerslist,
    Multi = false,
    Default = 1,
})

SelectedPly:SetValue("nil")
SelectedPly:OnChanged(function(Value)
    _G.SelectPly = Value
end)


Tabs.Player:AddButton({
    Title = "Refresh Player",
    Description = "Làm Mới Người Chơi",
    Callback = function()
        table.clear(Playerslist)
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            table.insert(Playerslist,v.Name)
        end
    end
})

local ToggleTeleport = Tabs.Player:AddToggle("ToggleTeleport", {Title = "Teleport To Player", Description = "",Default = false })
ToggleTeleport:OnChanged(function(Value)
    _G.TeleportPly = Value
    if Value == false then
        wait()
        AutoHaki()
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
    end
end)
Options.ToggleTeleport:SetValue(false)

spawn(function()
	while wait() do
		if _G.TeleportPly then
			pcall(function()
				if game.Players:FindFirstChild(_G.SelectPly) then
					toTarget(game.Players[_G.SelectPly].Character.HumanoidRootPart.CFrame)
				end
			end)
		end
	end
end)




local ToggleQuanSat = Tabs.Player:AddToggle("ToggleQuanSat", {Title = "Spectate Player",Description = "Xem Người Người Chơi", Default = false })
ToggleQuanSat:OnChanged(function(Value)
    SpectatePlys = Value
    local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
    local plr2 = game:GetService("Players"):FindFirstChild(_G.SelectPly)
    repeat wait(.1)
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid
    until SpectatePlys == false 
    game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
end)
Options.ToggleQuanSat:SetValue(false)






local ToggleFastAttack = Tabs.Player:AddToggle("ToggleFastAttack", {Title = " Click Attack Player",Description = "Đánh Người Chơi Click", Default = false })

ToggleFastAttack:OnChanged(function(Value)
 _G.FastAttackWinterhub = Value
end)
Options.ToggleFastAttack:SetValue(false)



local SliderDelayAttackPlayer = Tabs.Player:AddSlider("SliderDelayAttackPlayer", {
    Title = "Delay Fast (sec)",
    Description = "",
    Default = 0.1,
    Min = 0,
    Max = 5,
    Rounding = 1,
    Callback = function(Value)
       _G.DelayAttackPlayer = Value
    end
})

SliderDelayAttackPlayer:OnChanged(function(Value)
   _G.DelayAttackPlayer = Value
end)

SliderDelayAttackPlayer:SetValue(0.1)

spawn(function()
while wait() do
    pcall(function()
        if _G.FastAttackWinterhub then
            repeat wait(_G.DelayAttackPlayer)
               AttackNoCoolDown()
            until not _G.FastAttackWinterhub
        end
    end)
end
end)
local Camera = require(game.ReplicatedStorage.Util.CameraShaker)
Camera:Stop()


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

local Teleport = Tabs.Player:AddSection("Combat")


local SlidershowFov = Tabs.Player:AddSlider("SlidershowFov", {
    Title = "Size Fov",
    Description = "",
    Default = 100,
    Min = 0,
    Max = 500,
    Rounding = 1,
    Callback = function(Value)
        _G.Select_Size_Fov = Value
    end
})

SlidershowFov:OnChanged(function(Value)
    _G.Select_Size_Fov = Value
end)
SlidershowFov:SetValue(100)


local ToggleShowFov = Tabs.Player:AddToggle("ToggleShowFov", {Title = "Show Fov",Description = "", Default = false })
ToggleShowFov:OnChanged(function(value)
    _G.Show_Fov = value
end)
Options.ToggleShowFov:SetValue(false)


local ToggleAimBotSkill = Tabs.Player:AddToggle("ToggleAimBotSkill", {Title = "Auto Aimbot Skill",Description = "Ngắm Mục Tiêu", Default = false })
ToggleAimBotSkill:OnChanged(function(Value)
    _G.Aimbot_Skill_Fov = Value
end)
Options.ToggleAimBotSkill:SetValue(false)
local lp = game:GetService('Players').LocalPlayer
local mouse = lp:GetMouse()
spawn(function()
	while wait() do
		if _G.Aimbot_Skill_Fov then
			pcall(function()
				local MaxDist, Closest = math.huge
				for i,v in pairs(game:GetService("Players"):GetChildren()) do 
					local Head = v.Character:FindFirstChild("HumanoidRootPart")
					local Pos, Vis = game.Workspace.CurrentCamera.WorldToScreenPoint(game.Workspace.CurrentCamera, Head.Position)
					local MousePos, TheirPos = Vector2.new(mouse.X, mouse.Y), Vector2.new(Pos.X, Pos.Y)
					local Dist = (TheirPos - MousePos).Magnitude
					if Dist < MaxDist and Dist <= _G.Select_Size_Fov and v.Name ~= game.Players.LocalPlayer.Name then
						MaxDist = Dist
						_G.Aim_Players = v
					end
				end
			end)
		end
	end
end)
spawn(function()
	local gg = getrawmetatable(game)
	local old = gg.__namecall
	setreadonly(gg,false)
	gg.__namecall = newcclosure(function(...)
		local method = getnamecallmethod()
		local args = {...}
		if tostring(method) == "FireServer" then
			if tostring(args[1]) == "RemoteEvent" then
				if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
					if _G.Aimbot_Skill_Fov then
						args[2] = _G.Aim_Players.Character.HumanoidRootPart.Position
						return old(unpack(args))
					end
				end
			end
		end
		return old(...)
	end)
end)


local Circle = Drawing.new("Circle")
Circle.Color =  Color3.fromRGB(0, 244, 0)
Circle.Thickness = 1
Circle.Radius = 250
Circle.NumSides = 460
Circle.Filled = false
Circle.Transparency = 1

game:GetService("RunService").Stepped:Connect(function()
    Circle.Radius = _G.Select_Size_Fov
    Circle.Thickness = 1
    Circle.NumSides = 460
    Circle.Position = game:GetService('UserInputService'):GetMouseLocation()
    if _G.Show_Fov then
        Circle.Visible = true
    else
        Circle.Visible = false
    end
end)



--------------------------------------------------------------------------------------------------------------------------------------------
local Mastery = Tabs.Player:AddSection("Misc")


local ToggleNoClip = Tabs.Player:AddToggle("ToggleNoClip", {Title = "Auto No Clip",Description = "Xuyên Tường", Default = false })
ToggleNoClip:OnChanged(function(value)
    _G.LOf = value
end)
Options.ToggleNoClip:SetValue(false)
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.LOf then
                for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
        end)
    end)
end)


local ToggleWalkonWater = Tabs.Player:AddToggle("ToggleWalkonWater", {Title = "Walk on Water",Description = "Đi Trên Nước", Default = true })
ToggleWalkonWater:OnChanged(function(Value)
  _G.WalkonWater = Value
end)
Options.ToggleWalkonWater:SetValue(true)
spawn(function()
  while task.wait() do
    pcall(function()
      if _G.WalkonWater then
        game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
      else
        game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
      end
    end)
  end
end)


local ToggleSpeedRun = Tabs.Player:AddToggle("ToggleSpeedRun", {Title = "Auto Run Speed",Description = "Tốc Độ Chạy", Default = true })
ToggleSpeedRun:OnChanged(function(Value)
    InfAbility = Value
    if Value == false then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
    end
end)
Options.ToggleSpeedRun:SetValue(true)
spawn(function()
    while wait() do
        if InfAbility then
            InfAb()
        end
    end
end)
function InfAb()
    if InfAbility then
        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0,0,0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0,0)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0);
                NumberSequenceKeypoint.new(1, 4); 
            }
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(9999, 99999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(0,0,0,0)
            inf.Texture = ""
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))
            inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        end
    else
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end
end



local ToggleEnablePvp = Tabs.Player:AddToggle("ToggleEnablePvp", {Title = "Auto Enable PVP", Description = "Tự Động Bật PvP",Default = false })
ToggleEnablePvp:OnChanged(function(Value)
  _G.EnabledPvP = Value
end)
Options.ToggleEnablePvp:SetValue(false)

spawn(function()
  pcall(function()
      while wait() do
          if _G.EnabledPvP then
              if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
              end
          end
      end
  end)
end)


--[[
local ToggleSoruNOCD = Tabs.Player:AddToggle("ToggleSoruNOCD", {Title = "Soru No Cooldown", Default = false })
ToggleSoruNOCD:OnChanged(function(Value)
    _G.SoruNoCd = Value
	NoCooldown()
end)
Options.ToggleSoruNOCD:SetValue(false)
function NoCooldown()
	for i,v in next, getgc() do
		if typeof(v) == "function" then
			if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Dodge") and _G.DashNoCd then
				for i2,v2 in next, getupvalues(v) do
					if tostring(v2) == "0.4" then
						repeat wait(.1)
							setupvalue(v,i2,0)
						until not _G.DashNoCd
					end
				end
			end
			if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Geppo") and _G.GeppoNoCd then
				for i2,v2 in next, getupvalues(v) do
					if tostring(v2) == "0" then
						repeat wait(.1)
							setupvalue(v,i2,0)
						until not _G.GeppoNoCd
					end
				end
			end
			if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Soru") and _G.SoruNoCd then
				for i2,v2 in pairs(debug.getupvalues(v)) do
					if type(v2) == 'table' then
						if v2.LastUse then
							repeat wait(_G.Fast_Delay)
								setupvalue(v, i2, {LastAfter = 0,LastUse = 0})
							until not _G.SoruNoCd
						end
					end
				end
			end
		end
	end
end
--------------------------------------------------------------------------------------------------------------------------------------------
local ToggleGeppoNoCD = Tabs.Player:AddToggle("ToggleGeppoNoCD", {Title = "Geppo No Cooldown", Default = false })
ToggleGeppoNoCD:OnChanged(function(Value)
    _G.GeppoNoCd = Value
		NoCooldown()
end)
Options.ToggleGeppoNoCD:SetValue(false)
--------------------------------------------------------------------------------------------------------------------------------------------
local ToggleDashNoCD = Tabs.Player:AddToggle("ToggleDashNoCD", {Title = "Dash No Cooldown", Default = false })
ToggleDashNoCD:OnChanged(function(Value)
    _G.DashNoCd = Value
    DodgeNoCoolDown()
end)
Options.ToggleDashNoCD:SetValue(false)
function DodgeNoCoolDown()
    if _G.DashNoCd then
        for i, v in next, getgc() do
            if game.Players.LocalPlayer.Character.Dodge then
                if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character.Dodge then
                    for i2, v2 in next, getupvalues(v) do
                        if tostring(v2) == "0.4" then
                            repeat
                                wait(.1)
                                setupvalue(v, i2, 0)
                            until not _G.DashNoCd
                        end
                    end
                end
            end
        end
    end
end

--------------------------------------------------------------------------------------------------------------------------------------------
local ToggleSpeedHack = Tabs.Player:AddToggle("ToggleSpeedHack", {Title = "Speed Hack", Default = true })
ToggleSpeedHack:OnChanged(function(Value)
    _G.SpeedHack = Value
    InfAbility()
end)
Options.ToggleSpeedHack:SetValue(true)

function InfAbility()
    if _G.SpeedHack then
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
            inf.VelotyInheritance = 0
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

--------------------------------------------------------------------------------------------------------------------------------------------
local ToggleWalkOnWater = Tabs.Player:AddToggle("ToggleWalkOnWater", {Title = "Wakl On Water", Default = true })
ToggleWalkOnWater:OnChanged(function(Value)
    _G.WalkWater = Value
end)
Options.ToggleWalkOnWater:SetValue(true)
 
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
]]
-----------------------------------------------------------------------------------------------------------------------------------------------
--Teleport
local Teleport = Tabs.Teleport:AddSection("Teleport World")

Tabs.Teleport:AddButton({
    Title = "First Sea 1",
    Description = "Qua Sea 1",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})



Tabs.Teleport:AddButton({
    Title = "Second Sea 2",
    Description = "Qua Sea 2",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})



Tabs.Teleport:AddButton({
    Title = "Third Sea 3",
    Description = "Qua Sea 3",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})



local Mastery = Tabs.Teleport:AddSection("Teleport Island")

if First_Sea then
 IslandList = {
                "WindMill",
                "Marine",
                "Middle Town",
                "Jungle",
                "Pirate Village",
                "Desert",
                "Snow Island",
                "MarineFord",
                "Colosseum",
                "Sky Island 1",
                "Sky Island 2",
                "Sky Island 3",
                "Prison",
                "Magma Village",
                "Under Water Island",
                "Fountain City",
                "Shank Room",
                "Mob Island",
}

elseif Second_Sea then
       IslandList = {
        "The Cafe",
        "Frist Spot",
        "Dark Area",
        "Flamingo Mansion",
        "Flamingo Room",
        "Green Zone",
        "Factory",
        "Colossuim",
        "Zombie Island",
        "Two Snow Mountain",
        "Punk Hazard",
        "Cursed Ship",
        "Ice Castle",
        "Forgotten Island",
        "Ussop Island",
        "Mini Sky Island",
       }

elseif Third_Sea then
    IslandList = {
        "Mansion",
        "Port Town",
        "Great Tree",
        "Castle On The Sea",
        "MiniSky", 
        "Hydra Island",
        "Floating Turtle",
        "Haunted Castle",
        "Ice Cream Island",
        "Peanut Island",
        "Cake Island",
        "Cocoa Island",
        "Candy Island",
        "Tiki Outpost",
       }
    end

local DropdownIsland = Tabs.Teleport:AddDropdown("DropdownIsland",{
    Title = "choose island",
    Description = "Chọn Đảo",
    Values = IslandList,
    Multi = false,
    Default = 1,
})

DropdownIsland:SetValue("...")
DropdownIsland:OnChanged(function(Value)
    _G.SelectIsland = Value
end)

Tabs.Teleport:AddButton({
    Title = "Tween island",
    Description = "Di Chuyển Đảo",
    Callback = function()
            if _G.SelectIsland == "WindMill" then
                toTarget(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
            elseif _G.SelectIsland == "Marine" then
                toTarget(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
            elseif _G.SelectIsland == "Middle Town" then
                toTarget(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
            elseif _G.SelectIsland == "Jungle" then
                toTarget(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
            elseif _G.SelectIsland == "Pirate Village" then
                toTarget(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
            elseif _G.SelectIsland == "Desert" then
                toTarget(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
            elseif _G.SelectIsland == "Snow Island" then
                toTarget(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
            elseif _G.SelectIsland == "MarineFord" then
                toTarget(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
            elseif _G.SelectIsland == "Colosseum" then
                toTarget( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
            elseif _G.SelectIsland == "Sky Island 1" then
                toTarget(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
            elseif _G.SelectIsland == "Sky Island 2" then  
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            elseif _G.SelectIsland == "Sky Island 3" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            elseif _G.SelectIsland == "Prison" then
                toTarget( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
            elseif _G.SelectIsland == "Magma Village" then
                toTarget(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
            elseif _G.SelectIsland == "Under Water Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif _G.SelectIsland == "Fountain City" then
                toTarget(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
            elseif _G.SelectIsland == "Shank Room" then
                toTarget(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
            elseif _G.SelectIsland == "Mob Island" then
                toTarget(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
            elseif _G.SelectIsland == "The Cafe" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
                wait(0.1)
                Tween2(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
            elseif _G.SelectIsland == "Frist Spot" then
                toTarget(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
            elseif _G.SelectIsland == "Dark Area" then
                toTarget(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
            elseif _G.SelectIsland == "Flamingo Mansion" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
            elseif _G.SelectIsland == "Flamingo Room" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.152034759521484, 905.48291015625))
            elseif _G.SelectIsland == "Green Zone" then
                toTarget( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
            elseif _G.SelectIsland == "Factory" then
                toTarget(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
            elseif _G.SelectIsland == "Colossuim" then
                toTarget( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
            elseif _G.SelectIsland == "Zombie Island" then
                toTarget(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
            elseif _G.SelectIsland == "Two Snow Mountain" then
                toTarget(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
            elseif _G.SelectIsland == "Punk Hazard" then
                toTarget(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
            elseif _G.SelectIsland == "Cursed Ship" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.40197753906, 125.05712890625, 32885.875))
            elseif _G.SelectIsland == "Ice Castle" then
                toTarget(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
            elseif _G.SelectIsland == "Forgotten Island" then
                toTarget(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
            elseif _G.SelectIsland == "Ussop Island" then
                toTarget(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
            elseif _G.SelectIsland == "Mini Sky Island" then
                Tween2(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
            elseif _G.SelectIsland == "Great Tree" then
                toTarget(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
            elseif _G.SelectIsland == "Castle On The Sea" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
            elseif _G.SelectIsland == "MiniSky" then
                Tween2(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
            elseif _G.SelectIsland == "Port Town" then
                toTarget(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
            elseif _G.SelectIsland == "Hydra Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5753.5478515625, 610.7880859375, -282.33172607421875))
            elseif _G.SelectIsland == "Floating Turtle" then
                toTarget(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
            elseif _G.SelectIsland == "Mansion" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12468.5380859375, 375.0094299316406, -7554.62548828125))
            elseif _G.SelectIsland == "Haunted Castle" then
                toTarget(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
            elseif _G.SelectIsland == "Ice Cream Island" then
                toTarget(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
            elseif _G.SelectIsland == "Peanut Island" then
                toTarget(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
            elseif _G.SelectIsland == "Cake Island" then
                toTarget(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
            elseif _G.SelectIsland == "Cocoa Island" then
                toTarget(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
            elseif _G.SelectIsland == "Candy Island" then
                toTarget(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
            elseif _G.SelectIsland == "Tiki Outpost" then
                toTarget(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
            end
        end
    })

    Tabs.Teleport:AddButton({
        Title = "Stop Tween island",
        Description = "Dừng Bay",
        Callback = function()
          CancelTween()
        end
    })


--------------------------------------------------------------------------------------------------------------------------------------------
--Fruit

local Remote_GetFruits = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
Table_DevilFruitSniper = {}
ShopDevilSell = {}
for i,v in next,Remote_GetFruits do
    table.insert(Table_DevilFruitSniper,v.Name)
    if v.OnSale then 
        table.insert(ShopDevilSell,v.Name)
    end
end
_G.SelectFruit = "Leopard-Leopard"

local DropdownFruit = Tabs.Fruit:AddDropdown("DropdownFruit", {
    Title = "Select Fruit",
    Description = "Chọn Trái",
    Values = Table_DevilFruitSniper,
    Multi = false,
    Default = 1,
})

DropdownFruit:SetValue("...")

DropdownFruit:OnChanged(function(Value)
    _G.SelectFruit = Value
end)


local ToggleFruit = Tabs.Fruit:AddToggle("ToggleFruit", {Title = "Auto Buy Fruit Sniper",Description = "Mua Trái Blox Sniper", Default = false })
ToggleFruit:OnChanged(function(Value)
    _G.AutoBuyFruitSniper = Value
end)
Options.ToggleFruit:SetValue(false)
spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.AutoBuyFruitSniper then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit","_G.SelectFruit",false)
            end 
        end
    end)
end)


local ToggleStore = Tabs.Fruit:AddToggle("ToggleStore", {Title = "Auto Store Fruit",Description = "Lưu Trái Vào Kho", Default = false })
ToggleStore:OnChanged(function(Value)
    _G.AutoStoreFruit = Value
end)
Options.ToggleStore:SetValue(false)

spawn(function()
    while task.wait() do
        if _G.AutoStoreFruit then
            pcall(function()
                if _G.AutoStoreFruit then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rocket-Rocket",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Falcon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Falcon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("alcon Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ghost-Ghost",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Door-Door",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit"))
                    end

                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Buddha Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buddha",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Buddha Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spider-Spider",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Phoenix Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Phoenix",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Phoenix Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Pain-Pain",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Soul-Soul",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Leopard-Leopard",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
                    end
                end
                end
            end)
        end
        wait(0.3)
    end
    end)



local ToggleRandomFruit = Tabs.Fruit:AddToggle("ToggleRandomFruit", {Title = "Auto Random Fruit",Description = "Mua Trái", Default = false })
ToggleRandomFruit:OnChanged(function(Value)
    _G.Random_Auto = Value
end)
Options.ToggleRandomFruit:SetValue(false)
spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Random_Auto then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end 
        end
    end)
end)

local ToggleCollectTP = Tabs.Fruit:AddToggle("ToggleCollectTP", {Title = "TP Collect Devil Fruit Spam",Description = "Dịch Chuyển Tức Thời Đến Fruit Spam", Default = false })
ToggleCollectTP:OnChanged(function(Value)
    _G.CollectFruitTP = Value
end)
Options.ToggleCollectTP:SetValue(false)
spawn(function()
		while wait(.1) do
			if _G.CollectFruitTP then
					for i,v in pairs(game.Workspace:GetChildren()) do
						if string.find(v.Name, "Fruit") then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
						end
					end
				end
            end
       end)

local ToggleCollect = Tabs.Fruit:AddToggle("ToggleCollect", {Title = "Move Collect Devil Fruit Spam",Description = "Bay Đến Trái Spam", Default = false })
ToggleCollect:OnChanged(function(Value)
    _G.Tweenfruit = Value
end)
Options.ToggleCollect:SetValue(false)


spawn(function()
    while wait(.1) do
        if _G.Tweenfruit then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    Tween(v.Handle.CFrame)
                end
            end
        end
end
end)

local Mastery = Tabs.Fruit:AddSection("Rain Fruit")

Tabs.Fruit:AddButton({
	Title = "Rain Fruit",
	Description = "Fake Trái",
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

local Mastery = Tabs.Fruit:AddSection("Esp")


local ToggleEspPlayer = Tabs.Fruit:AddToggle("ToggleEspPlayer", {Title = "Esp Player",Description = "Định Vị Người Chơi", Default = false })

ToggleEspPlayer:OnChanged(function(Value)
    ESPPlayer = Value
	UpdatePlayerChams()
end)
Options.ToggleEspPlayer:SetValue(false)


local ToggleEspFruit = Tabs.Fruit:AddToggle("ToggleEspFruit", {Title = "Esp Devil Fruit",Description = "Định Vị Trái", Default = false })

ToggleEspFruit:OnChanged(function(Value)
    DevilFruitESP = Value
    while DevilFruitESP do wait()
        UpdateDevilChams() 
    end
end)
Options.ToggleEspFruit:SetValue(false)




local ToggleEspIsland = Tabs.Fruit:AddToggle("ToggleEspIsland", {Title = "Esp Island",Description = "Định Vị Đảo", Default = false })

ToggleEspIsland:OnChanged(function(Value)
    IslandESP = Value
    while IslandESP do wait()
        UpdateIslandESP() 
    end
end)
Options.ToggleEspIsland:SetValue(false)


local ToggleEspFlower = Tabs.Fruit:AddToggle("ToggleEspFlower", {Title = "Esp Flower",Description = "Định Vị Hoa", Default = false })

ToggleEspFlower:OnChanged(function(Value)
    FlowerESP = Value
	UpdateFlowerChams() 
end)
Options.ToggleEspFlower:SetValue(false)


spawn(function()
    while wait(2) do
        if FlowerESP then
            UpdateFlowerChams() 
        end
        if DevilFruitESP then
            UpdateDevilChams() 
        end
        if ChestESP then
            UpdateChestChams() 
        end
        if ESPPlayer then
            UpdatePlayerChams()
        end
        if RealFruitESP then
            UpdateRealFruitChams()
        end
    end
end)







--------------------------------------------------------------------------------------------------------------------------------------------
--Raid



local Chips = {"Flame","Ice","Quake","Light","Dark","Spider","Rumble","Magma","Buddha","Sand","Phoenix","Dough"}

local DropdownRaid = Tabs.Raid:AddDropdown("DropdownRaid", {
    Title = "Select Chip Raid",
    Description = "Chọn Chip",
    Values = Chips,
    Multi = false,
    Default = 1,
})
DropdownRaid:SetValue("...")
DropdownRaid:OnChanged(function(Value)
    SelectChip = Value
end)

local ToggleBuy = Tabs.Raid:AddToggle("ToggleBuy", {Title = "Auto Buy Chip", Description = "Mua Chip",Default = false })
ToggleBuy:OnChanged(function(Value)
    _G.Auto_Buy_Chips_Dungeon = Value
end)
Options.ToggleBuy:SetValue(false)
spawn(function()
    while wait() do
		if _G.Auto_Buy_Chips_Dungeon then
			pcall(function()
				local args = {
					[1] = "RaidsNpc",
					[2] = "Select",
					[3] = SelectChip
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
        end
    end
end)


    local ToggleStart = Tabs.Raid:AddToggle("ToggleStart", {Title = "Auto Start Raid",Description = "Vào Đảo Raid", Default = false })
    ToggleStart:OnChanged(function(Value)
        _G.Auto_StartRaid = Value
end)
Options.ToggleStart:SetValue(false)

spawn(function()
    while wait(.1) do
        pcall(function()
            if _G.Auto_StartRaid then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if Second_Sea then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif Third_Sea then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)


local ToggleKillAura = Tabs.Raid:AddToggle("ToggleKillAura", {Title = "Auto Kill Aura",Description = "Kill Quái Đảo Raid", Default = false })
ToggleKillAura:OnChanged(function(Value)
    KillAura = Value
end)
Options.ToggleKillAura:SetValue(false)
spawn(function()
    while wait() do
        if KillAura then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            sethiddenproperty(game:GetService('Players').LocalPlayer,"SimulationRadius",math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                        until not KillAura or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end)
        end
    end
end)


local ToggleNextIsland = Tabs.Raid:AddToggle("ToggleNextIsland", {Title = "Auto Next Island",Description = "Qua Đảo", Default = false })
ToggleNextIsland:OnChanged(function(Value)
    AutoNextIsland = Value
end)
Options.ToggleNextIsland:SetValue(false)
spawn(function()
    while task.wait() do
        if AutoNextIsland then
            pcall(function()
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0,70,100))
                    elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        Tween(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0,70,100))
                    end
                end
            end)
        end
    end
end)



local ToggleAwake = Tabs.Raid:AddToggle("ToggleAwake", {Title = "Auto Awake",Description = "Tự Động Thức Tỉnh", Default = false })
ToggleAwake:OnChanged(function(Value)
    AutoAwakenAbilities = Value
end)
Options.ToggleAwake:SetValue(false)
spawn(function()
    while task.wait() do
        if AutoAwakenAbilities then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
            end)
        end
    end
end)


local ToggleGetFruit = Tabs.Raid:AddToggle("ToggleGetFruit", {Title = "Get Fruit Raid",Description = "Lấy Trái Raid", Default = false })
ToggleGetFruit:OnChanged(function(Value)
    _G.Autofruit = Value
end)

spawn(function()
    while wait(.1) do
        pcall(function()
     if _G.Autofruit then
         
local args = {
    [1] = "LoadFruit",
    [2] = "Rocket-Rocket"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))




local args = {
    [1] = "LoadFruit",
    [2] = "Spin-Spin"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Chop-Chop"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))





local args = {
    [1] = "LoadFruit",
    [2] = "Spring-Spring"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Bomb-Bomb"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Smoke-Smoke"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Spike-Spike"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Flame-Flame"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Falcon-Falcon"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Ice-Ice"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Sand-Sand"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Dark-Dark"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Ghost-Ghost"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Diamond-Diamond"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Light-Light"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Rubber-Rubber"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


local args = {
    [1] = "LoadFruit",
    [2] = "Barrier-Barrier"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)
end
end)

if Second_Sea then
Tabs.Raid:AddButton({
    Title = "Move To Raid Lab",
    Description = "Đến Phòng Thí Nghiệm Raid",
    Callback = function()
     Tween2(CFrame.new(-6438.73535, 250.645355, -4501.50684))
end
})
elseif Third_Sea then
    Tabs.Raid:AddButton({
        Title = "Move To Raid Law",
        Description = "Đến Phòng Thí Nghiệm Law",
        Callback = function()
		 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
           Tween2(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
        end
        })
end




local Mastery = Tabs.Raid:AddSection("Auto raid law")


local ToggleLaw = Tabs.Raid:AddToggle("ToggleLaw", {Title = "Auto buy chip kill Law",Description = "Mua Chip Đánh Law", Default = false })

ToggleLaw:OnChanged(function(Value)
    Auto_Law = Value
end)
Options.ToggleLaw:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if Auto_Law then
                if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") and not game:GetService("Workspace").Enemies:FindFirstChild("Order") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                    wait(0.3)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","1")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","2")
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        while wait(0.4) do
            if Auto_Law then
                if not game:GetService("Workspace").Enemies:FindFirstChild("Order") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") then
                        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
                    end
                end
                if game:GetService("ReplicatedStorage"):FindFirstChild("Order") or game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Order" then
                                repeat wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(120, 120, 120)
                                    --Click
                                until not v.Parent or v.Humanoid.Health <= 0 or Auto_Law == false
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                        Tween(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
                    end
                end
            end
        end
    end)
end)

--------------------------------------------------------------------------------------------------------------------------------------------
--RaceV4


Tabs.Race:AddButton({
    Title = "Temple Of Time",
    Description = "Đến Đền Thờ",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
    end
})


Tabs.Race:AddButton({
    Title = "Move Lever Pull",
    Description = "Gạt Cần",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        Tween2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
    end
})


Tabs.Race:AddButton({
    Title = "Move Acient One",
    Description = "Đến Chỗ Mua Gear",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
        Tween2(CFrame.new(28981.552734375, 14888.4267578125, -120.245849609375))
    end
})


local Mastery = Tabs.Race:AddSection("Auto Race")
Tabs.Race:AddButton({
    Title = "Move Race Door",
    Description = "Đến Cửa Tộc",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875))
                    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                    Tween2(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                    Tween2(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                    Tween2(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                    Tween2(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                    Tween2(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
                    elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                    Tween2(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
                    end
    end
})


local ToggleHumanandghoul = Tabs.Race:AddToggle("ToggleHumanandghoul", {Title = "Auto Trial Human Ghoul",Description = "Trial Tộc Human + Ghoul", Default = false })
ToggleHumanandghoul:OnChanged(function(Value)
    KillAura = Value
end)
Options.ToggleHumanandghoul:SetValue(false)


local ToggleAutotrial = Tabs.Race:AddToggle("ToggleAutotrial", {Title = "Auto Trial all race",Description = "Trial Tất Cả Tộc", Default = false })
ToggleAutotrial:OnChanged(function(Value)
    _G.AutoQuestRace = Value
end)
Options.ToggleAutotrial:SetValue(false)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
				if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
					for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
						if v.Name ==  "snowisland_Cylinder.081" then
							BTPZ(v.CFrame* CFrame.new(0,0,0))
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
					for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
						if v.Name ==  "HumanoidRootPart" then
							Tween(v.CFrame* Pos)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Melee" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Blox Fruit" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Sword" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Gun" then
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
					Tween(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
					for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
						if v.Name == "StartPoint" then
							Tween(v.CFrame* CFrame.new(0,10,0))
					  	end
				   	end
				end
			end
        end
    end)
end)


local ToggleKillPlayerTrial = Tabs.Race:AddToggle("ToggleKillPlayerTrial", {Title = "Auto Kill player Trial!",Description = "Giết Người Chơi Hoàn Thành Ải!", Default = false })
ToggleKillPlayerTrial:OnChanged(function(Value)
    _G.KillAfterTrials = value
end)

    
local Mastery = Tabs.Race:AddSection("Auto Train")

local ToggleAutoAcientQuest = Tabs.Race:AddToggle("ToggleAutoAcientQuest", {Title = "Auto Train",Description = "Cày Bật Tộc", Default = false })
ToggleAutoAcientQuest:OnChanged(function(Value)
    AutoFarmAcient = Value
end)
Options.ToggleAutoAcientQuest:SetValue(false)
local AcientCframe = CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875)

spawn(function()
    pcall(function()
        while wait() do
            if AutoFarmAcient then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
                    AutoFarmAcient = false
                    toTarget(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875))
                end
            end
        end
    end)
end)
spawn(function()
    while wait() do 
        if AutoFarmAcient then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
                           if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    bringmob = true
                                    repeat wait(_G.Fast_Delay)
                                    AttackNoCoolDown()
                                    AutoHaki()
                                    EquipTool(SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    FarmPos = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Tween(v.HumanoidRootPart.CFrame * CFrame.new(posX,posY,posZ))
                                until not AutoFarmAcient or not v.Parent or v.Humanoid.Health <= 0
                          bringmob = false
                            end
                        end
                    end
                else
                toTarget(AcientCframe)
                end
            end)
        end
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if AutoFarmAcient then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                    AutoFarmAcient = true
                end
            end
        end
    end)
end)
spawn(function()
while wait() do
    pcall(function()
        if AutoFarmAcient then
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
            wait(0.1)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
        end
    end)
end
end)

--------------------------------------------------------------------------------------------------------------------------------------------
--shop



Tabs.Shop:AddButton({
	Title = "BuyGeppo",
	Description = "$10,000",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
	end
})



Tabs.Shop:AddButton({
	Title = "Buy Buso Haki",
	Description = "$25,000",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
	end
})




Tabs.Shop:AddButton({
	Title = "Buy Soru",
	Description = "$100.000",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
	end
})


Tabs.Shop:AddButton({
	Title = "Buy Ken Haki",
	Description = "$700,000",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
	end
})

local Mastery = Tabs.Shop:AddSection("Fighting Styles")


Tabs.Shop:AddButton({
	Title = "Buy Black Leg",
	Description = "$150,000",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
	end
})

Tabs.Shop:AddButton({
	Title = "Buy Electric",
	Description = "$500,000",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
	end
})
Tabs.Shop:AddButton({
	Title = "Buy Water Kung Fu",
	Description = "$750,000",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
	end
})
Tabs.Shop:AddButton({
	Title = "Buy Dragon Claw",
	Description = "1,500F",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
	end
})
Tabs.Shop:AddButton({
	Title = "Buy Superhuman",
	Description = "$3,000,000",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
	end
})
Tabs.Shop:AddButton({
	Title = "Buy Death Step",
	Description = "$2.500.000 5.000F",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
	end
})
Tabs.Shop:AddButton({
	Title = "Buy Sharkman Karate",
	Description = "$2.500.000 5.000F",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
	end
})
Tabs.Shop:AddButton({
	Title = "Buy Electric Claw",
	Description = "$3.000.000 5.000F",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
	end
})
Tabs.Shop:AddButton({
	Title = "Buy Dragon Talon",
	Description = "$3.000.000 5.000F",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
	end
})
Tabs.Shop:AddButton({
	Title = "Buy Godhuman",
	Description = "$5.000.000 5.000F",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
	end
})

Tabs.Shop:AddButton({
        Title = "Buy Sanguine Art",
        Description = "$5.000.000 5.000F",
        Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt")
        end
    })


local Mastery = Tabs.Shop:AddSection("Misc Items")

Tabs.Shop:AddButton({
	Title = "Buy Refund Stats",
	Description = "2,500F",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
	end
})
Tabs.Shop:AddButton({
	Title = "Buy Reroll Race",
	Description = "3,000F",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
	end
})
Tabs.Shop:AddButton({
        Title = "Buy Race Cyborg",
        Description = "2.500F",
        Callback = function()            
local args = {[1] = "CyborgTrainer", [2] = "Buy"}
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })
    Tabs.Shop:AddButton({
        Title = "Buy Race Ghoul",
        Description = "100 Vật Chất",
        Callback = function()            
local args = {[1] = "Ectoplasm", [2] = "BuyCheck", [3] = 4}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        local args = {[1] = "Ectoplasm", [2] = "Change", [3] = 4}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
    })    

--------------------------------------------------------------------------------------------------------------------------------------------
--misc


local Mastery = Tabs.Misc:AddSection("Team")


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

local Mastery = Tabs.Misc:AddSection("Open Ui")

Tabs.Misc:AddButton({
	Title = "Devil Shop Menu",
	Description = "",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
	end
})



Tabs.Misc:AddButton({
	Title = "Color Haki Menu",
	Description = "",
	Callback = function()
		game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
	end
})



Tabs.Misc:AddButton({
	Title = "Title Name Menu",
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
	Title = "Awakening Menu",
	Description = "",
	Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
	end
})



local Mastery = Tabs.Misc:AddSection("Misc")


local ToggleRejoin = Tabs.Misc:AddToggle("ToggleRejoin", {Title = "Auto Rejoin", Description = "",Default = true })
ToggleRejoin:OnChanged(function(Value)
	_G.AutoRejoin = Value
end)

Options.ToggleRejoin:SetValue(true)
spawn(function()
	while wait() do
		if _G.AutoRejoin then
				getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
					if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
						game:GetService("TeleportService"):Teleport(game.PlaceId)
					end
				 end)
			end
		end
	end)



    local Mastery = Tabs.Misc:AddSection("Kaitun Cap")

Tabs.Misc:AddButton({
	Title = "Auto Show Items",
	Description = "",
	Callback = function()
		do
			local ui = game:GetService("CoreGui").RobloxGui.Modules.Profile:FindFirstChild("UILibrary")
			if ui then ui:Destroy() end
		end
		local UserInputService = game:GetService("UserInputService")
		local TweenService = game:GetService("TweenService")
		local RunService = game:GetService("RunService")
		local LocalPlayer = game:GetService("Players").LocalPlayer
		local Mouse = LocalPlayer:GetMouse()
	
		do
			local ui = game:GetService("Lighting"):FindFirstChild("Blur")
			if ui then ui:Destroy() end
		end
	
		local Blur = Instance.new("BlurEffect")
	
		TweenService:Create(
			Blur,
			TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
			{ Size = 50 }
		):Play()
		Blur.Parent = game.Lighting
	
		local UIStroke = Instance.new("UIStroke")
		local UICorner = Instance.new("UICorner")
	
		local ScreenGui = Instance.new("ScreenGui")
		local ImageButton = Instance.new("ImageButton")
		local RobloxButton = Enum.ButtonStyle.RobloxButton
	
		ScreenGui.Parent = game.CoreGui
		ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	
		local cac = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory)
		local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
		local Items = {}
		local RaityLevel = { "Mythical", "Legendary", "Rare", "Uncommon", "Common" }
		local RaityColor = {
			["Common"] = Color3.fromRGB(179, 179, 179),
			["Uncommon"] = Color3.fromRGB(92, 140, 211),
			["Rare"] = Color3.fromRGB(140, 82, 255),
			["Legendary"] = Color3.fromRGB(213, 43, 228),
			["Mythical"] = Color3.fromRGB(238, 47, 50)
		}
		function GetRaity(color)
			for k, v in pairs(RaityColor) do
				if v == color then return k end
			end
		end
	
		for k, v in pairs(Inventory) do
			Items[v.Name] = v
		end
	
		local total = #getupvalue(cac.UpdateRender, 4)
		local rac = {}
		local allitem = {}
		local total2 = 0
		while total2 < total do
			local i = 0
			while i < 25000 and total2 < total do
				game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition =
					Vector2.new(0, i)
				for k, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do
					if v:IsA("Frame") and not rac[v.ItemName.Text] and v.ItemName.Visible == true then
						local vaihuhu = GetRaity(v.Background.BackgroundColor3)
						if vaihuhu then
							if not allitem[vaihuhu] then
								allitem[vaihuhu] = {}
							end
							table.insert(allitem[vaihuhu], v:Clone())
						end
						total2 = total2 + 1
						rac[v.ItemName.Text] = true
					end
				end
				i = i + 20
			end
			wait()
		end
		function GetXY(vec)
			return vec * 100
		end
	
		local tvk = Instance.new("UIListLayout")
		tvk.FillDirection = Enum.FillDirection.Vertical
		tvk.SortOrder = 2
		tvk.Padding = UDim.new(0, 10)
	
		local Left = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat)
		Left.BackgroundTransparency = 1
		Left.Size = UDim2.new(.5, 0, 1, 0)
		tvk.Parent = Left
	
		local Right = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.BubbleChat)
		Right.BackgroundTransparency = 1
		Right.Size = UDim2.new(.5, 0, 1, 0)
		Right.Position = UDim2.new(.6, 0, 0, 0)
		tvk:Clone().Parent = Right
		for k, v in pairs(allitem) do
			local cac = Instance.new("Frame", Left)
			cac.BackgroundTransparency = 1
			cac.Size = UDim2.new(1, 0, 0, 0)
			cac.LayoutOrder = table.find(RaityLevel, k)
	
			local cac2 = Instance.new("Frame", Right)
			cac2.BackgroundTransparency = 1
			cac2.Size = UDim2.new(1, 0, 0, 0)
			cac2.LayoutOrder = table.find(RaityLevel, k)
	
			local tvk = Instance.new("UIGridLayout", cac)
			tvk.CellPadding = UDim2.new(.005, 0, .005, 0)
			tvk.CellSize = UDim2.new(0, 70, 0, 70)
			tvk.FillDirectionMaxCells = 100
			tvk.FillDirection = Enum.FillDirection.Horizontal
	
			local ccc = tvk:Clone()
			ccc.Parent = cac2
			for k, v in pairs(v) do
				if Items[v.ItemName.Text] and Items[v.ItemName.Text].Mastery then
					if v.ItemLine2.Text ~= "Accessory" then
						local bucac                  = v.ItemName:Clone()
						bucac.BackgroundTransparency = 1
						bucac.TextSize               = 10
						bucac.TextXAlignment         = 2
						bucac.TextYAlignment         = 2
						bucac.ZIndex                 = 5
						bucac.Text                   = Items[v.ItemName.Text].Mastery
						bucac.Size                   = UDim2.new(.5, 0, .5, 0)
						bucac.Position               = UDim2.new(.5, 0, .5, 0)
						bucac.Parent                 = v
					end
					v.Parent = cac
				elseif v.ItemLine2.Text == "Blox Fruit" then
					v.Parent = cac2
				end
			end
			cac.AutomaticSize = 2
			cac2.AutomaticSize = 2
		end
		local ListHuhu = {
			["Superhuman"] = Vector2.new(3, 2),
			["DeathStep"] = Vector2.new(4, 3),
			["ElectricClaw"] = Vector2.new(2, 0),
			["SharkmanKarate"] = Vector2.new(0, 0),
			["DragonTalon"] = Vector2.new(1, 5)
		}
		local MeleeG = Instance.new("Frame", Left)
		MeleeG.BackgroundTransparency = 1
		MeleeG.Size = UDim2.new(1, 0, 0, 0)
		MeleeG.LayoutOrder = table.find(RaityLevel, k)
		MeleeG.AutomaticSize = 2
		MeleeG.LayoutOrder = 100
		local tvk = Instance.new("UIGridLayout", MeleeG)
		tvk.CellPadding = UDim2.new(.005, 0, .005, 0)
		tvk.CellSize = UDim2.new(0, 70, 0, 70)
		tvk.FillDirectionMaxCells = 100
		tvk.FillDirection = Enum.FillDirection.Horizontal
	
		local cac = { "Superhuman", "ElectricClaw", "DragonTalon", "SharkmanKarate", "DeathStep", "GodHuman" }
		for k, v in pairs(cac) do
			if ListHuhu[v] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy" .. v, true) == 1 then
				local huhu = Instance.new("ImageLabel", MeleeG)
				huhu.Image = "rbxassetid://9945562382"
				huhu.ImageRectSize = Vector2.new(100, 100)
				huhu.ImageRectOffset = ListHuhu[v] * 100
			end
		end
		function formatNumber(v)
			return tostring(v):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
		end
	
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.AnchorPoint = Vector2.new(0.5, 0.5)
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0, 1120, 0, 700)
	
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.AnchorPoint = Vector2.new(0.5, 0.5)
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0, 1150, 0, 750)
		local Name = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
		Name.Name = "Name"
		Name.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli
		Name.Position = UDim2.new(0, 0, -1.5, 0)
		Name.Size = UDim2.new(1, 0, 1, 0)
		Name.TextColor3 = Color3.fromRGB(255, 255, 255)
		Name.Text = game.Players.LocalPlayer.Name
	
		local Fragments = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
		Fragments.Name = "FragmentsCheck"
		Fragments.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli
		Fragments.Position = UDim2.new(0, 0, -0.75, 0)
		Fragments.Size = UDim2.new(1, 0, 1, 0)
		Fragments.Text = 'ƒ' .. formatNumber(game:GetService("Players").LocalPlayer.Data.Fragments.Value)
		local args = {
			[1] = "getAwakenedAbilities"
		}
	
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Position = UDim2.new(0.48, 10, 0.908, 2)
		game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Size = UDim2.new(1, 0, 0.22, 0)
	
	
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton.Visible = false
		end)
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.RaceEnergy.Visible = false
		end)
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible = false
		end)
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.HP.Visible = false
		end)
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Backpack.Enabled.Visible = false
		end)
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy.Visible = false
		end)
		for k, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do
			if v:IsA("ImageButton") then
				v:Destroy()
			end
		end
		pcall(function()
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass.Visible = false
		end)
	end
})

local Mastery = Tabs.Misc:AddSection("Day")

Tabs.Misc:AddButton({
	Title = "Auto Remove Fog",
	Description = "",
	Callback = function()
        NoFog()
    end
})
function NoFog()
    local c = game.Lighting
    c.FogEnd = 100000
    for r, v in pairs(c:GetDescendants()) do
        if v:IsA("Atmosphere") then
            v:Destroy()
        end
    end
end

--------------------------------------------------------------------------------------------------------------------------------------------
--Hop

if First_Sea or Second_Sea then
    local Mastery = Tabs.Hop:AddSection("third sea pls !!!!")
end

if Third_Sea then
local ToggleFindMoon = Tabs.Hop:AddToggle("ToggleFindMoon", {Title = "Server Hop Full Moon",Description = "Tìm Full Moon", Default = false })
ToggleFindMoon:OnChanged(function(Value)
    _G.AutoFindMoon = Value
end)
Options.ToggleFindMoon:SetValue(false)


spawn(function()
    while wait() do
        if _G.AutoFindMoon then
        if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" or game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
            wait(2.0)
        elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
            Hop()
            Fluent:Notify({
                Title = "Hiru HuB",
                Content = "Turn Off Find Full Moon...",
                SubContent = "", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })
        elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
            Hop()
            Fluent:Notify({
                Title = "Hiru HuB",
                Content = "Hop...",
                SubContent = "", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })
        elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
            Hop()
            Fluent:Notify({
                Title = "Hiru HuB",
                Content = "Hop...",
                SubContent = "", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })
        else
            Hop()
            end
        end
    end
end)


local ToggleMirageIsland = Tabs.Hop:AddToggle("ToggleMirageIsland", {Title = "Server Hop Mirage Island",Description = "Tìm Đảo Bí Ẩn", Default = false })
ToggleMirageIsland:OnChanged(function(Value)
    _G.FindMirageIsland = Value
end)
Options.ToggleMirageIsland:SetValue(false)

spawn(function()
    while wait() do
    if _G.FindMirageIsland then
        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") or game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
            if HighestPointRealCFrame and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - HighestPointRealCFrame.Position).Magnitude > 10 then
            Tween(getHighestPoint().CFrame * CFrame.new(0, 211.88, 0))
                end
        elseif not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") or not game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
            Hop()
            end
        end
    end
end)
end