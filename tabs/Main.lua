-- FinalApp

-- Created by: Lucas
-- Created on: Nov - 2015
-- Created for: ICS2OR-1
-- Main starting screen
-- Sets a blank slate for the entire program.

-- global variable
topscore = nil




-- Use this function to perform your initial setup
function setup()  
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    topScore = readGlobalData("highScore", 0)
    music("A Hero's Quest:Exploration", true, 0.75)
    
    -- create the nes
    Scene("splash", SplashScreenScene)
    Scene("play", MainScene)
    Scene("gameLogo", GameLogo)
    Scene("credits", Credits)
    Scene("options", Options)
    Scene("store", Store)
    Scene("tutorial", Tutorial)
    Scene("mainGame", MainGame)
    Scene("endlessMode", EndlessMode)
    Scene("leaderboard", LeaderBoard)
    Scene("worldTwo", WorldTwo)
    Scene("worldThree", WorldThree)
    Scene("levelsOne", LevelsWorldOne)
    Scene("levelsTwo", LevelsWorldTwo)
    Scene("levelsThree", LevelsWorldThree)
    
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

