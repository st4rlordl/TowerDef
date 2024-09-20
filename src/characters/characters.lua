character = {}

function characters()

    
    character.x = 900
    character.y = 150
    character.speed = 50
    character.spriteSheet = love.graphics.newImage('sprites/character_sheet.png')
    character.grid = anim8.newGrid(48, 48, character.spriteSheet:getWidth(), character.spriteSheet:getHeight())

    character.animations = {}
    character.animations.down = anim8.newAnimation( character.grid('1-4', 3), 0.2)
end

function character:draw()
    character.animations.down:draw(character.spriteSheet, character.x, character.y, nil, 2)
end

function character:update(dt)

    character.animations.down:update(dt)
    character.x =  character.x - character.speed*dt
end


