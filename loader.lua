for _,v in pairs(game:GetService("CoreGui"):GetChildren()) do if v.Name:find("JeHub") then v:Destroy() end end
local player = game:GetService('Players').LocalPlayer
local plrGui = player.PlayerGui
local Supported = loadstring(game:HttpGet('https://raw.githubusercontent.com/xXlubimyarbuzyXx/jeHub/main/games.lua'))()
local mainRequest = 'https://raw.githubusercontent.com/xXlubimyarbuzyXx/jeHub/main/Games/%s.lua'
for i,v in pairs(Supported) do
    if game.GameId == v then
        loadstring(game:HttpGet('https://raw.githubusercontent.com/xXlubimyarbuzyXx/jeHub/main/client.lua'),true)()
        loadstring(game:HttpGet(mainRequest:format(i))  ,true)() return
    end
end
