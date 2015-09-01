local class = require('lib.middleclass')

local Transformable = require('modules.Transformable')

local Item = class('Item', Transformable)

function Item:initialize(x, y)
    Transformable.initialize(self)
    if x and y then
        self:setPosition(x, y)
    end
end

function Item:update(dt)
end

function Item:draw()
    love.graphics.setColor(255, 0, 255, 255)
    love.graphics.rectangle('fill', self:getPosition().x - 16, self:getPosition().y - 16, 32, 32)
end

return Item
