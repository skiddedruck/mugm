local function PJKFQ_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart", 10)
	local updateTime = 0.01
	
	local function updateCoords()
		local x = math.round(humanoidRootPart.Position.X)
		local y = math.round(humanoidRootPart.Position.Y)
		local z = math.round(humanoidRootPart.Position.Z)
	
		return x,y,z
	end
	
	
	while wait(updateTime) do
		local xpos, ypos, zpos = updateCoords()
	
		script.Parent.Text = "X: " .. xpos .. "\n Y: " .. ypos .. "\n Z: " .. zpos
	end
	
end
coroutine.wrap(PJKFQ_fake_script)()
