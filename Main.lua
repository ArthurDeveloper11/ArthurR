local player = game.Players.LocalPlayer
local Montserrat = Font.fromId(11702779517, Enum.FontWeight.Bold, Enum.FontStyle.Normal)
function CriarGui()
	local GuiIns = Instance.new("ScreenGui")
	GuiIns.Parent = player.PlayerGui
	GuiIns.Name = "Gui"
	GuiIns.Enabled = true
	GuiIns.IgnoreGuiInset = true
	GuiIns.ResetOnSpawn = false
	
	
	
	local BasicoFrame = Instance.new("Frame")
	BasicoFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	BasicoFrame.BackgroundColor3 = Color3.fromRGB(12, 217, 220)
	BasicoFrame.BackgroundTransparency = 0
	BasicoFrame.BorderSizePixel = 0
	BasicoFrame.Position = UDim2.new(0.5, 0,0.5, 0)
	BasicoFrame.Size = UDim2.new(0, 540,0, 509)
	BasicoFrame.ZIndex = 1
	BasicoFrame.Parent = GuiIns
	BasicoFrame.Visible = true
	
	
	
	local Texto = Instance.new("TextLabel")
	Texto.AnchorPoint = Vector2.new(0,0)
	Texto.BackgroundTransparency = 1
	Texto.BorderSizePixel = 0
	Texto.Position = UDim2.new(0.315, 0,0.029, 0)
	Texto.Size = UDim2.new(0, 200,0, 50)
	Texto.Visible = true
	Texto.FontFace = Montserrat
	Texto.Text = "Script Básico!"
	Texto.TextScaled = true
	Texto.TextStrokeTransparency = 0
	Texto.TextWrapped = true
	Texto.TextColor3 = Color3.fromRGB(255, 255, 255)
	Texto.Parent = BasicoFrame
	Texto.Name = "Arthur"
	
	
	

	local Texto2 = Instance.new("TextBox")
	Texto2.AnchorPoint = Vector2.new(0,0)
	Texto2.BackgroundTransparency = 1
	Texto2.BorderSizePixel = 0
	Texto2.Position = UDim2.new(0.056, 0,0.244, 0)
	Texto2.Size = UDim2.new(0, 200,0, 50)
	Texto2.Visible = true
	Texto2.FontFace = Montserrat
	Texto2.Text = "Coloque um Número para pular mais alto!"
	Texto2.PlaceholderText = "Coloque um Número para pular mais alto!"
	Texto2.TextScaled = true
	Texto2.TextStrokeTransparency = 0
	Texto2.TextWrapped = true
	Texto2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Texto2.Parent = BasicoFrame
	
	Texto2.Name = "Pular"
	
	
	

	local Texto3 = Instance.new("TextBox")
	Texto3.AnchorPoint = Vector2.new(0,0)
	Texto3.BackgroundTransparency = 1
	Texto3.BorderSizePixel = 0
	Texto3.Position = UDim2.new(0.043, 0,0.344, 0)
	Texto3.Size = UDim2.new(0, 213,0, 58)
	Texto3.Visible = true
	Texto3.FontFace = Montserrat
	Texto3.Text = "Coloque um Número para andar mais rapido!"
	Texto3.PlaceholderText = "Coloque um Número para andar mais rapido!"
	Texto3.TextScaled = true
	Texto3.TextWrapped = true
	Texto3.TextColor3 = Color3.fromRGB(255, 255, 255)
	Texto3.Parent = BasicoFrame
	Texto3.TextStrokeTransparency = 0
	Texto3.Name = "Velocidade"
	
	Texto2.FocusLost:Connect(function(ent)
		if ent then
			local number = Texto2.Text
			player.Character:FindFirstChildOfClass("Humanoid").JumpHeight = number
		end
	end)
	Texto3.FocusLost:Connect(function(ent)
		if ent then
			local number = Texto2.Text
			player.Character:FindFirstChildOfClass("Humanoid").WalkSpeed = number
		end
	end)
end

CriarGui()
print("Script Básico de Arthur Criado:D")
