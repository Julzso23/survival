local class = require('lib.middleclass')

local Inventory = class('Inventory')

function Inventory:initialize(size)
    self.size = size
    self.items = {}
end

function Inventory:addItem(item)
    if #self.items < self.size then
        table.insert(self.items, item)
        return true
    else
        return false
    end
end

function Inventory:removeItem(id)
    table.remove(self.items, id)
end

function Inventory:consumeItem(itemClass)
    for k, v in pairs(self.items) do
        if v.name == itemClass.name then
            table.remove(self.items, k)
            return
        end
    end
end

return Inventory
