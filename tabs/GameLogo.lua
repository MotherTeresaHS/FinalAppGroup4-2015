-- FinalApp

-- Created by: Lucas
-- Created on: Nov - 2015
-- Created for: ICS2OR-1
-- Game logo
-- Displays the game logo

GameLogo = class()

local startTimeTwo

function GameLogo:init()
    -- you can accept and set parameters here
    
    startTimeTwo = ElapsedTime
end

function GameLogo:draw()
    -- Codea does not automatically call this method
    sprite("Dropbox:game logo finished group 4", WIDTH/2, HEIGHT/2)
    
    print(ElapsedTime)
    print("End time is" .. startTimeTwo + 1)
    if(startTimeTwo + 1 < ElapsedTime) then
        Scene.Change("play")
        music.stop("Game Music One:Sporting Arena")
        print("The end time is" .. ElapsedTime)
    end
end

function GameLogo:touched(touch)
    -- Codea does not automatically call this method
end
