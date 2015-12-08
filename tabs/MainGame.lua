-- FinalApp

-- Created by: Lucas
-- Created on: Nov - 2015
-- Created for: ICS2OR-1
-- Main game (World one)

local backButton
local secondWorldButton

MainGame = class()

function MainGame:init()
     --sprite("Dropbox:Green Forward Circle Button")  
    backButton = Button("Dropbox:Green Back Circle Button", vec2(100,675))
    secondWorldButton = Button("Dropbox:Green Forward Circle Button", vec2(950, 675))

end

function MainGame:draw()
    background(77, 221, 58, 255)
    fill(0, 0, 0, 255)
    fontSize(40)
    font("AmericanTypewriter-Bold")
    text("Addition Forest", WIDTH/2, HEIGHT/2+300)
    backButton:draw()
    secondWorldButton:draw()
 
end

function MainGame:touched(touch)
    backButton:touched(touch)
    secondWorldButton:touched(touch)
    if(backButton.selected == true) then
        Scene.Change("play")
    end
    if(secondWorldButton.selected == true) then
        Scene.Change("worldTwo")
    end
end
