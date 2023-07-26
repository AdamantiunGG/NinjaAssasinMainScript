loadstring(game:HttpGet("https://raw.githubusercontent.com/AdamantiunGG/NinjaAssasinMainScript/main/anti%20afk", true))()

local Block = Instance.new("Part", workspace)
Block.Name = "PlatformBlock"
Block.Position = Vector3.new(300000, 300000, 300000)
Block.Size = Vector3.new(10000, 3, 10000)
Block.BrickColor = BrickColor.Random()
Block.CanCollide = true
Block.Anchored = true

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(300000, 300001, 300000)


while wait() do
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == "Train" then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
end

while true do
    wait(0.10)
    game.ReplicatedStorage.RemoteEvent.AddPowerEvent:FireServer("FromTraining", 10)
    wait(0.10)
    game.ReplicatedStorage.RemoteEvent.AddPowerEvent:FireServer("FromTraining", 9)
    wait(0.10)
    game.ReplicatedStorage.RemoteEvent.AddPowerEvent:FireServer("FromTraining", 8)
    wait(0.10)
    game.ReplicatedStorage.RemoteEvent.AddPowerEvent:FireServer("FromTraining", 7)
end
