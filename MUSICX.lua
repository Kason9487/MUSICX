local Data_Save
local Data_Load

function writefileExploit()
	if writefile then
		return true
	end
end

if game:IsLoaded() then
	wait(1)
	if not writefileExploit() then
		notLoaded = Instance.new("Message", game:GetService("CoreGui"))
		notLoaded.Text = 'Sorry, Your Exploit does not support to write file.\nYour data will not be saved. '
		wait(2)
		notLoaded:Destroy()
	end
end

function Load()
	local json = game:GetService("HttpService"):JSONDecode(readfile("MUSICX.MX"))
	if json ~= nil then
		Data_Save = json
	else
		local Data_S = game:GetService("HttpService"):JSONEncode(Data_Save)
		writefile("MUSICX.MX",Data_S)
	end
end

function Save(id)
	if isfile("MUSICX.MX") then
		if id ~= nil then
			table.insert(Data_Save,id)
		end
		local Data_S = game:GetService("HttpService"):JSONEncode(Data_Save)
		writefile("MUSICX.MX",Data_S)
	else
		local Data_S = game:GetService("HttpService"):JSONEncode(Data_Save)
		writefile("MUSICX.MX",Data_S)
	end
end

Load()
print(Data_Save)

_G.MX = false

pcall (function()
	if not _G.MX then

		_G.MX = true

		if not game:IsLoaded() then
			local notLoaded
			local success, err = pcall(function()
				notLoaded = Instance.new("Message", game:GetService("CoreGui"))
			end)
			if not success and err then
				notLoaded = Instance.new("Message", game:GetService('Workspace'))
			else
				notLoaded = Instance.new("Message", game:GetService("CoreGui"))
			end
			notLoaded.Text = 'MUSIC X is waiting for the game to load'
			game.Loaded:Wait()
			notLoaded:Destroy()
		end

		local Frame = Instance.new("Frame")
		local Frame_2 = Instance.new("Frame")
		local TextLabel = Instance.new("TextLabel")
		local UICorner = Instance.new("UICorner")
		local UICorner_2 = Instance.new("UICorner")
		local TypeBox = Instance.new("TextBox")
		local UICorner_3 = Instance.new("UICorner")
		local Add = Instance.new("TextButton")
		local UICorner_4 = Instance.new("UICorner")
		local PlayList = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		local Btn = Instance.new("ImageButton")
		local PlayingSong = Instance.new("TextLabel")
		local Slider = Instance.new("Frame")
		local Slider_2 = Instance.new("TextButton")
		local Indicator = Instance.new("Frame")
		local UICorner_5 = Instance.new("UICorner")
		local HolderButton = Instance.new("TextLabel")
		local UICorner_6 = Instance.new("UICorner")
		local Value = Instance.new("TextLabel")
		local UICorner_7 = Instance.new("UICorner")
		local ArrowPointingDown = Instance.new("TextLabel")
		local UICorner_8 = Instance.new("UICorner")
		local UICorner_9 = Instance.new("UICorner")
		local UIGradient = Instance.new("UIGradient")
		local UICorner_10 = Instance.new("UICorner")
		local SettingsBtn = Instance.new("ImageButton")
		local Settings = Instance.new("Frame")
		local UICorner_11 = Instance.new("UICorner")
		local TextLabel_2 = Instance.new("TextLabel")
		local TextButton = Instance.new("TextButton")
		local UICorner_12 = Instance.new("UICorner")
		local TextButton_2 = Instance.new("TextButton")
		local UICorner_13 = Instance.new("UICorner")
		local del = Instance.new("TextButton")
		local UICorner_14 = Instance.new("UICorner")
		local Delete = Instance.new("TextButton")
		local UICorner = Instance.new("UICorner")

		function randomString()
			return ("MX")
		end

		COREGUI = game:GetService("CoreGui")
		PARENT = nil
		if (not is_sirhurt_closure) and (syn and syn.protect_gui) then --sirhurt is retarded
			local Main = Instance.new("ScreenGui")
			Main.Name = randomString()
			syn.protect_gui(Main)
			Main.Parent = COREGUI
			PARENT = Main
		elseif get_hidden_gui or gethui then
			local hiddenUI = get_hidden_gui or gethui
			local Main = Instance.new("ScreenGui")
			Main.Name = randomString()
			Main.Parent = hiddenUI()
			PARENT = Main
		else
			local Main = Instance.new("ScreenGui")
			Main.Name = randomString()
			local success, err = pcall(function()
				Main.Parent = COREGUI
			end)
			if not success and err then
				local Players = game:GetService("Players")
				COREGUI = Players.LocalPlayer.PlayerGui
				Main.Parent = COREGUI
			elseif success and not err then -- for COREGUI:FindFirstChild('RobloxGui')
				if COREGUI:FindFirstChild('RobloxGui') then
					PARENT = COREGUI.RobloxGui
				else
					PARENT = COREGUI
				end
			end
		end

		Frame.Parent = PARENT
		Frame.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
		Frame.BorderSizePixel = 0
		Frame.Position = UDim2.new(0.132363632, 0, 0.364256471, 0)
		Frame.Size = UDim2.new(0.221818224, 0, 0.22510232, 0)

		Frame_2.Parent = Frame
		Frame_2.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
		Frame_2.BorderSizePixel = 0
		Frame_2.Size = UDim2.new(1, 0, 0.114, 0)

		TextLabel.Parent = Frame_2
		TextLabel.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.BorderSizePixel = 0
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.Font = Enum.Font.SourceSansBold
		TextLabel.Text = "MUSIC X"
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14.000
		TextLabel.TextWrapped = true

		UICorner.CornerRadius = UDim.new(100, 0)
		UICorner.Parent = Frame_2

		UICorner_2.CornerRadius = UDim.new(0.0500000007, 0)
		UICorner_2.Parent = Frame

		TypeBox.Name = "TypeBox"
		TypeBox.Parent = Frame
		TypeBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TypeBox.Position = UDim2.new(0.166146308, 0, 0.16501984, 0)
		TypeBox.Size = UDim2.new(0.462601751, 0, 0.110276692, 0)
		TypeBox.Font = Enum.Font.SourceSansBold
		TypeBox.PlaceholderColor3 = Color3.fromRGB(98, 98, 98)
		TypeBox.PlaceholderText = "Type Music ID"
		TypeBox.Text = ""
		TypeBox.TextColor3 = Color3.fromRGB(0, 0, 0)
		TypeBox.TextScaled = true
		TypeBox.TextSize = 14.000
		TypeBox.TextWrapped = true

		UICorner_3.CornerRadius = UDim.new(2, 0)
		UICorner_3.Parent = TypeBox

		Add.Name = "Add"
		Add.Parent = Frame
		Add.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
		Add.Position = UDim2.new(0.663414538, 0, 0.160869569, 0)
		Add.Size = UDim2.new(0.168292657, 0, 0.11304348, 0)
		Add.Font = Enum.Font.SourceSansBold
		Add.Text = "Add"
		Add.TextColor3 = Color3.fromRGB(255, 255, 255)
		Add.TextSize = 20.000
		Add.TextWrapped = true

		UICorner_4.CornerRadius = UDim.new(3, 0)
		UICorner_4.Parent = Add

		PlayList.Name = "PlayList"
		PlayList.Parent = Frame
		PlayList.Active = true
		PlayList.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
		PlayList.BorderColor3 = Color3.fromRGB(67, 67, 67)
		PlayList.BorderSizePixel = 0
		PlayList.Position = UDim2.new(0, 0, 0.347826093, 0)
		PlayList.Size = UDim2.new(0.999999881, 0, 0.434782594, 0)

		UIListLayout.Parent = PlayList
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0.00999999978, 0)

		Btn.Name = "Btn"
		Btn.Parent = Frame
		Btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Btn.BackgroundTransparency = 1.000
		Btn.Position = UDim2.new(0.831311524, 0, 0.851999998, 0)
		Btn.Size = UDim2.new(0.0487804823, 0, 0.0869565234, 0)
		Btn.Image = "rbxassetid://5048853382"
		Btn.ImageColor3 = Color3.fromRGB(85, 255, 127)

		PlayingSong.Name = "PlayingSong"
		PlayingSong.Parent = Frame
		PlayingSong.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		PlayingSong.BackgroundTransparency = 1.000
		PlayingSong.Position = UDim2.new(0.029268289, 0, 0.852173924, 0)
		PlayingSong.Size = UDim2.new(0.634146273, 0, 0.0869565234, 0)
		PlayingSong.Font = Enum.Font.SourceSansBold
		PlayingSong.Text = ""
		PlayingSong.TextColor3 = Color3.fromRGB(255, 255, 255)
		PlayingSong.TextScaled = true
		PlayingSong.TextSize = 14.000
		PlayingSong.TextWrapped = true
		PlayingSong.TextXAlignment = Enum.TextXAlignment.Left

		Slider.Name = "Slider"
		Slider.Parent = Frame
		Slider.AnchorPoint = Vector2.new(0.5, 0.5)
		Slider.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
		Slider.BorderSizePixel = 0
		Slider.Position = UDim2.new(0.498949528, 0, 1.14752352, 0)
		Slider.Size = UDim2.new(1.00210083, 0, 0.177079812, 0)

		Slider_2.Name = "Slider"
		Slider_2.Parent = Slider
		Slider_2.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
		Slider_2.BorderSizePixel = 0
		Slider_2.Position = UDim2.new(0.189863861, 0, 0.373742104, 0)
		Slider_2.Size = UDim2.new(0.618213356, 0, 0.24552919, 0)
		Slider_2.AutoButtonColor = false
		Slider_2.Font = Enum.Font.SourceSans
		Slider_2.Text = ""
		Slider_2.TextColor3 = Color3.fromRGB(0, 0, 0)
		Slider_2.TextSize = 14.000

		Indicator.Name = "Indicator"
		Indicator.Parent = Slider_2
		Indicator.BackgroundColor3 = Color3.fromRGB(85, 170, 0)
		Indicator.BorderSizePixel = 0
		Indicator.Size = UDim2.new(0, 0, 1, 0)

		UICorner_5.CornerRadius = UDim.new(0, 2)
		UICorner_5.Parent = Indicator

		HolderButton.Name = "HolderButton"
		HolderButton.Parent = Indicator
		HolderButton.AnchorPoint = Vector2.new(0.5, 0.5)
		HolderButton.BackgroundColor3 = Color3.fromRGB(190, 190, 190)
		HolderButton.Position = UDim2.new(1, 0, 0.5, 0)
		HolderButton.Size = UDim2.new(0, 10, 2.5, 0)
		HolderButton.Font = Enum.Font.SourceSans
		HolderButton.Text = ""
		HolderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		HolderButton.TextSize = 14.000

		UICorner_6.CornerRadius = UDim.new(0, 3)
		UICorner_6.Parent = HolderButton

		Value.Name = "Value"
		Value.Parent = HolderButton
		Value.AnchorPoint = Vector2.new(0.5, 0.5)
		Value.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
		Value.BackgroundTransparency = 1.000
		Value.Position = UDim2.new(0.5, 0, -1, 0)
		Value.Size = UDim2.new(3.5999999, 0, 0.720000029, 0)
		Value.Font = Enum.Font.Ubuntu
		Value.Text = "0"
		Value.TextColor3 = Color3.fromRGB(255, 255, 255)
		Value.TextSize = 14.000
		Value.TextTransparency = 1.000

		UICorner_7.CornerRadius = UDim.new(0, 3)
		UICorner_7.Parent = Value

		ArrowPointingDown.Name = "ArrowPointingDown"
		ArrowPointingDown.Parent = HolderButton
		ArrowPointingDown.AnchorPoint = Vector2.new(0.5, 0.5)
		ArrowPointingDown.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
		ArrowPointingDown.BackgroundTransparency = 1.000
		ArrowPointingDown.Position = UDim2.new(0.5, 0, -0.75, 0)
		ArrowPointingDown.Rotation = 45.000
		ArrowPointingDown.Size = UDim2.new(1.29999995, 0, 0.519999981, 0)
		ArrowPointingDown.ZIndex = 0
		ArrowPointingDown.Font = Enum.Font.Ubuntu
		ArrowPointingDown.Text = ""
		ArrowPointingDown.TextColor3 = Color3.fromRGB(255, 255, 255)
		ArrowPointingDown.TextSize = 14.000

		UICorner_8.CornerRadius = UDim.new(0, 3)
		UICorner_8.Parent = ArrowPointingDown

		UICorner_9.CornerRadius = UDim.new(0, 2)
		UICorner_9.Parent = Slider_2

		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(200, 200, 200)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
		UIGradient.Parent = Slider_2

		UICorner_10.Parent = Slider

		SettingsBtn.Name = "SettingsBtn"
		SettingsBtn.Parent = Frame
		SettingsBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SettingsBtn.BackgroundTransparency = 1.000
		SettingsBtn.Position = UDim2.new(0.916557431, 0, 0.851999998, 0)
		SettingsBtn.Size = UDim2.new(0.0487804823, 0, 0.0869565234, 0)
		SettingsBtn.Image = "rbxassetid://6306230437"

		Settings.Name = "Settings"
		Settings.Parent = Frame
		Settings.BackgroundColor3 = Color3.fromRGB(67, 67, 67)
		Settings.BorderSizePixel = 0
		Settings.Position = UDim2.new(1.03606534, 0, 0, 0)
		Settings.Size = UDim2.new(0.409835994, 0, 1.23030305, 0)
		Settings.Visible = false

		UICorner_11.CornerRadius = UDim.new(0.0500000007, 0)
		UICorner_11.Parent = Settings

		TextLabel_2.Parent = Settings
		TextLabel_2.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
		TextLabel_2.BackgroundTransparency = 1.000
		TextLabel_2.BorderSizePixel = 0
		TextLabel_2.Size = UDim2.new(1, 0, 0.0923645347, 0)
		TextLabel_2.Font = Enum.Font.SourceSansBold
		TextLabel_2.Text = "Settings"
		TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel_2.TextScaled = true
		TextLabel_2.TextSize = 14.000
		TextLabel_2.TextWrapped = true

		TextButton.Parent = Settings
		TextButton.BackgroundColor3 = Color3.fromRGB(112, 112, 112)
		TextButton.Position = UDim2.new(0.200000003, 0, 0.128078818, 0)
		TextButton.Size = UDim2.new(0.600000024, 0, 0.0935960561, 0)
		TextButton.Font = Enum.Font.SourceSansBold
		TextButton.Text = "Refresh List"
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextScaled = true
		TextButton.TextSize = 14.000
		TextButton.TextWrapped = true

		UICorner_12.CornerRadius = UDim.new(0.300000012, 0)
		UICorner_12.Parent = TextButton

		TextButton_2.Parent = PARENT
		TextButton_2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
		TextButton_2.Position = UDim2.new(-0.0829268247, 0, 0, 0)
		TextButton_2.Size = UDim2.new(0.550000012, 0, 0.0500000007, 0)
		TextButton_2.Visible = false
		TextButton_2.Font = Enum.Font.SourceSansBold
		TextButton_2.Text = ""
		TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton_2.TextScaled = true
		TextButton_2.TextSize = 14.000
		TextButton_2.TextWrapped = true

		UICorner_13.Parent = TextButton_2

		del.Name = "del"
		del.Parent = TextButton_2
		del.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		del.Position = UDim2.new(1.09977829, 0, 0, 0)
		del.Size = UDim2.new(0.133037701, 0, 1, 0)
		del.Font = Enum.Font.SourceSansBold
		del.Text = "DEL"
		del.TextColor3 = Color3.fromRGB(255, 255, 255)
		del.TextSize = 14.000

		UICorner_14.CornerRadius = UDim.new(0.25, 0)
		UICorner_14.Parent = del

		Delete.Name = "Delete"
		Delete.Parent = Settings
		Delete.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		Delete.Position = UDim2.new(0.2, 0, 0.857142806, 0)
		Delete.Size = UDim2.new(0.6, 0, 0.1, 0)
		Delete.Font = Enum.Font.SourceSansBold
		Delete.Text = "Destroy"
		Delete.TextColor3 = Color3.fromRGB(255, 255, 255)
		Delete.TextScaled = true
		Delete.TextSize = 14.000
		Delete.TextWrapped = true

		UICorner.CornerRadius = UDim.new(0.3, 0)
		UICorner.Parent = Delete

		print("Script_1")

		local Playing 
		local PlayingName

		local SBtn = SettingsBtn
		local Playlist = PlayList
		local textbox = TypeBox
		local btn = TextButton_2
		local PlayPause = Btn

		Frame.Draggable = true
		Frame.Active = true
		Frame.Selectable = true

		local T = false

		print("Script_2")

		for i,v in pairs (Data_Save) do
			if v ~= nil then
				local b1 = btn:Clone()
				b1.Parent = Playlist
				b1.Visible = true
				local a = Instance.new("Sound",b1)
				a.SoundId = "rbxassetid://"..v

				b1.Name = (game:GetService("MarketplaceService"):GetProductInfo(string.sub(a.SoundId,14,99)).Name)
				b1.Text = b1.Name
				wait()


				print("Script_3")

				b1.MouseButton1Click:connect(function()
					for _,v in pairs (b1:GetChildren()) do
						if v:IsA("Sound") then
							Playing = v.SoundId
							v:Play()
							PlayingName = b1.Text
							Frame.Btn.Image = "rbxassetid://2691104637"
							wait(v.TimeLength)
							Frame.Btn.Image = "rbxassetid://5048853382"
							Playing = nil
							PlayingName = nil
						end
					end
				end)
				b1.del.MouseButton1Click:connect(function()
					local Num = table.find(Data_Save,b1.Sound.SoundId)
					table.remove(Data_Save,Num)

					local Data_S = game:GetService("HttpService"):JSONEncode(Data_Save)
					writefile("MUSICX.MX",Data_S)
					b1:destroy()
					PlayingName = nil
					Frame.Btn.Image = "rbxassetid://5048853382"

				end)
			end
		end
		print("Script_4")
		local T = false
		local Open = false
		Delete.MouseButton1Click:Connect(function()
			_G.MX = false
			PARENT:Destroy()
		end)

		SBtn.MouseButton1Click:Connect(function()
			Frame.Settings.Visible = not Frame.Settings.Visible
		end)

		Frame.Settings.TextButton.MouseButton1Click:Connect(function()
			for _,v in pairs (Playlist:GetChildren()) do
				if v:IsA("TextButton") and v.Text == "" then
					v:Destroy()
				end
			end
		end)

		Add.MouseButton1Click:connect(function()
			if textbox.Text ~= "" then
				local s,f = pcall(function()
					game:GetService("MarketplaceService"):GetProductInfo(textbox.Text)
				end)
				if s then
					for _,v in pairs (Playlist:GetChildren()) do
						if v:FindFirstChild("Sound") and textbox.Text == (string.sub(v.Sound.SoundId,14,99)) then
							T = false
							print("T : False")
							print(textbox.Text.." | "..string.sub(v.Sound.SoundId,14,99))
						elseif v:FindFirstChild("Sound") and textbox.Text ~= (string.sub(v.Sound.SoundId,14,99)) then
							T = true
							print("T : True")
							print(textbox.Text.." | "..string.sub(v.Sound.SoundId,14,99))

						elseif not v:FindFirstChild("Sound") then
							T = true
							print("T : True")
						end
					end
					wait()
					if T then

						local b1 = btn:Clone()
						b1.Parent = Playlist
						b1.Visible = true
						local a = Instance.new("Sound",b1)
						a.SoundId = "rbxassetid://"..textbox.Text

						b1.Name = (game:GetService("MarketplaceService"):GetProductInfo(string.sub(a.SoundId,14,99)).Name)
						b1.Text = b1.Name
						Save(string.sub(a.SoundId,14,99))
						wait()
						T = false
						b1.MouseButton1Click:connect(function()
							for _,v in pairs (b1:GetChildren()) do
								if v:IsA("Sound") then
									Playing = v.SoundId
									v:Play()
									PlayingName = b1.Text
									Frame.Btn.Image = "rbxassetid://2691104637"
									wait(v.TimeLength)
									Frame.Btn.Image = "rbxassetid://5048853382"
									Playing = nil
									PlayingName = nil
								end
							end
						end)

						b1.del.MouseButton1Click:connect(function()
							local Num = table.find(Data_Save,b1.Sound.SoundId)
							table.remove(Data_Save,Num)

							local Data_S = game:GetService("HttpService"):JSONEncode(Data_Save)
							writefile("MUSICX.MX",Data_S)
							b1:destroy()
							PlayingName = nil
							Frame.Btn.Image = "rbxassetid://5048853382"
						end)
					end

				else
					print "Failed"
				end
			end
		end)

		PlayPause.MouseButton1Click:Connect(function()
			for _,v in pairs(Playlist:GetChildren()) do
				if v:IsA("TextButton") and Playing ~= nil and v.Sound.Playing == true then
					if v.Name == PlayingName then
						if v.Sound.SoundId == Playing then
							v.Sound.Playing = false
							PlayingName = nil
							Frame.Btn.Image = "rbxassetid://5048853382"
						end
					end
				elseif v:IsA("TextButton") and Playing ~= nil and v.Sound.Playing == false then
					if v.Sound.SoundId == Playing then
						v.Sound.Playing = true
						PlayingName = v.Name
						Frame.Btn.Image = "rbxassetid://2691104637"
					end
				end
			end
		end)

		print("Script_5")

		local Slider = Slider_2
		local SliderFrame = Slider
		local UserInputService = game:GetService("UserInputService")
		local TweenService = game:GetService("TweenService")
		local Dragging = false

		local MaxValue = 3
		local Value_Vol
		local MinValue = 0.1

		local function Update()
			if Dragging == true then
				local MousePos = UserInputService:GetMouseLocation()
				local MinPoint = (Slider.AbsolutePosition.X)
				local MaxPoint = (Slider.AbsolutePosition.X + Slider.AbsoluteSize.X)

				if MousePos.X < MinPoint then
					Slider.Indicator:TweenSize(UDim2.fromScale(0, 1), "Out", "Sine", 0.1, true)
				elseif MousePos.X > MaxPoint then
					Slider.Indicator:TweenSize(UDim2.fromScale(1, 1), "Out", "Sine", 0.1, true)
				else
					Slider.Indicator:TweenSize(UDim2.fromScale((MousePos.X - Slider.AbsolutePosition.X) / Slider.AbsoluteSize.X, 1), "Out", "Sine", 0.1, true)
				end

				wait(0.1)

				local Percent = (Slider.Indicator.HolderButton.AbsolutePosition.X - Slider.AbsolutePosition.X) / (Slider.AbsoluteSize.X - Slider.Indicator.HolderButton.Size.X.Offset) * MaxValue

				Value_Vol = Percent

				if Value_Vol < MinValue then
					Value_Vol = MinValue
				elseif Value_Vol > MaxValue then
					Value_Vol = MaxValue
				end

				Slider.Indicator.HolderButton.Value.Text = tostring(string.sub(Value_Vol,0,4))
			end
		end

		Slider.MouseEnter:Connect(function()
			if Dragging == false then
				TweenService:Create(Slider.Indicator, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(85, 130, 0)}):Play()
				TweenService:Create(Slider.Indicator.HolderButton, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(200, 200, 200)}):Play()
			end
		end)

		Slider.MouseLeave:Connect(function()
			if Dragging == false then
				TweenService:Create(Slider.Indicator, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(85, 170, 0)}):Play()
				TweenService:Create(Slider.Indicator.HolderButton, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(190, 190, 190)}):Play()
			end	
		end)

		Slider.MouseButton1Down:Connect(function()
			Dragging = true
			TweenService:Create(Slider.Indicator, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(85, 190, 0)}):Play()
			TweenService:Create(Slider.Indicator.HolderButton, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
			TweenService:Create(Slider.Indicator.HolderButton.Value, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundTransparency = 0, TextTransparency = 0}):Play()
			TweenService:Create(Slider.Indicator.HolderButton.ArrowPointingDown, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundTransparency = 0}):Play()
			Update()
		end)

		UserInputService.InputEnded:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 then
				Dragging = false
				TweenService:Create(Slider.Indicator, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(85, 170, 0)}):Play()
				TweenService:Create(Slider.Indicator.HolderButton, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(190, 190, 190)}):Play()
				TweenService:Create(Slider.Indicator.HolderButton.Value, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundTransparency = 1, TextTransparency = 1}):Play()
				TweenService:Create(Slider.Indicator.HolderButton.ArrowPointingDown, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()
			end
		end)

		UserInputService.InputChanged:Connect(Update)

		local Percent = (Slider.Indicator.HolderButton.AbsolutePosition.X - Slider.AbsolutePosition.X) / (Slider.AbsoluteSize.X - Slider.Indicator.HolderButton.Size.X.Offset) * MaxValue

		Value_Vol = Percent

		if (Value_Vol) < MinValue then
			Value_Vol = MinValue
		elseif (Value_Vol) > MaxValue then
			Value_Vol = MaxValue
		end

		Slider.Indicator.HolderButton.Value.Text = tostring(string.sub(Value_Vol,0,4))

		while wait() do
			if Playing ~= nil and PlayingName ~= nil then
				PlayingSong.Text = "Now Playing : "..PlayingName
			else PlayingSong.Text = "Not Playing"

			end
			for _,v in pairs (Playlist:GetDescendants()) do
				if v:IsA("Sound") then
					v.Volume = Value_Vol
				end
			end
		end
	end
end)
