-- RorgRuntime.client.lua
-- Coltrane Willsey
-- 2022-07-13 [22:13]

local common = game:GetService("ReplicatedStorage"):WaitForChild("common")
local Modules = common:WaitForChild("Modules")
local ldbin = require(Modules.ldbin)
local new = require(Modules.new)

local R = ldbin('r')

local PrimayDisplay = new("ScreenGui", game.Players.LocalPlayer.PlayerGui, {
    Name = "Display";
    ResetOnSpawn = false;
    IgnoreGuiInset = true;
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
})

R.AddDisplay(PrimayDisplay, true)
R.StartR()
:andThen(function()
    -- run stuff
    print("R Successfully initialized")
end)
:catch(warn)