-- FinalApp

-- Created by: Lucas
-- Created on: Nov - 2015
-- Created for: ICS2OR-1
-- Main menu screen
-- Displays the main menu

MainScene = class()
local startButton
local creditButton

function MainScene:init()
    -- sprite("Dropbox:Red Level Menu Button")
    startButton = Button("Dropbox:Red Forward Circle Button", vec2(WIDTH/2, HEIGHT/2))
    creditButton = Button("Dropbox:Red Level Menu Button", vec2(WIDTH/2, HEIGHT/2 - 100))
    

end

function MainScene:draw()
    background(235, 30, 9, 255)
    fill(255, 255, 255, 255)
    fontSize(40)
    font("AmericanTypewriter-Bold")
    text("JOURNEY THROUGH MATH", WIDTH/2, HEIGHT/2+300)
    startButton:draw()
    creditButton:draw()
end

function MainScene:touched(touch)
    startButton:touched(touch)
    creditButton:touched(touch)
    if(startButton.selected == true) then
        Scene.Change("mainGame")
        end
    if(creditButton.selected == true) then
        Scene.Change("credits")
    end
 end

