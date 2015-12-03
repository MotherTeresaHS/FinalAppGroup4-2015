-- FinalApp

-- Created by: Lucas
-- Created on: Nov - 2015
-- Created for: ICS2OR-1
-- Main game

local topScoreButton

MainGame = class()

function MainGame:init()
    -- sprite("Dropbox:Red Move Scene Forward Button")  
    topScoreButton = Button("Dropbox:Red Move Scene Forward Button", vec2(WIDTH/2, HEIGHT/2))
    music("Game Music One:Nothingness", true, 1)

end

function MainGame:draw()
    background(235, 30, 9, 255)
    fill(255, 255, 255, 255)
    fontSize(40)
    font("AmericanTypewriter")
    text("Top Score:" .. topScore, 500, 500)
    topScoreButton:draw()
end

function MainGame:touched(touch)
    topScoreButton:touched(touch)
    if(topScoreButton.selected == true) then
        topScore = topScore + 1
        saveGlobalData("highScore", topScore)
    end
end
