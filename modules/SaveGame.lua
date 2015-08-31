local SaveGame = {}

local msg = require('lib.MessagePack')

function SaveGame.save(fileName)
    local data = {}

    data.player = {}
    data.player.health = player.health:getValue()
    data.player.hunger = player.hunger:getValue()
    data.player.thirst = player.thirst:getValue()

    if not love.filesystem.exists('saves') then
        love.filesystem.createDirectory('saves')
    end
    
    return love.filesystem.write('saves/' .. fileName .. '.jsf', msg.pack(data))
end

function SaveGame.load(fileName)
    if love.filesystem.exists('saves/' .. fileName .. '.jsf') then
        local data = msg.unpack(love.filesystem.read('saves/' .. fileName .. '.jsf'))

        player.health:setValue(data.player.health)
        player.hunger:setValue(data.player.hunger)
        player.thirst:setValue(data.player.thirst)
    end
end

return SaveGame
