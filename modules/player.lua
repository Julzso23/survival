local class = require('lib.middleclass')

local Transformable = require('modules.transformable')

local Inventory = require('modules.inventory')

local Stat = require('modules.stat')

local Player = class('Player', Transformable)

Player.hungerDecay = 0.01
Player.thirstDecay = 0.02

function Player:initialize(x, y)
    Transformable.initialize(self)

    self.health = Stat:new(0, 100, 100)
    self.hunger = Stat:new(0, 100, 100)
    self.thirst = Stat:new(0, 100, 100)
    self.inventory = Inventory:new(64)

    self:setPosition(x, y)
end

function Player:update(dt)
    self.hunger:add(-self.hungerDecay * dt)
    self.thirst:add(-self.thirstDecay * dt)
end

return Player
