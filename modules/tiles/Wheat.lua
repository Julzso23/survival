local class = require('lib.middleclass')

local Tile = require('modules.Tile')
local WheatItem = require('modules.items.Wheat')

local Wheat = class('Wheat', Tile)

Wheat.growTime = 10

function Wheat:initialize(gridSize, x, y)
    Tile.initialize(self, gridSize, x, y)
    self.timer = 0
    self.grown = false
end

function Wheat:update(dt)
    if self.timer >= self.growTime then
        self.grown = true
        self.timer = self.growTime
    else
        self.timer = self.timer + dt
    end
end

function Wheat:draw()
    love.graphics.setColor(240, 255, 150, 255)
    love.graphics.rectangle('fill', self:getPosition().x, self:getPosition().y, self.size, self.size)

    love.graphics.setColor(255, 0, 0, 255)
    love.graphics.rectangle('fill', self:getPosition().x, self:getPosition().y + self.size / 2 - 5, self.size * (self.timer / self.growTime), 10)
end

function Wheat:getDrop()
    return WheatItem
end

return Wheat
