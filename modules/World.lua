local class = require('lib.middleclass')

local World = class('World')

function World:initialize(gridSize)
    self.gridSize = gridSize or 64
    self.tiles = {}
end

function World:update(dt)
    for k, v in pairs(self.tiles) do
        v:update(dt)
    end
end

function World:draw()
    for k, v in pairs(self.tiles) do
        v:draw()
    end
end

function World:hasTile(x, y)
    for k, v in pairs(self.tiles) do
        local pos = v:getPosition()
        if (pos.x == x) and (pos.y == y) then
            return true, k
        end
    end
end

function World:addTile(tileClass, x, y)
    self:removeTile(x, y)

    table.insert(self.tiles, tileClass:new(self.gridSize, x, y))
end

function World:removeTile(x, y)
    local exists, id = self:hasTile(x, y)
    if exists then
        table.remove(self.tiles, id)
    end
end

return World
