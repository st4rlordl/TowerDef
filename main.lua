-- ALT+L = RUN THE PROJECT 
_G.love = require("love")

function love.load()
    
    sti = require 'librairies/sti'
    anim8 = require 'librairies/anim8'
    love.graphics.setDefaultFilter("nearest", "nearest")
    gameMap = sti('maps/firstMap.lua')
    
    plantLayer = gameMap.layers[2]
    gameMap.layers[2].data[10] = 92

    character = {}
    character.x = 800
    character.y = 150
    character.speed = 50
    character.spriteSheet = love.graphics.newImage('sprites/character_sheet.png')
    character.grid = anim8.newGrid(48, 48, character.spriteSheet:getWidth(), character.spriteSheet:getHeight())

    character.animations = {}
    character.animations.down = anim8.newAnimation( character.grid('1-4', 3), 0.2)

end

function characterSpawn()
character.y = character.y
end
function love.update(dt)
    character.animations.down:update(dt)
    character.x =  character.x - character.speed*dt
    
end

function love.draw()

    gameMap:draw(0,0, 2,2)
    character.animations.down:draw(character.spriteSheet, character.x, character.y, nil, 2)
end