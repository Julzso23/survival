local class = require('lib.middleclass')

local Tile = require('modules.Tile')

local Grass = class('Grass', Tile)

function Grass:initialize(gridSize)
    Tile.initialize(self, gridSize)
end

function Grass:update(dt)
end

function Grass:draw()
    love.graphics.setColor(0, 200, 0, 255)
    love.graphics.rectangle('fill', self:getPosition().x, self:getPosition().y, self.size, self.size)
end

return Grass
