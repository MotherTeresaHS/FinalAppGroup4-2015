-- FinalApp

-- Created by: Lucas
-- Created on: Nov - 2015
-- Created for: ICS2OR-1
-- Company logo
-- Displays the company logo

SplashScreenScene = class()

-- global to this file
local startTime

function SplashScreenScene:init()
    startTime = ElapsedTime
end

function SplashScreenScene:draw()
    sprite("Dropbox:finishedCompanyLogo", WIDTH/2, HEIGHT/2)
    
    print(ElapsedTime)
    print("End time is" .. startTime + 3)
    if(startTime + 1 < ElapsedTime) then
        Scene.Change("gameLogo")
        print("The end time is" .. ElapsedTime)
    end
end

function SplashScreenScene:touched(touch)
end