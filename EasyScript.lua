function GetAllServices()
	local services = {}
	for _, service in ipairs(game:GetChildren()) do
		if service.ClassName:match("Service") then
			table.insert(services, service)
		end
	end
	return services
end

-- Function to get the closest player to a given part
function GetClosestPlayerToPart(part)
	local closestPlayer = nil
	local closestDistance = math.huge
	for _, player in ipairs(game.Players:GetPlayers()) do
		local character = player.Character
		if character and character:FindFirstChild("HumanoidRootPart") then
			local distance = (character.HumanoidRootPart.Position - part.Position).Magnitude
			if distance < closestDistance then
				closestDistance = distance
				closestPlayer = player
			end
		end
	end
	return closestPlayer
end

-- Function to get all players in a given area
function GetPlayersInArea(position, radius)
	local playersInArea = {}
	for _, player in ipairs(game.Players:GetPlayers()) do
		local character = player.Character
		if character and character:FindFirstChild("HumanoidRootPart") then
			local distance = (character.HumanoidRootPart.Position - position).Magnitude
			if distance <= radius then
				table.insert(playersInArea, player)
			end
		end
	end
	return playersInArea
end

-- Function to wait for a child with a timeout
function WaitForChildWithTimeout(parent, childName, timeout)
	local startTime = tick()
	while tick() - startTime < timeout do
		local child = parent:FindFirstChild(childName)
		if child then
			return child
		end
		wait(0.1)
	end
	return nil
end

-- Function to tween a part to a position
function TweenPartToPosition(part, targetPosition, tweenInfo)
	local TweenService = game:GetService("TweenService")
	local tween = TweenService:Create(part, tweenInfo, {Position = targetPosition})
	tween:Play()
	tween.Completed:Wait()
end

-- Function to check if a player is within a part
function IsPlayerInPart(player, part)
	local character = player.Character
	if character and character:FindFirstChild("HumanoidRootPart") then
		local hrp = character.HumanoidRootPart
		local partSize = part.Size / 2
		local partPosition = part.Position
		local hrpPosition = hrp.Position

		return (hrpPosition.X >= partPosition.X - partSize.X and hrpPosition.X <= partPosition.X + partSize.X) and
			(hrpPosition.Y >= partPosition.Y - partSize.Y and hrpPosition.Y <= partPosition.Y + partSize.Y) and
			(hrpPosition.Z >= partPosition.Z - partSize.Z and hrpPosition.Z <= partPosition.Z + partSize.Z)
	end
	return false
end

-- Function to create a part
function CreatePart(properties)
	local part = Instance.new("Part")
	for property, value in pairs(properties) do
		part[property] = value
	end
	part.Parent = properties.Parent or workspace
	return part
end

-- Function to find all parts in a model
function GetAllPartsInModel(model)
	local parts = {}
	for _, desc in ipairs(model:GetDescendants()) do
		if desc:IsA("BasePart") then
			table.insert(parts, desc)
		end
	end
	return parts
end

-- Function to get a service by name
function GetService(serviceName)
	local success, service = pcall(function()
		return game:GetService(serviceName)
	end)
	if success then
		return service
	else
		return nil
	end
end

-- Function to get all players in the game
function GetAllPlayers()
	return game.Players:GetPlayers()
end

-- Function to get a random player
function GetRandomPlayer()
	local players = game.Players:GetPlayers()
	if #players > 0 then
		return players[math.random(1, #players)]
	end
	return nil
end

-- Function to get the distance between two parts
function GetDistanceBetweenParts(part1, part2)
	return (part1.Position - part2.Position).Magnitude
end

-- Function to create a new instance
function CreateInstance(className, properties)
	local instance = Instance.new(className)
	for property, value in pairs(properties) do
		instance[property] = value
	end
	instance.Parent = properties.Parent or workspace
	return instance
end

-- Function to get a player's character
function GetPlayerCharacter(player)
	return player.Character
end

-- Function to teleport a player to a position
function TeleportPlayerToPosition(player, position)
	local character = player.Character
	if character and character:FindFirstChild("HumanoidRootPart") then
		character.HumanoidRootPart.CFrame = CFrame.new(position)
	end
end

-- Function to set a player's health
function SetPlayerHealth(player, health)
	local character = player.Character
	if character and character:FindFirstChild("Humanoid") then
		character.Humanoid.Health = health
	end
end

-- Function to check if a player is alive
function IsPlayerAlive(player)
	local character = player.Character
	if character and character:FindFirstChild("Humanoid") then
		return character.Humanoid.Health > 0
	end
	return false
end

-- Function to clone an instance
function CloneInstance(instance)
	return instance:Clone()
end

-- Function to destroy an instance
function DestroyInstance(instance)
	instance:Destroy()
end

-- Function to find a child by class
function FindChildByClass(instance, className)
	for _, child in ipairs(instance:GetChildren()) do
		if child.ClassName == className then
			return child
		end
	end
	return nil
end

-- Function to get a player's team
function GetPlayerTeam(player)
	return player.Team
end

-- Function to check if a player is on a specific team
function IsPlayerOnTeam(player, team)
	return player.Team == team
end

-- Function to kick a player from the game
function KickPlayer(player, reason)
	player:Kick(reason)
end

-- Function to get the game's place ID
function GetPlaceID()
	return game.PlaceId
end

-- Function to get the game's job ID
function GetJobID()
	return game.JobId
end

function GetPlayerHumanoid(player)
	local character = player.Character
	if character then
		return character:FindFirstChildOfClass("Humanoid")
	end
	return nil
end

-- Function to get a player's humanoid root part
function GetPlayerHumanoidRootPart(player)
	local character = player.Character
	if character then
		return character:FindFirstChild("HumanoidRootPart")
	end
	return nil
end

function GetPlayerName(player)
	return player.Name
end

-- Function to get a player's display name
function GetPlayerDisplayName(player)
	return player.DisplayName
end

-- Function to get a player's user ID
function GetPlayerUserID(player)
	return player.UserId
end

-- Function to get a player's account age
function GetPlayerAccountAge(player)
	return player.AccountAge
end

-- Function to get a player's membership type
function GetPlayerMembershipType(player)
	return player.MembershipType
end

-- Function to check if two players are friends
function ArePlayersFriends(player1, player2)
	return player1:IsFriendsWith(player2.UserId)
end

-- Function to get a player's thumbnail
function GetPlayerThumbnail(player, size, type)
	return player:LoadCharacterAppearanceAsync():GetThumbnailAsync(size, type)
end

-- Function to get a player's join date
function GetPlayerJoinDate(player)
	return player.AccountAge
end

-- Function to get the player's camera
function GetPlayerCamera(player)
	return player.Camera
end

-- Function to set the player's camera
function SetPlayerCamera(player, camera)
	player.Camera = camera
end

-- Function to check if a player is chatting
function IsPlayerChatting(player)
	return player.Chatting
end

-- Function to get a player's chat font
function GetPlayerChatFont(player)
	return player.ChatFont
end

-- Function to set a player's chat font
function SetPlayerChatFont(player, font)
	player.ChatFont = font
end

-- Function to get a player's chat size
function GetPlayerChatSize(player)
	return player.ChatSize
end

-- Function to set a player's chat size
function SetPlayerChatSize(player, size)
	player.ChatSize = size
end

-- Function to unmute a player
function UnmutePlayer(player)
	player.Muted = false
end
