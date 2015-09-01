local class = require('lib.middleclass')

local Player = require('modules.Player')

local World = class('World')

function World:initialize(gridSize)
    self.gridSize = gridSize or 64
    self.tiles = {}
    self.player = Player:new(32, 32)
end

function World:update(dt)
    self.player:update(dt)

    for k, v in pairs(self.tiles) do
        v:update(dt)
    end
end

function World:draw()
    for k, v in pairs(self.tiles) do
        v:draw()
    end

    self.player:draw()
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
    local exists, id = self:hasTile(x, y)
    if not exists then
        table.insert(self.tiles, tileClass:new(self.gridSize, x, y))
    end
end

function World:removeTile(x, y)
    local exists, id = self:hasTile(x, y)
    if exists then
        local drop = self.tiles:getDrop()
        if drop then
            self.player.inventory:addItem(drop)
        end
        table.remove(self.tiles, id)
    end
end

return World
