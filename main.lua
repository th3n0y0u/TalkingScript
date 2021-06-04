local Text
local TextLabel = script.Parent:FindFirstChild("TextLabel")
local ImageLabel = script.Parent:FindFirstChild("ImageLabel")
local NameLabel = script.Parent:FindFirstChild("NameLabel")
local debounce = false
local players = game.Players:GetPlayers()

-- Backend Section for ParkourTransition
function SoundEffect()
	local Sound = Instance.new("Sound", workspace)
	Sound.Name = "TextSound"
	Sound.SoundId = "rbxassetid://163233363"
	Sound.PlaybackSpeed = 1
	Sound.Volume = 1
	Sound:Play()
	coroutine.resume(coroutine.create(function()
		wait(1)
		Sound:Destroy()
	end) )
end
function setText(word)
	Text = word
	for i = 1, #Text do
		TextLabel.Text = string.sub(Text, 1, i)
		SoundEffect()
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		wait(0.1)
	end
end

function explosion()
	local sound = Instance.new("Sound", workspace)
	sound.Name = "Explosion"
	sound.SoundId = "rbxassetid://262562442"
	sound.PlaybackSpeed = 1
	sound.Volume = 1
	sound:Play()
	coroutine.resume(coroutine.create(function()
		wait(1)
		sound:Destroy() 
	end) )
end



game.Workspace["Cart Ride Section"].ParkourTransition.Touched:Connect(function(hit)
	if debounce == false then
		debounce = true
		TextLabel.Visible = true
		ImageLabel.Visible = true
		NameLabel.Visible = true
		setText("Oh, you thought that was it?")
		wait(2)
		setText("Well, you thought that this was the end, then you are wrong, look to your right.")
		wait(2)
		setText("Your pain has just started, have you regretted your decisions to play this game?")
		wait(2)
		setText("^_^")
		wait(2)
		setText("")
		game.Workspace["Cart Ride Section"].ParkourTransition.CanTouch = false
		TextLabel.Visible = false
		ImageLabel.Visible = false
		NameLabel.Visible = false
		debounce = false
	end
end)

game.Workspace.TowerTransition.Touched:Connect(function(hit)
	if hit ~= nil then
		if debounce == false then
			debounce = true
			TextLabel.Visible = true
			ImageLabel.Visible = true
			NameLabel.Visible = true
			setText("Oh all of a sudden I gave you a easy stage?")
			wait(2)
			setText("I WILL NEVER GIVE YOU A FREE STAGEEEEEEEEEEEEEEEEEEEE!!!!!!!!!!!!")
			wait(0.04)
			script.Parent.Parent.Parent.Dark.Enabled = true
			explosion() 
			wait(3.5)
			script.Parent.Parent.Parent.Dark.Enabled = false
			script.Parent.Parent.RedFrame.Visible = true
			TextLabel.Visible = false
			ImageLabel.Visible = false
			NameLabel.Visible = false
		end
	end
end) 