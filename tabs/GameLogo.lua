-- FinalApp

-- Created by: Lucas
-- Created on: Nov - 2015
-- Created for: ICS2OR-1
-- Game logo
-- Displays the game logo

GameLogo = class()

local startTimeTwo

function GameLogo:init()
    
    startTimeTwo = ElapsedTime
end

function GameLogo:draw()
    sprite("Dropbox:finishedGameLogoMini", WIDTH/2, HEIGHT/2)
    
    print(ElapsedTime)
    print("End time is" .. startTimeTwo + 1)
    if(startTimeTwo + 1 < ElapsedTime) then
        Scene.Change("play")
        print("The end time is" .. ElapsedTime)
    end
end

function GameLogo:touched(touch)
end
