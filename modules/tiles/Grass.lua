local class = require('lib.middleclass')

local Tile = require('modules.Tile')

local Grass = class('Grass', Tile)

function Grass:initialize()
    Tile.initialize(self)
end

function Grass:update(dt)
end

function Grass:draw()
end

return Grass
