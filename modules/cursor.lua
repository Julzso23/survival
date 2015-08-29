local class = require('lib.middleclass')

local Transformable = require('modules.transformable')

local Cursor = class('Cursor', Transformable)

function Cursor:initialize(gridsize)
    Transformable.initialize(self)
    self.size = gridsize
end

function Cursor:update(x, y)
    self:setPosition(x - x % self.size, y - y % self.size)
end

function Cursor:draw()
    love.graphics.setColor(255, 255, 255, 255)
    love.graphics.rectangle('line', self:getPosition().x, self:getPosition().y, self.size, self.size)
end

return Cursor
