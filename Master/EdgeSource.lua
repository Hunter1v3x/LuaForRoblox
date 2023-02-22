local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
getgenv().equipe = true -- Auto equipes sword
getgenv().Autofarm = false
getgenv().AutoSell = false
getgenv().AutoBuybelt = false
getgenv().AutoBuysword = false
getgenv().AutoBuyskills = false
getgenv().AutoBuyshuriken = false
getgenv().AutoEvlove = false
getgenv().AutoBoss = false
getgenv().Autohill = false
local GUI = Mercury:Create{
    Name = "LostCane",
    Size = UDim2.fromOffset(650, 400),
    Theme = Mercury.Themes.Aqua,
    Link = "cat_v2 ON SCRIPTBLOX"
}
local Tab = GUI:Tab{
	Name = "Main",
	Icon = "rbxassetid://8569322835"
}
local Tab2 = GUI:Tab{
	Name = "Page2",
	Icon = "rbxassetid://8569322835"
}
GUI:Notification{
	Title = "LostCane | Note",
	Text = "if ur using config might be buggy working on improving them | script made by cat_v2 | more updates soon :)",
	Duration = 10,
	Callback = function() 
     
    end
}
spawn(function()
while wait(0.01) do

if getgenv().Autofarm == true then
game.Players.LocalPlayer.ninjaEvent:FireServer("swingKatana")

end
end
end)
spawn(function()
while wait(0.01) do

if getgenv().equipe == true then
local player = game.Players.LocalPlayer
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackKatanaScript") then
v.attackTime.Value = 0.2
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
for i,v in pairs(player.Backpack:GetChildren()) do
if v.ClassName == "Tool" and v:FindFirstChild("attackShurikenScript") then
player.Character.Humanoid:EquipTool(v)
end
end
end
end


end
end
end)

Tab:Toggle{
	Name = "AutoEquipe",
	StartingState = false,
	Description = "AutoEquipes Sword",
	Callback = function(state) 
     if state == false then
getgenv().equipe = false

     end
    if state == true then
     getgenv().equipe = true

     end
      
    end
}

Tab:Toggle{
	Name = "AutoSwing",
	StartingState = false,
	Description = "AutoSwings Sword",
	Callback = function(state) 
     if state == false then
getgenv().Autofarm = false

     end
    if state == true then
     getgenv().Autofarm = true

     end
      
    end
}




Tab:Toggle{
	Name = "AutoSell",
	StartingState = false,
	Description = "Auto sells stabs",
	Callback = function(state3) 
if state3 == false then
getgenv().AutoSell = false

end
if state3 == true then
getgenv().AutoSell = true
end
spawn(function()

       while wait() do 
if getgenv().AutoSell == true then
 
 game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88, 91245, 146)
wait(.1)
 game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86, 91245, 119)
end
end
end)
end
}
spawn(function()
while wait(0.01) do

if getgenv().AutoBuysword == true then
local oh1 = "buyAllSwords"
local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island", "Sandstorm", "Thunderstorm", "Ancient Inferno Island", "Midnight Shadow Island", "Mythical Souls Island", "Winter Wonder Island"}
for i = 1,#oh2 do
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
end
end
end
end)
Tab:Toggle{
	Name = "AutoBuy Swords",
	StartingState = false,
	Description = "buys every sword in the game",
	Callback = function(state) 
if state == true then
getgenv().AutoBuysword = true
end
if state == false then
getgenv().AutoBuysword = false
end
end
}
spawn(function()
while wait(0.01) do

if getgenv().AutoBuybelt == true then
local oh1 = "buyAllBelts"
local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island", "Sandstorm", "Thunderstorm", "Ancient Inferno Island", "Midnight Shadow Island", "Mythical Souls Island", "Winter Wonder Island"}
for i = 1,#oh2 do
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
end
end
end
end)

Tab:Toggle{
	Name = "AutoBuy Belts",
	StartingState = false,
	Description = "buys every belt in the game",
	Callback = function(state) 
if state == true then
getgenv().AutoBuybelt = true
end
if state == false then
getgenv().AutoBuybelt = false
end
end
}

spawn(function()
while wait(0.01) do

if getgenv().AutoBuyskills == true then
local oh1 = "buyAllSkills"
local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island", "Sandstorm", "Thunderstorm", "Ancient Inferno Island", "Midnight Shadow Island", "Mythical Souls Island", "Winter Wonder Island"}
for i = 1,#oh2 do
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
end
end
end
end)

Tab:Toggle{
	Name = "AutoBuy Skills",
	StartingState = false,
	Description = "buys every skill in the game",
	Callback = function(state) 
if state == true then
getgenv().AutoBuyskills = true
end
if state == false then
getgenv().AutoBuyskills = false
end
end
}


spawn(function()
while wait(0.01) do

if getgenv().AutoBuyrank == true then
spawn(function()
while wait(0.01) do

if getgenv().AutoBuyskills == true then
local oh1 = "buyAllSkills"
local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island", "Sandstorm", "Thunderstorm", "Ancient Inferno Island", "Midnight Shadow Island", "Mythical Souls Island", "Winter Wonder Island"}
for i = 1,#oh2 do
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
end
end
end
end)
end
end
end)


spawn(function()
while wait(0.01) do

if getgenv().AutoBuyshuriken == true then
local oh1 = "buyAllShurikens"
local oh2 = {"Ground", "Astral Island", "Space Island","Tundra Island", "Eternal Island", "Sandstorm", "Thunderstorm", "Ancient Inferno Island", "Midnight Shadow Island", "Mythical Souls Island", "Winter Wonder Island"}
for i = 1,#oh2 do
game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
end
end
end
end)

Tab:Toggle{
	Name = "AutoBuy Ranks",
	StartingState = false,
	Description = "buys every rank in the game",
	Callback = function(state) 
if state == true then
getgenv().AutoBuyrank = true
end
if state == false then
getgenv().AutoBuyrank = false
end
end
}






Tab:Toggle{
	Name = "AutoBuy Shuriken",
	StartingState = false,
	Description = "buys every shuriken in the game",
	Callback = function(state) 
if state == true then
getgenv().AutoBuyshuriken = true
end
if state == false then
getgenv().AutoBuyshuriken = false
end
end
}
Tab:Button{
	Name = "AutoIslands",
	Description = "unlock every island in the game",
	Callback = function() 
for i,v in next, game.workspace.islandUnlockParts:GetChildren() do 
if v then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.islandSignPart.CFrame; 
wait(.5)
end
end

end
}

spawn(function()
while wait(0.01) do

if getgenv().AutoEvlove == true then
for i,v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
for i,x in pairs(v:GetChildren()) do
local oh1 = "evolvePet"
local oh2 = x.Name
game:GetService("ReplicatedStorage").rEvents.petEvolveEvent:FireServer(oh1, oh2)
end
end
end
end
end)




Tab2:Toggle{
	Name = "Auto Evlove Pets",
	StartingState = false,
	Description = "Auto Uprank ur pets",
	Callback = function(state) 
for i,v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetChildren()) do
for i,x in pairs(v:GetChildren()) do
local oh1 = "evolvePet"
local oh2 = x.Name
game:GetService("ReplicatedStorage").rEvents.petEvolveEvent:FireServer(oh1, oh2)
end
end

    end
}

spawn(function()
while wait(0.01) do

if getgenv().AutoBoss == true then
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
if game.Workspace.bossFolder:FindFirstChild("Samurai Santa") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder["Samurai Santa"].HumanoidRootPart.CFrame
else
if not game.Workspace.bossFolder:FindFirstChild("Samurai Santa") then
if game.Workspace.bossFolder:FindFirstChild("AncientMagmaBoss") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.AncientMagmaBoss.HumanoidRootPart.CFrame
else
if not game.Workspace.bossFolder:FindFirstChild("AncientMagmaBoss") then
if game.Workspace.bossFolder:FindFirstChild("EternalBoss") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.EternalBoss.HumanoidRootPart.CFrame
else
if not game.Workspace.bossFolder:FindFirstChild("EternalBoss") then
if game.Workspace.bossFolder:FindFirstChild("RobotBoss") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.RobotBoss.HumanoidRootPart.CFrame
end
end
end
end
end
end
end
end




end
end
end)

Tab2:Toggle{
	Name = "Auto Damage ALL bosses",
	StartingState = false,
	Description = "Auto attack spawned bosses",
	Callback = function(state) 
     if state == true then
         getgenv().AutoBoss = true
     end
       if state == false then
        getgenv().AutoBoss = false
       end
    end
}

spawn(function()
while wait(0.01) do

if getgenv().Autohill == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").kingOfTheHillPart.CFrame

end
end
end)

Tab2:Toggle{
	Name = "Auto Hill king",
	StartingState = false,
	Description = "Auto take over hill",
	Callback = function(state) 
     if state == true then
         getgenv().Autohill = true
     end
       if state == false then
        getgenv().Autohill = false
       end
    end
}



Tab2:Button{
	Name = "AutoChi",
	Description = "Autocollects chi boxes",
	Callback = function() 
     for i,v in pairs(game.Workspace.spawnedCoins.Valley:GetChildren()) do
if v.Name == "Blue Chi Crate" then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
wait(.16)
end
end


    end
}








local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(
function()
vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)
