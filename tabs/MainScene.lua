-- FinalApp

-- Created by: Lucas
-- Created on: Nov - 2015
-- Created for: ICS2OR-1
-- Main menu screen
-- Displays the main menu

MainScene = class()
local startButton
local creditButton
local tutorialButton
local optionsButton
local storeButton
local leaderBoardButton
local endlessButton

function MainScene:init()
    -- Initializing everything
    
    -- sprite("Dropbox:finishedStartButton")
    startButton = Button("Dropbox:finishedStartButton", vec2(WIDTH/2 - 75, HEIGHT/2))
    creditButton = Button("Dropbox:Blue Move Scene Forward Button", vec2(WIDTH/2 - 75, HEIGHT/2 - 220))
    tutorialButton = Button("Dropbox:Green Move Scene Forward Button", vec2(WIDTH/2- 75, HEIGHT/2 - 110))
    optionsButton = Button("Dropbox:setting icon", vec2(WIDTH/2 + 450, HEIGHT/2 - 325))
    storeButton = Button("Dropbox:Purple Move Scene Forward Button", vec2(WIDTH/2 + 50, HEIGHT/2))
    leaderBoardButton = Button("Dropbox:Red Move Scene Forward Button", vec2(WIDTH/2 + 50, HEIGHT/2 - 220))
    endlessButton = Button("Dropbox:Yellow Move Scene Forward Button", vec2(WIDTH/2 + 50, HEIGHT/2 - 110))
end

function MainScene:draw()
    -- Drawing everything so you see it on screen
    
    sprite("Dropbox:finishedMenuScreen", WIDTH/2, HEIGHT/2, 1024, 768)
    fill(0, 0, 0, 255)
    fontSize(40)
    font("AmericanTypewriter-Bold")
    text("JOURNEY THROUGH MATH", WIDTH/2, HEIGHT/2+300)
    startButton:draw()
    creditButton:draw()
    tutorialButton:draw()
    optionsButton:draw()
    storeButton:draw()
    leaderBoardButton:draw()
    endlessButton:draw()
end


function MainScene:touched(touch)
    -- Making the buttons touchable
    
    startButton:touched(touch)
    tutorialButton:touched(touch)
    creditButton:touched(touch)
    optionsButton:touched(touch)
    storeButton:touched(touch)
    leaderBoardButton:touched(touch)
    endlessButton:touched(touch)
    if(startButton.selected == true) then
        Scene.Change("mainGame")
    elseif(creditButton.selected == true) then
        Scene.Change("credits")
    elseif(tutorialButton.selected == true) then
        Scene.Change("tutorial")
    elseif(optionsButton.selected == true) then
        Scene.Change("options")
    elseif(storeButton.selected == true) then
        Scene.Change("store")
    elseif(leaderBoardButton.selected == true) then
        Scene.Change("leaderboard")
    elseif(endlessButton.selected == true) then
        Scene.Change("endlessMode")
    end
 end

