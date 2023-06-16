local TextBox = Instance.new("TextBox")

--Properties:
local addWatermark = function()
screengui.ResetOnSpawn = false
TextBox.Parent = game.StarterGui.ScreenGui
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.240
TextBox.Position = UDim2.new(0.318292677, 0, 0.0286783054, 0)
TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.Font = Enum.Font.DenkOne
TextBox.Text = "Xerox"
TextBox.TextColor3 = Color3.fromRGB(190, 25, 255)
TextBox.TextSize = 60.000
TextBox.TextWrapped = true

game:GetService("GuiService").Changed:Connect(function()
            watermark.Position = UDim2.new(0, 10, 0, 10)
        end)
    end
end
    local removeWatermark = function()
        if game.Players.LocalPlayer.PlayerGui.WatermarkGui then
            game.Players.LocalPlayer.PlayerGui.WatermarkGui:Destroy()
        end
    end
addWatermark()
