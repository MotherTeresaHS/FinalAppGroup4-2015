-- Company Logo

-- Created by: Lucas
-- Created on: Nov - 2015
-- Created for: ICS2O
-- main starting screen

SplashScreenScene = class()

-- global to this file
local startTime

function SplashScreenScene:init()
    
    startTime = ElapsedTime
end

function SplashScreenScene:draw()
    -- Codea does not automatically call this method
    
    sprite("Dropbox:CompanyLogo", WIDTH/2, HEIGHT/2)
    
    print(ElapsedTime)
    print("End time is" .. startTime + 3)
    if(startTime + 1 < ElapsedTime) then
        Scene.Change("gameLogo")
        print("The end time is" .. ElapsedTime)
    end
end

function SplashScreenScene:touched(touch)
    -- Codea does not automatically call this method
    
end