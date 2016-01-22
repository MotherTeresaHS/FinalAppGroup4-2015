-- FinalApp

-- Created by: Lucas
-- Created on: Nov - 2015
-- Created for: ICS2OR-1
-- Credits scene 
-- Displays who is credited with game development 

Credits = class()
local backButton

function Credits:init()
    sprite("Dropbox:Red Back Circle Button")
    fontSize(60)
    backButton = Button("Dropbox:Red Back Circle Button", vec2(100, 700))

    
end

function Credits:draw()
    background(74, 235, 8, 255)
    fill(255, 255, 255, 255)
    font("Vegur-Light")
    text("CREDITS", WIDTH/2, HEIGHT/2 + 300)
    text("CODERS", WIDTH/2-350, HEIGHT/2+200)
    text("GAME DEVELOPPERS", WIDTH/2+250, HEIGHT/2+200)
    text("SPECIAL THANKS", WIDTH/2+5, HEIGHT/2-150)
    fontSize(50)
    
    -- The developpers
    text("Jacob Braun", WIDTH/2-360, HEIGHT/2+100)
    text("Lucas Scuccato", WIDTH/2-340, HEIGHT/2+50)
    text("Donovan Maric", WIDTH/2-330, HEIGHT/2)
    
    -- The "Special Thanks" people
    text("Patrick Coxall", WIDTH/2+10, HEIGHT/2-250)
    text("Andrea", WIDTH/2+360, HEIGHT/2+50)
    text("India", WIDTH/2+360, HEIGHT/2)
    text("Michael", WIDTH/2+350, HEIGHT/2-50)
   
     backButton:draw()
    
end

function Credits:touched(touch)
    backButton:touched(touch)
    if(backButton.selected == true) then
        Scene.Change("play")
    end
end
