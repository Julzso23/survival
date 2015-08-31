local class = require('lib.middleclass')

local Transformable = require('modules.Transformable')

local Tile = class('Tile')

function Tile:initialize()
    Transformable.initialize(self)
end

function Tile:update(dt)
end

function Tile:draw()
end

return Tile
