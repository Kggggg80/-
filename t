if _G.loaded then
    return
end
_G.loaded = true 
-- 跨服保持 IY - 独立版，可直接运行
local Players = game:GetService("Players")
local queueteleport = queue_on_teleport or (syn and syn.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport)
if not queueteleport then warn("注入器不支持 queue_on_teleport") return end

local done = false
local on = true

Players.LocalPlayer.OnTeleport:Connect(function()
	if on and not done then
		done = true
		queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/Kggggg80/-/refs/heads/main/t'))()")
	end
end)

print("已启用")
