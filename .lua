-- Draggable Key GUI (pronto para uso com loadstring)
-- Salve este arquivo como keygui.lua e coloque no seu repositório GitHub.
local URL = "https://roblox-server-key.preview.emergentagent.com/"

-- Evita execução dupla
if game.CoreGui:FindFirstChild("KeyGui") then
    game.CoreGui.KeyGui:Destroy()
end

-- Cria ScreenGui no CoreGui (para que funcione externamente)
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "KeyGui"
screenGui.ResetOnSpawn = true
screenGui.Parent = game:GetService("CoreGui")

-- Frame principal
local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0, 360, 0, 160)
frame.Position = UDim2.new(0.5, -180, 0.4, -80)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BackgroundTransparency = 0.05
frame.BorderSizePixel = 0
frame.ClipsDescendants = true
frame.Parent = screenGui

-- Torna draggable (nota: Draggable funciona em alguns ambientes)
frame.Active = true
frame.Draggable = true

-- UIStroke (sombra leve)
local uiStroke = Instance.new("UIStroke")
uiStroke.Color = Color3.fromRGB(0,0,0)
uiStroke.Transparency = 0.8
uiStroke.Thickness = 1
uiStroke.Parent = frame

-- "Rosto"
local faceHolder = Instance.new("Frame")
faceHolder.Size = UDim2.new(0, 72, 0, 72)
faceHolder.Position = UDim2.new(0, 16, 0, 16)
faceHolder.BackgroundColor3 = Color3.fromRGB(240, 200, 120)
faceHolder.BorderSizePixel = 0
faceHolder.Parent = frame
faceHolder.Name = "FaceHolder"

local faceUICorner = Instance.new("UICorner")
faceUICorner.CornerRadius = UDim.new(1, 0)
faceUICorner.Parent = faceHolder

local leftEye = Instance.new("Frame")
leftEye.Size = UDim2.new(0, 12, 0, 12)
leftEye.Position = UDim2.new(0, 16, 0, 22)
leftEye.BackgroundColor3 = Color3.fromRGB(0,0,0)
leftEye.BorderSizePixel = 0
leftEye.Parent = faceHolder

local rightEye = leftEye:Clone()
rightEye.Position = UDim2.new(0, 44, 0, 22)
rightEye.Parent = faceHolder

local smile = Instance.new("Frame")
smile.Size = UDim2.new(0, 36, 0, 12)
smile.Position = UDim2.new(0, 18, 0,

