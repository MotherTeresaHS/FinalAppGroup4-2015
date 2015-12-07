-- FinalApp

-- Created by: Lucas
-- Created on: Nov - 2015
-- Created for: ICS2OR-1
-- Main game

local backButton

MainGame = class()

function MainGame:init()
    -- sprite("Dropbox:Purple Back Circle Button")  
    backButton = Button("Dropbox:Purple Back Circle Button", vec2(100,100))

end

function MainGame:draw()
    background(235, 30, 9, 255)
    backButton:draw()
 
end

function MainGame:touched(touch)
    backButton:touched(touch)
    if(backButton.selected == true) then
        Scene.Change("play")
end
    end
