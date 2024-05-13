local UILib = loadstring(game:HttpGet('https://pastebin.com/raw/LC0y5u9q'))();

local win = UILib:Window("Elijah Hub - Doors",Color3.fromRGB(102, 255, 153), Enum.KeyCode.RightControl)

local MainSection = win:Tab("Main")
MainSection:Toggle("Increase Speed",false, function(SPEEDHACKER)
_G.BootsSpeed = SPEEDHACKER
end)

game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if _G.BootsSpeed then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * 5/50)
        end
    end)
end)

MainSection:Toggle("Noclip",false, function(noclip)
        getgenv().col = noclip
       for i,v in next, game.Players.LocalPlayer.Character:GetDescendants() do
          if v.IsA(v,"BasePart") and getgenv().col == false then
             v.CanCollide = true
          elseif v.IsA(v,"BasePart") and getgenv().col == true then
            v.CanCollide = false
          end
       end
end)

local MainSection = win:Tab("Win Game")

MainSection:Toggle("High FOV",false, function(SPEEDHACKER)
game:GetService("RunService").RenderStepped:Connect(function()
         workspace.Camera.FieldOfView = 120
end)
end)

MainSection:Toggle("Auto Code (In Door 50)",false, function(val)
flags.getcode = val
    
    if val then
        local function deciphercode()
        local paper = char:FindFirstChild("LibraryHintPaper")
        local hints = plr.PlayerGui:WaitForChild("PermUI"):WaitForChild("Hints")
        
        local code = {[1]="_",[2]="_",[3]="_",[4]="_",[5]="_"}
            
            if paper then
                for i,v in pairs(paper:WaitForChild("UI"):GetChildren()) do
                    if v:IsA("ImageLabel") and v.Name ~= "Image" then
                        for i,img in pairs(hints:GetChildren()) do
                            if img:IsA("ImageLabel") and img.Visible and v.ImageRectOffset == img.ImageRectOffset then
                                local num = img:FindFirstChild("TextLabel").Text
                                
                                code[tonumber(v.Name)] = num 
                            end
                        end
                    end
                end 
            end
            
            return code
        end
        
        local addconnect
        addconnect = char.ChildAdded:Connect(function(v)
            if v:IsA("Tool") and v.Name == "LibraryHintPaper" then
                task.wait()
                
                local code = table.concat(deciphercode())
                
                if code:find("_") then
                    message("Get All Hints First!")
                else
                    message("The Code Is ".. code)
                end
            end
        end)
        
        repeat task.wait() until not flags.getcode
        addconnect:Disconnect()
    end
end)

MainSection:Toggle("Full Bright",false, function(v)
        if v then
            game:GetService("Lighting").Brightness = 2
            game:GetService("Lighting").ClockTime = 14
            game:GetService("Lighting").FogEnd = 100000
            game:GetService("Lighting").GlobalShadows = false
            game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
        else
            game:GetService("Lighting").Brightness = 3
            game:GetService("Lighting").ClockTime = 20
            game:GetService("Lighting").FogEnd = 1.1111111533265e+16
            game:GetService("Lighting").GlobalShadows = true
            game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(0.5, 0.5, 0.5)
        end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if _G.SeekES then
game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").ChandelierObstruction:Destroy()
game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").ChandelierObstruction:Destroy()
game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").ChandelierObstruction:Destroy()
game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Seek_Arm:Destroy()
game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Seek_Arm:Destroy()
game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Seek_Arm:Destroy()
game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Seek_Arm:Destroy()
game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Seek_Arm:Destroy()
game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Seek_Arm:Destroy()
game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Seek_Arm:Destroy()
game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Seek_Arm:Destroy()
game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Seek_Arm:Destroy()
game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Seek_Arm:Destroy()
game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Seek_Arm:Destroy()
game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Seek_Arm:Destroy()
game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Seek_Arm:Destroy()
        end
    end)
end)

local MainSection = win:Tab("Rooms")

MainSection:Toggle("Remove Seek Arms/Fire",false, function(SeekESs)
_G.SeekES = SeekESs
end)

MainSection:Toggle("Bypass A-90 [The Rooms]",false, function(val)
        flags.noa90 = val
        
        if val  then
            local jumpscare = plr.PlayerGui:WaitForChild("MainUI"):WaitForChild("Jumpscare"):FindFirstChild("Jumpscare_A90")
           
            if jumpscare then
                jumpscare.Parent = nil
                
                a90remote.Parent = nil
                repeat task.wait()
                    game.SoundService.Main.Volume = 1 
                until not flags.noa90
                jumpscare.Parent = plr.PlayerGui.MainUI.Jumpscare
                a90remote.Parent = entityinfo 
            end
        end
end)

MainSection:Toggle("Auto Walk [The Rooms]",false, function(val)
        -- Made by geodude#2619
-- Thanks lolcat, kardin!

if game.PlaceId ~= 6839171747 or game.ReplicatedStorage.GameData.Floor.Value ~= "Rooms" then
	game.StarterGui:SetCore("SendNotification", { Title = "Invalid Place"; Text = "The game detected appears to not be rooms. Please execute this while in rooms!" })
	
	local Sound = Instance.new("Sound")
	Sound.Parent = game.SoundService
	Sound.SoundId = "rbxassetid://550209561"
	Sound.Volume = 5
	Sound.PlayOnRemove = true
	Sound:Destroy()
	
	return
elseif workspace:FindFirstChild("PathFindPartsFolder") then
	game.StarterGui:SetCore("SendNotification", { Title = "Warning"; Text = "If you are having issues and the bot is broken, please contact me! geodude#2619" })
	
	local Sound = Instance.new("Sound")
	Sound.Parent = game.SoundService
	Sound.SoundId = "rbxassetid://550209561"
	Sound.Volume = 5
	Sound.PlayOnRemove = true
	Sound:Destroy()

	return
end

local PathfindingService = game:GetService("PathfindingService")
local VirtualInputManager = game:GetService('VirtualInputManager')
local LocalPlayer = game.Players.LocalPlayer
local LatestRoom = game.ReplicatedStorage.GameData.LatestRoom

local Cooldown = false

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local TextLabel = Instance.new("TextLabel")
TextLabel.Parent = ScreenGui

TextLabel.Size = UDim2.new(0,350,0,100)
TextLabel.TextSize = 48
TextLabel.TextStrokeColor3 = Color3.new(1,1,1)
TextLabel.TextStrokeTransparency = 0
TextLabel.BackgroundTransparency = 1

local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
end

local Folder = Instance.new("Folder")
Folder.Parent = workspace
Folder.Name = "PathFindPartsFolder"

if LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules:FindFirstChild("A90") then
    LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Modules.A90.Name = "lol" -- Fuck you A90
end

function getLocker()
    local Closest

    for i,v in pairs(workspace.CurrentRooms:GetDescendants()) do
        if v.Name == "Rooms_Locker" then
            if v:FindFirstChild("Door") and v:FindFirstChild("HiddenPlayer") then
                if v.HiddenPlayer.Value == nil then
                    if v.Door.Position.Y > -3 then -- Prevents going to the lower lockers in the room with the bridge 
                        if Closest == nil then
                            Closest = v.Door
                        else
                            if (LocalPlayer.Character.HumanoidRootPart.Position - v.Door.Position).Magnitude < (Closest.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
                                Closest = v.Door
                            end
                        end
                    end
                end
            end
        end
    end
    return Closest
end

function getPath()
    local Part
	
    local Entity = workspace:FindFirstChild("A60") or workspace:FindFirstChild("A120")
    if Entity and Entity.Main.Position.Y > -4 then
        Part = getLocker()
    else
        Part = workspace.CurrentRooms[LatestRoom.Value].Door.Door
    end
    return Part
end

LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()
    TextLabel.Text = "Room: "..math.clamp(LatestRoom.Value, 1,1000)

    if LatestRoom.Value ~= 1000 then
        LocalPlayer.DevComputerMovementMode = Enum.DevComputerMovementMode.Scriptable
    else
        LocalPlayer.DevComputerMovementMode = Enum.DevComputerMovementMode.KeyboardMouse
	
        Folder:ClearAllChildren()
    
        local Sound = Instance.new("Sound")
        Sound.Parent = game.SoundService
        Sound.SoundId = "rbxassetid://4590662766"
        Sound.Volume = 3
        Sound.PlayOnRemove = true
        Sound:Destroy()
        
        game.StarterGui:SetCore("SendNotification", { Title = "youtube.com/geoduude"; Text = "Thank you for using my script!" })
        return
    end
end)

game:GetService("RunService").RenderStepped:connect(function()
    LocalPlayer.Character.HumanoidRootPart.CanCollide = false
    LocalPlayer.Character.Collision.CanCollide = false
    LocalPlayer.Character.Collision.Size = Vector3.new(8,LocalPlayer.Character.Collision.Size.Y,8)

    LocalPlayer.Character.Humanoid.WalkSpeed = 21

    local Path = getPath()
    
    local Entity = workspace:FindFirstChild("A60") or workspace:FindFirstChild("A120")
    if Entity then
        if Path then
            if Path.Parent.Name == "Rooms_Locker" then
                if Entity.Main.Position.Y > -4 then
                    if (LocalPlayer.Character.HumanoidRootPart.Position - Path.Position).Magnitude < 2 then
                        if LocalPlayer.Character.HumanoidRootPart.Anchored == false then
                            fireproximityprompt(Path.Parent.HidePrompt)
                        end
                    end
                end
            end
        end
        if Entity.Main.Position.Y < -4 then
            if LocalPlayer.Character.HumanoidRootPart.Anchored == true then
                LocalPlayer.Character:SetAttribute("Hiding", false)
            end
        end
    else
        if LocalPlayer.Character.HumanoidRootPart.Anchored == true then
            LocalPlayer.Character:SetAttribute("Hiding", false)
        end
    end
end)

while true do

    local Destination = getPath()

    local path = PathfindingService:CreatePath({ WaypointSpacing = 1, AgentRadius = 0.1, AgentCanJump = false })
    path:ComputeAsync(LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0,3,0), Destination.Position)
    local Waypoints = path:GetWaypoints()

    if path.Status ~= Enum.PathStatus.NoPath then

        Folder:ClearAllChildren()

        for _, Waypoint in pairs(Waypoints) do
            local part = Instance.new("Part")
            part.Size = Vector3.new(1,1,1)
            part.Position = Waypoint.Position
            part.Shape = "Cylinder"
            part.Rotation = Vector3.new(0,0,90)
            part.Material = "SmoothPlastic"
            part.Anchored = true
            part.CanCollide = false
            part.Parent = Folder
        end

        for _, Waypoint in pairs(Waypoints) do
            if LocalPlayer.Character.HumanoidRootPart.Anchored == false then
                LocalPlayer.Character.Humanoid:MoveTo(Waypoint.Position)
                LocalPlayer.Character.Humanoid.MoveToFinished:Wait()
            end
        end
    end
end
end)

local ESP = win:Tab("ESP")

ESP:Toggle("Esp Doors",false, function(val)
local function findKey(model)
    for _, child in pairs(model:GetChildren()) do
        if child.Name == "Door" then
            local a = Instance.new("BillboardGui",child)
            a.Name = "A"
            a.Size = UDim2.new(1,0,1,0)
            a.AlwaysOnTop = true
            local b = Instance.new("TextLabel",a)
            b.Text = "Door"
            b.BackgroundTransparency = 1
            b.BorderSizePixel = 0
            b.Size = UDim2.new(1,0,1,0)
            b.TextColor3 = Color3.new(0,255,0)
            b.TextSize = 10
        end
        findKey(child)
    end
end
 
while true do
findKey(game:GetService("Workspace"))
wait(5)
end
end)

ESP:Toggle("Esp Key",false, function(val)
local function findKey(model)
    for _, child in pairs(model:GetChildren()) do
        if child.Name == "Key" then
            local a = Instance.new("BillboardGui",child)
            a.Name = "A"
            a.Size = UDim2.new(1,0,1,0)
            a.AlwaysOnTop = true
            local b = Instance.new("TextLabel",a)
            b.Text = "Key"
            b.BackgroundTransparency = 1
            b.BorderSizePixel = 0
            b.Size = UDim2.new(1,0,1,0)
            b.TextColor3 = Color3.new(0,255,0)
            b.TextSize = 10
        end
        findKey(child)
    end
end
 
while true do
findKey(game:GetService("Workspace"))
wait(5)
end
end)

ESP:Toggle("Esp Fake Doors",false, function(val)
local function findKey(model)
    for _, child in pairs(model:GetChildren()) do
        if child.Name == "DoorFake" then
            local a = Instance.new("BillboardGui",child)
            a.Name = "A"
            a.Size = UDim2.new(1,0,1,0)
            a.AlwaysOnTop = true
            local b = Instance.new("TextLabel",a)
            b.Text = "DoorFake"
            b.BackgroundTransparency = 1
            b.BorderSizePixel = 0
            b.Size = UDim2.new(1,0,1,0)
            b.TextColor3 = Color3.new(0,255,0)
            b.TextSize = 10
        end
        findKey(child)
    end
end
 
while true do
findKey(game:GetService("Workspace"))
wait(5)
end
end)


local MainSection = win:Tab("Backdoor")

MainSection:Toggle("Auto Win/Auto Walk",false, function(val)

-- made by realmasteroogway

-- .gg/6h4pG5Py7P



-- \\ Services / Variables // --



local ReplicatedStorage = game:GetService("ReplicatedStorage")

local CurrentRooms = workspace.CurrentRooms

local LatestRoom = ReplicatedStorage.GameData.LatestRoom

local LocalPlayer = game:GetService("Players").LocalPlayer

local Character = LocalPlayer.Character

local RootPart: Part, Collision: Part = Character.HumanoidRootPart, Character.Collision

local Vel, Vec0, Gyro = nil, Vector3.new(), nil

local CamScript, VIM = LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.Camera, game:GetService("VirtualInputManager")



local Speed = 22



-- \\ Functions // --



local function setupFly(e)

    if e == nil then

        Vel = RootPart:FindFirstChild("BodyVelocity") or Instance.new('BodyVelocity', RootPart)

        Gyro = Instance.new('BodyGyro', RootPart)



        Gyro.cframe = RootPart.CFrame

        Gyro.P = 90000

        Gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)

        Vel.velocity = Vector3.new(0, 0, 0)

        Vel.maxForce = Vector3.new(9e9, 9e9, 9e9)

    else

        Gyro:Destroy()

        Vel:Destroy()

    end

end



local function GetRoom()

    return CurrentRooms:WaitForChild(LatestRoom.Value, 60)

end



local function GetAsset(Room, Name)

    local asset = false

    for i,v in next, Room:WaitForChild("Assets"):GetDescendants() do

        if v.Name == Name then

            asset = v

        end

    end

    return asset

end



local function CreatePath(part: PVInstance, Y, Condition)

    local targetPos = (typeof(part) == "Vector3" and part or part:GetPivot().Position) - Vector3.new(0, Y or 10, 0)



    while (Condition and Condition()) or (Collision.Position.Y - targetPos.Y) > 0.2 and task.wait() do

        Vel.Velocity = Vector3.new(0, -Speed, 0)

    end



    while (Condition and Condition()) or (Collision.Position - targetPos).Magnitude > 0.2 and task.wait() do

        local direction = (targetPos - Collision.Position).Unit * Speed



        Vel.Velocity = direction

    end 



    Vel.Velocity = Vec0

end



-- \\ World Changes // --



setupFly()



if Collision.CanCollide then

    game:GetService("RunService").Stepped:Connect(function(time, deltaTime)

        for i,v in next, LocalPlayer.Character:GetDescendants() do

            if v:IsA("BasePart") and v.CanCollide == true then

                v.CanCollide = false

            end

        end

    end)

end



-- \\ Walk // --



for i = 1, 51 do -- hi kiwibird, here to take some "inspiration" or what?

    local Room, blitz = GetRoom(), workspace:FindFirstChild("BackdoorRush")



    if blitz and blitz:GetPivot().Position.Y >= Collision.Position.Y + 5 then

        CreatePath(RootPart, 20)

        blitz = workspace:FindFirstChild("BackdoorRush")

        if blitz then

            repeat task.wait() until blitz:GetPivot().Position.Y <= Collision.Position.Y + 10

        end

    end



    local Key, Lever = GetAsset(Room, "KeyObtain"), GetAsset(Room, "TimerLever")

    

    if Lever then

        CreatePath(Lever)

        fireproximityprompt(Lever:FindFirstChildWhichIsA("ProximityPrompt"))

    end



    if Key and not Character:FindFirstChild("KeyBackdoor") then

        CreatePath(Key)

        fireproximityprompt(Key:FindFirstChildWhichIsA("ProximityPrompt"))

    end

    if Key then

        local Prompt = Room.Door.Lock:FindFirstChildOfClass("ProximityPrompt")

        CreatePath((Room.Door.Door.CFrame * CFrame.new(0, 0, 3)).Position, 9)

        CamScript.Disabled = true

        workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, Room.Door.Lock.Position)

        VIM:SendKeyEvent(true, Prompt.KeyboardKeyCode, false, game)

        task.wait(Prompt.HoldDuration + .1)

        VIM:SendKeyEvent(false, Prompt.KeyboardKeyCode, false, game)

        CamScript.Disabled = false

    else

        if LatestRoom.Value == 50 then

            CreatePath((Room.Backdoors_Exit.Door.CFrame * CFrame.new(0, 0, 3)).Position, -2)

            setupFly(false)

            break

        else

            CreatePath((Room.Door.Door.CFrame * CFrame.new(0, 0, 3)).Position)

            Room.Door.ClientOpen:FireServer()

            LatestRoom.Changed:Wait()

        end

    end

end
end)

local MainSection = win:Tab("Destroy")

MainSection:Toggle("Destroy Seek Trigger",false, function(val)
flags.noseek = val
    
    if val then
        local addconnect
        addconnect = workspace.CurrentRooms.ChildAdded:Connect(function(room)
            local trigger = room:WaitForChild("TriggerEventCollision",2)
            
            if trigger then
                trigger:Destroy() 
            end
        end)
        
        repeat task.wait() until not flags.noseek
        addconnect:Disconnect()
    end
end)
