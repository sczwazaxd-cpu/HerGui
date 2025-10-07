local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- === SCREEN GUI ===
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "HerlanGui"

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 200, 0, 250)
MainFrame.Position = UDim2.new(0.4, 0, 0.3, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui
MainFrame.Active = true
MainFrame.Draggable = true
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 10)

-- === TITLE ===
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 25)
titleLabel.Position = UDim2.new(0, 0, 0, 5)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "HERLAN GUI"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextColor3 = Color3.fromRGB(0, 255, 150)
titleLabel.TextScaled = true
titleLabel.Parent = MainFrame

-- === TAB BUTTONS ===
local tpTabBtn = Instance.new("TextButton", MainFrame)
tpTabBtn.Size = UDim2.new(0.3, 0, 0, 25)
tpTabBtn.Position = UDim2.new(0.05, 0, 0, 35)
tpTabBtn.Text = "TP"
tpTabBtn.BackgroundColor3 = Color3.fromRGB(0,170,255)
tpTabBtn.TextColor3 = Color3.fromRGB(255,255,255)
tpTabBtn.Font = Enum.Font.GothamBold
tpTabBtn.TextScaled = true
Instance.new("UICorner", tpTabBtn).CornerRadius = UDim.new(0,8)

local funTabBtn = Instance.new("TextButton", MainFrame)
funTabBtn.Size = UDim2.new(0.3, 0, 0, 25)
funTabBtn.Position = UDim2.new(0.35, 0, 0, 35)
funTabBtn.Text = "FUN"
funTabBtn.BackgroundColor3 = Color3.fromRGB(85,85,255)
funTabBtn.TextColor3 = Color3.fromRGB(255,255,255)
funTabBtn.Font = Enum.Font.GothamBold
funTabBtn.TextScaled = true
Instance.new("UICorner", funTabBtn).CornerRadius = UDim.new(0,8)

local killTpTabBtn = Instance.new("TextButton", MainFrame)
killTpTabBtn.Size = UDim2.new(0.3, 0, 0, 25)
killTpTabBtn.Position = UDim2.new(0.65, 0, 0, 35)
killTpTabBtn.Text = "KillTp"
killTpTabBtn.BackgroundColor3 = Color3.fromRGB(255,85,85)
killTpTabBtn.TextColor3 = Color3.fromRGB(255,255,255)
killTpTabBtn.Font = Enum.Font.GothamBold
killTpTabBtn.TextScaled = true
Instance.new("UICorner", killTpTabBtn).CornerRadius = UDim.new(0,8)

-- === FRAMES ===
local tpFrame = Instance.new("Frame", MainFrame)
tpFrame.Size = UDim2.new(1,-20,0,180)
tpFrame.Position = UDim2.new(0,10,0,65)
tpFrame.BackgroundTransparency = 1
tpFrame.Visible = true

local funFrame = Instance.new("Frame", MainFrame)
funFrame.Size = UDim2.new(1,-20,0,180)
funFrame.Position = UDim2.new(0,10,0,65)
funFrame.BackgroundTransparency = 1
funFrame.Visible = false

local killTpFrame = Instance.new("Frame", MainFrame)
killTpFrame.Size = UDim2.new(1,-20,0,180)
killTpFrame.Position = UDim2.new(0,10,0,65)
killTpFrame.BackgroundTransparency = 1
killTpFrame.Visible = false

-- Tab switching
tpTabBtn.MouseButton1Click:Connect(function()
    tpFrame.Visible = true
    funFrame.Visible = false
    killTpFrame.Visible = false
end)
funTabBtn.MouseButton1Click:Connect(function()
    tpFrame.Visible = false
    funFrame.Visible = true
    killTpFrame.Visible = false
end)
killTpTabBtn.MouseButton1Click:Connect(function()
    tpFrame.Visible = false
    funFrame.Visible = false
    killTpFrame.Visible = true
end)

-- === TP SECTION ===
local tpTimeBox = Instance.new("TextBox", tpFrame)
tpTimeBox.Size = UDim2.new(0.8,0,0,30)
tpTimeBox.Position = UDim2.new(0.1,0,0,0)
tpTimeBox.BackgroundColor3 = Color3.fromRGB(30,30,30)
tpTimeBox.PlaceholderText = "TP Time"
tpTimeBox.Font = Enum.Font.Gotham
tpTimeBox.TextColor3 = Color3.fromRGB(255,255,255)
tpTimeBox.TextScaled = true
Instance.new("UICorner", tpTimeBox).CornerRadius = UDim.new(0,8)

local playerBox = Instance.new("TextBox", tpFrame)
playerBox.Size = UDim2.new(0.8,0,0,30)
playerBox.Position = UDim2.new(0.1,0,0,40)
playerBox.BackgroundColor3 = Color3.fromRGB(30,30,30)
playerBox.PlaceholderText = "Player Name"
playerBox.Font = Enum.Font.Gotham
playerBox.TextColor3 = Color3.fromRGB(255,255,255)
playerBox.TextScaled = true
Instance.new("UICorner", playerBox).CornerRadius = UDim.new(0,8)

local tpNearestBtn = Instance.new("TextButton", tpFrame)
tpNearestBtn.Size = UDim2.new(0.8,0,0,30)
tpNearestBtn.Position = UDim2.new(0.1,0,0,80)
tpNearestBtn.Text = "TP Nearest"
tpNearestBtn.BackgroundColor3 = Color3.fromRGB(0,170,255)
tpNearestBtn.TextColor3 = Color3.fromRGB(255,255,255)
tpNearestBtn.Font = Enum.Font.GothamBold
tpNearestBtn.TextScaled = true
Instance.new("UICorner", tpNearestBtn).CornerRadius = UDim.new(0,8)

local tpPlayerBtn = Instance.new("TextButton", tpFrame)
tpPlayerBtn.Size = UDim2.new(0.8,0,0,30)
tpPlayerBtn.Position = UDim2.new(0.1,0,0,120)
tpPlayerBtn.Text = "TP Player"
tpPlayerBtn.BackgroundColor3 = Color3.fromRGB(0,170,0)
tpPlayerBtn.TextColor3 = Color3.fromRGB(255,255,255)
tpPlayerBtn.Font = Enum.Font.GothamBold
tpPlayerBtn.TextScaled = true
Instance.new("UICorner", tpPlayerBtn).CornerRadius = UDim.new(0,8)

-- TP FUNCTIONS
local function getNearestPlayer()
    local nearest, dist
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= player and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            local mag = (player.Character.HumanoidRootPart.Position - plr.Character.HumanoidRootPart.Position).Magnitude
            if not dist or mag < dist then
                nearest = plr
                dist = mag
            end
        end
    end
    return nearest
end

local function findPlayerByName(name)
    name = string.lower(name)
    for _, plr in pairs(Players:GetPlayers()) do
        if string.find(string.lower(plr.Name), name) then return plr end
    end
end

local function teleportToTarget(target)
    if not target or not target.Character or not target.Character:FindFirstChild("HumanoidRootPart") then return end
    local tpTime = tonumber(tpTimeBox.Text) or 1
    local hrp = player.Character.HumanoidRootPart
    local targetHRP = target.Character.HumanoidRootPart
    local start = tick()
    local conn
    conn = RunService.Heartbeat:Connect(function()
        if tick()-start < tpTime then
            hrp.CFrame = targetHRP.CFrame
        else
            conn:Disconnect()
        end
    end)
end

tpNearestBtn.MouseButton1Click:Connect(function()
    teleportToTarget(getNearestPlayer())
end)
tpPlayerBtn.MouseButton1Click:Connect(function()
    teleportToTarget(findPlayerByName(playerBox.Text))
end)

-- === FUN SECTION ===
local speedBox = Instance.new("TextBox", funFrame)
speedBox.Size = UDim2.new(0.8,0,0,30)
speedBox.Position = UDim2.new(0.1,0,0,0)
speedBox.BackgroundColor3 = Color3.fromRGB(30,30,30)
speedBox.PlaceholderText = "WalkSpeed"
speedBox.Font = Enum.Font.Gotham
speedBox.TextColor3 = Color3.fromRGB(255,255,255)
speedBox.TextScaled = true
Instance.new("UICorner", speedBox).CornerRadius = UDim.new(0,8)

local jumpBox = Instance.new("TextBox", funFrame)
jumpBox.Size = UDim2.new(0.8,0,0,30)
jumpBox.Position = UDim2.new(0.1,0,0,40)
jumpBox.BackgroundColor3 = Color3.fromRGB(30,30,30)
jumpBox.PlaceholderText = "JumpPower"
jumpBox.Font = Enum.Font.Gotham
jumpBox.TextColor3 = Color3.fromRGB(255,255,255)
jumpBox.TextScaled = true
Instance.new("UICorner", jumpBox).CornerRadius = UDim.new(0,8)

local applyBtn = Instance.new("TextButton", funFrame)
applyBtn.Size = UDim2.new(0.8,0,0,30)
applyBtn.Position = UDim2.new(0.1,0,0,80)
applyBtn.Text = "Apply"
applyBtn.BackgroundColor3 = Color3.fromRGB(85,85,255)
applyBtn.TextColor3 = Color3.fromRGB(255,255,255)
applyBtn.Font = Enum.Font.GothamBold
applyBtn.TextScaled = true
Instance.new("UICorner", applyBtn).CornerRadius = UDim.new(0,8)

local noclipBtn = Instance.new("TextButton", funFrame)
noclipBtn.Size = UDim2.new(0.8,0,0,30)
noclipBtn.Position = UDim2.new(0.1,0,0,120)
noclipBtn.Text = "Toggle Noclip"
noclipBtn.BackgroundColor3 = Color3.fromRGB(255,170,0)
noclipBtn.TextColor3 = Color3.fromRGB(0,0,0)
noclipBtn.Font = Enum.Font.GothamBold
noclipBtn.TextScaled = true
Instance.new("UICorner", noclipBtn).CornerRadius = UDim.new(0,8)

getgenv().noclipEnabled = false

applyBtn.MouseButton1Click:Connect(function()
    humanoid.WalkSpeed = tonumber(speedBox.Text) or humanoid.WalkSpeed
    humanoid.JumpPower = tonumber(jumpBox.Text) or humanoid.JumpPower
end)

noclipBtn.MouseButton1Click:Connect(function()
    getgenv().noclipEnabled = not getgenv().noclipEnabled
end)

local resetFunBtn = Instance.new("TextButton", funFrame)
resetFunBtn.Size = UDim2.new(0.8,0,0,30)
resetFunBtn.Position = UDim2.new(0.1,0,0,160)
resetFunBtn.Text = "Reset FUN"
resetFunBtn.BackgroundColor3 = Color3.fromRGB(255,0,0)
resetFunBtn.TextColor3 = Color3.fromRGB(255,255,255)
resetFunBtn.Font = Enum.Font.GothamBold
resetFunBtn.TextScaled = true
Instance.new("UICorner", resetFunBtn).CornerRadius = UDim.new(0,8)

resetFunBtn.MouseButton1Click:Connect(function()
    humanoid.WalkSpeed = 16
    humanoid.JumpPower = 50
    getgenv().noclipEnabled = false
end)

RunService.Stepped:Connect(function()
    if getgenv().noclipEnabled then
        for _, part in ipairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end
end)

-- === KILLTP / HITBOX ===
local killTpBtn = Instance.new("TextButton", killTpFrame)
killTpBtn.Size = UDim2.new(0.8,0,0,30)
killTpBtn.Position = UDim2.new(0.1,0,0,0)
killTpBtn.Text = "KillTp Nearest"
killTpBtn.BackgroundColor3 = Color3.fromRGB(255,85,0)
killTpBtn.TextColor3 = Color3.fromRGB(255,255,255)
killTpBtn.Font = Enum.Font.GothamBold
killTpBtn.TextScaled = true
Instance.new("UICorner", killTpBtn).CornerRadius = UDim.new(0,8)

local hitboxBtn = Instance.new("TextButton", killTpFrame)
hitboxBtn.Size = UDim2.new(0.8,0,0,30)
hitboxBtn.Position = UDim2.new(0.1,0,0,40)
hitboxBtn.Text = "Toggle Hitbox"
hitboxBtn.BackgroundColor3 = Color3.fromRGB(255,170,0)
hitboxBtn.TextColor3 = Color3.fromRGB(0,0,0)
hitboxBtn.Font = Enum.Font.GothamBold
hitboxBtn.TextScaled = true
Instance.new("UICorner", hitboxBtn).CornerRadius = UDim.new(0,8)

-- HITBOX MEJORADO
local hitboxEnabled = false
local hitboxRange = 50
local hitboxDamage = 20

hitboxBtn.MouseButton1Click:Connect(function()
    hitboxEnabled = not hitboxEnabled
end)

RunService.Stepped:Connect(function()
    if hitboxEnabled then
        for _, plr in pairs(Players:GetPlayers()) do
            if plr ~= player and plr.Character and plr.Character:FindFirstChild("Humanoid") 
                and plr.Character:FindFirstChild("HumanoidRootPart") then

                local targetHRP = plr.Character.HumanoidRootPart
                local distance = (character.HumanoidRootPart.Position - targetHRP.Position).Magnitude

                if distance <= hitboxRange then
                    plr.Character.Humanoid:TakeDamage(hitboxDamage)
                end
            end
        end
    end
end)

-- KILLTP BUTTON
killTpBtn.MouseButton1Click:Connect(function()
    local target = getNearestPlayer()
    if not target or not target.Character or not target.Character:FindFirstChild("HumanoidRootPart") then return end
    local bv = Instance.new("BodyVelocity")
    bv.Velocity = (target.Character.HumanoidRootPart.Position - character.HumanoidRootPart.Position).Unit * 100
    bv.MaxForce = Vector3.new(1e5,1e5,1e5)
    bv.Parent = character.HumanoidRootPart
    task.delay(0.3, function() bv:Destroy() end)
end)

-- RESET HITBOX
local resetKillTpBtn = Instance.new("TextButton", killTpFrame)
resetKillTpBtn.Size = UDim2.new(0.8,0,0,30)
resetKillTpBtn.Position = UDim2.new(0.1,0,0,80)
resetKillTpBtn.Text = "Reset Hitbox"
resetKillTpBtn.BackgroundColor3 = Color3.fromRGB(255,0,0)
resetKillTpBtn.TextColor3 = Color3.fromRGB(255,255,255)
resetKillTpBtn.Font = Enum.Font.GothamBold
resetKillTpBtn.TextScaled = true
Instance.new("UICorner", resetKillTpBtn).CornerRadius = UDim.new(0,8)

resetKillTpBtn.MouseButton1Click:Connect(function()
    hitboxEnabled = false
end)
