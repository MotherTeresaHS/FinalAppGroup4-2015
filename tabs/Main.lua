-- Main Scene

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
    Scene("gameLogo", GameLogo)
    Scene("credits", Credits)
    Scene("options", Options)
    Scene("store", Store)
    Scene("tutorial", Tutorial)
    Scene("mainGame", MainGame)
    
    Scene.Change("splash")
end

-- This function gets called once every frame
function touched(touch)
    
   Scene.Touched(touch)
end

function draw()
    background(18, 21, 19, 255)
    
    Scene.Draw()
    
end

