function gameStart()

    love.graphics.setDefaultFilter("nearest", "nearest") --better pixel scale

    sti = require "librairies/sti" --map
    anim8 = require "librairies/anim8" --animation
    
    gameMap = sti("maps/level1.lua")

    require("src/startup/require")
    requireAll()

    
end