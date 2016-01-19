-- FinalApp

-- Created by: Lucas
-- Created on: Nov - 2015
-- Created for: ICS2OR-1
-- Options screen
-- Displays configurable options for the game

local musicOnButton
local musicOffButton
local restartButton
local returnButton

Options = class()

sprite("Dropbox:musicOffButton")

function Options:init()
    
    musicOnButton = Button("Dropbox:musicOnButton", vec2(550,600))
    musicOffButton = Button("Dropbox:musicOffButton", vec2(400, 600))
    restartButton = Button("Dropbox:Yellow Redo Button", vec2(500, 415))
    returnButton = Button("Dropbox:Yellow Back Circle Button", vec2(550, 200))
end

function Options:draw()
    background(181, 67, 155, 255)
    fill(0, 0, 0, 255)
    fontSize(40)
    font("AmericanTypewriter-Bold")
    text("Music Button:", 175,600)
    text("Reset Stats Button:", 220,400)
    text("Return to Mainscreen:",250,200)
    musicOffButton:draw()
    restartButton:draw()
    musicOnButton:draw()
    returnButton:draw()
end

function Options:touched(touch)
    musicOffButton:touched(touch)
    restartButton:touched(touch)
    returnButton:touched(touch)
    musicOnButton:touched(touch)

    if(returnButton.selected == true) then
        Scene.Change("play")
    end
    
    if(musicOffButton.selected == true) then
        music.stop()
        
    end
    
    if(musicOnButton.selected == true) then
        music("A Hero's Quest:Exploration", true, 0.75)
    end
end