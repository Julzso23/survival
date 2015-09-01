local class = require('lib.middleclass')

local Item = require('modules.Item')

local Wheat = class('Wheat', Item)

function Wheat:initialize()
    Item.initialize(self)
end

return Wheat
