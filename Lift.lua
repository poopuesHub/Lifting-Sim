local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local colors = {
        SchemeColor = Color3.fromRGB(0, 139, 139),
        Background = Color3.fromRGB(32, 32, 32),
        Header = Color3.fromRGB(24, 24, 24),
        TextColor = Color3.fromRGB(255, 255, 255),
        ElementColor = Color3.fromRGB(24, 24, 24)
}
local AutoStrength = false
local AutoSell = false
local Window = Library.CreateLib("Poopies Hub[Lifting Simulator]", colors)
local Tab = Window:NewTab("Main Farms")
local Section = Tab:NewSection("Auto Farms")
Section:NewToggle("Strength", "Auto Lift", function(state)
    if state then
        AutoStrength = true
    else
       AutoStrength = false
end)
Section:NewToggle("Sell", "Auto Sell Strength", function(state)
    if state then
        AutoSell = true
    else
       AutoSell = false
end)
while true do 
wait()
if AutoSell == true then
game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"SellMuscle"})
end
if AutoStrength == true then
game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"GainMuscle"})
end
end
