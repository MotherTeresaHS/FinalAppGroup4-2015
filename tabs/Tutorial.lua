-- FinalApp

-- Created by: Lucas
-- Created on: Nov - 2015
-- Created for: ICS2OR-1
-- Tutorial menu
-- Helps the player learn how to play

Tutorial = class()

local backbutton


function Tutorial:init()
    --sprite("Dropbox:Green Back Circle Button")
    
    backbutton = Button("Dropbox:Green Back Circle Button", vec2(100, 650))
    
end

function Tutorial:draw()
    background(0, 62, 255, 255)
    fill(0, 0, 0, 255)
    fontSize(23)
    font("AmericanTypewriter-Bold")
    text("This game is very simple if you try! Basicly a card falls from the top of the screen", 500, 500)
    text("and an equation is on the card, there will be 4 answers at the bottom of the screen", 500, 450)  
    text("for you to pick from, you have 3 lives to answer the question. Good luck and have fun!", 500, 400)
    
    backbutton:draw()
        
end
    
    
    function Tutorial:touched(touch)
    backbutton:touched(touch)
    
    if (backbutton.selected == true) then
        Scene.Change("play")
    end

end
