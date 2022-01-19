local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()
local win = Flux:Window("DaiNo Hub", "XDDDDDDDDDD", Color3.fromRGB(255, 110, 48), Enum.KeyCode.LeftControl)
local tab = win:Tab("Auto Farm", "http://www.roblox.com/asset/?id=6023426915")
_G.autodrop = false
_G.autodropS = false
tab:Toggle("Auto-Farm Coins", "Automatically collects coins for you!",false,function(t)
_G.autodrop = t
end)
tab:Toggle("Auto-Farm Coins111", "Automatically collects coins for you!",false,function(t)
_G.autodropS = t
end)

spawn(function()
    while wait() do
        if _G.autodrop == true then
            game:GetService("ReplicatedStorage").Remotes.Sync:InvokeServer("HUD", "Inventory", "Drop", "Sun Ore")
        end
        if _G.autodropS == true then
            game:GetService("ReplicatedStorage").Remotes.Sync:InvokeServer("HUD", "Inventory", "Drop", "Sun Ore")
        end
    end
end)