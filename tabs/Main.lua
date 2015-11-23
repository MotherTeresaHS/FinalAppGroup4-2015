-- LessonSix

-- Created by: Lucas
-- Created on: Nov - 2015
-- Created for: ICS2O
-- main starting screen

-- variables

-- Use this function to perform your initial setup
function setup()  
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    -- create the scenes
    Scene("splash", SplashScreenScene)
    Scene("play", MainScene)
    Scene("shop", Shop)
    Scene("Main", MainGame)
    Scene.Change("splash")
end

-- This function gets called once every frame
function touched(touch)
    
    -- local variables 
   Scene.Touched(touch)
end

function draw()
    background(0, 0, 0, 255)
    
    Scene.Draw()
    
end

