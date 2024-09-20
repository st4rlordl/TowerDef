-- ALT+L = RUN THE PROJECT 
_G.love = require("love")

function love.load()
    
    require("src/startup/gameStart")
    gameStart()
    --plantLayer = gameMap.layers[2]
    --gameMap.layers[2].data[10] = 92

    characters()

end

function love.update(dt)
    character:update(dt)

end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

function love.draw()
    gameMap:draw(0, 0, 2, 2)

    
    character:draw()
end