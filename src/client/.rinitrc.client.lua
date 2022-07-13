-- .rinitrc.client.lua
-- Coltrane Willsey
-- 2022-07-08 [09:31]

local common = game:GetService("ReplicatedStorage").common
local Modules = common.Modules
local ldbin = require(Modules.ldbin)
local new = require(Modules.new)

local R = ldbin('r', true)

-- Start R
R.startR {}

-- Create display
local display = new("ScreenGui", game.Players.LocalPlayer.PlayerGui, {
    Name = "Display";
    IgnoreGuiInset = true;
    ResetOnSpawn = false;
})
R.rrandr { display=display; primary=true; rotate=0; }
