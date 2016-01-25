

LevelsWorldThree = class()

local multiplicationCard
local multiplicationNumberOne
local multiplicationNumberTwo
local multiplicationOperator = "x"
local multiplicationAnswer
local multiplicationWrongAnswer
local multiplicationWrongAnswerTwo
local multiplicationWrongAnswerThree
local multiplicationAnswerButton
local multiplicationIncorrectButton
local multiplicationIncorrectButtonTwo
local multiplicationIncorrectButtonThree
local menuButtonThree




function LevelsWorldThree:init()
    -- sprite("Dropbox:equationCard")
    fill(255, 35, 0, 255)
    font("AmericanTypewriter")
    fontSize(50)
    multiplicationCard = SpriteObject("Dropbox:equationCard", vec2(WIDTH/2, 768))
    multiplicationAnswerButton = Button("Dropbox:button", vec2(WIDTH/2, HEIGHT/2 - 300))
    multiplicationIncorrectButton = Button("Dropbox:button", vec2(WIDTH/2 - 100, HEIGHT/2 - 300))
    multiplicationIncorrectButtonTwo = Button("Dropbox:button", vec2(WIDTH/2 + 100, HEIGHT/2 - 300))
    multiplicationIncorrectButtonThree = Button("Dropbox:button", vec2(WIDTH/2 + 200, HEIGHT/2 - 300))
    menuButtonThree = Button("Dropbox:Blue Back Circle Button", vec2(100, 600))
    
    -- Make 2 wrong answers, not 2 right answers
    
    -- levels
    
    if (currentLevel == 1) then
        print(currentLevel)
        multiplicationNumberOne = (math.random(1,5))
        multiplicationNumberTwo = (math.random(1,5))
    end
    
    
    if (currentLevel == 2) then
        print(currentLevel)
        multiplicationNumberOne = (math.random(1,10))
        multiplicationNumberTwo = (math.random(1,10))
    end
    
    if (currentLevel == 3) then
        print(currentLevel)
        multiplicationNumberOne = (math.random(1, 15))
        multiplicationNumberTwo = (math.random(1, 15))
    end
    
    if (currentLevel == 4) then
        print(currentLevel)
        multiplicationNumberOne = (math.random(1, 20))
        multiplicationNumberTwo = (math.random(1, 20))
    end
    
    if (currentLevel == 5) then
        print(currentLevel)
        multiplicationNumberOne = (math.random(1, 25))
        multiplicationNumberTwo = (math.random(1, 25))
    end
        
    -- answers
    
    if (currentLevel == 1) then
        multiplicationAnswer = multiplicationNumberOne * multiplicationNumberTwo
        multiplicationWrongAnswer = (math.random(1,10))
        multiplicationWrongAnswerTwo = (math.random(1,10))
        multiplicationWrongAnswerThree = (math.random(1,10))
    end

    
    if (currentLevel == 2) then
        multiplicationAnswer = multiplicationNumberOne * multiplicationNumberTwo
        multiplicationWrongAnswer = (math.random(1,20))
        multiplicationWrongAnswerTwo = (math.random(1,20))
        multiplicationWrongAnswerThree = (math.random(1,20))
    end
    
    if (currentLevel == 3) then
        multiplicationAnswer = multiplicationNumberOne * multiplicationNumberTwo
        multiplicationWrongAnswer = (math.random(1, 30))
        multiplicationWrongAnswerTwo = (math.random(1, 30))
        multiplicationWrongAnswerThree = (math.random(1, 30))
    end
    
    if (currentLevel == 4) then
        multiplicationAnswer = multiplicationNumberOne * multiplicationNumberTwo
        multiplicationWrongAnswer = (math.random(1, 40))
        multiplicationWrongAnswerTwo = (math.random(1, 40))
        multiplicationWrongAnswerThree = (math.random(1, 40))
    end
    
    if (currentLevel == 5) then
        multiplicationAnswer = multiplicationNumberOne * multiplicationNumberTwo
        multiplicationWrongAnswer = (math.random(1, 50))
        multiplicationWrongAnswerTwo = (math.random(1, 50))
        multiplicationWrongAnswerThree = (math.random(1, 50))
    end
    
end

function LevelsWorldThree:draw()
    sprite("Dropbox:MultiplicationMountain", WIDTH/2, HEIGHT/2, 1024, 768)
    
    local multiplicationCardLocation = vec2()

    multiplicationCardLocation = multiplicationCard.objectCurrentLocation
    
    if (multiplicationCardLocation.y >= 400) then
        multiplicationCardLocation.y = multiplicationCardLocation.y - 2
    end
    
    multiplicationCard.buttonLocation = objectCurrentLocation
    multiplicationAnswerButton:draw()
    multiplicationCard:draw()
    multiplicationIncorrectButton:draw()
    multiplicationIncorrectButtonTwo:draw()
    multiplicationIncorrectButtonThree:draw()
    menuButtonThree:draw()
    
    text(" "..multiplicationNumberOne.." "..multiplicationOperator.." "..multiplicationNumberTwo, multiplicationCardLocation.x, multiplicationCardLocation.y)
    
    text(" "..multiplicationAnswer, WIDTH/2, HEIGHT/2 - 250)
    text(" "..multiplicationWrongAnswer, WIDTH/2 - 100, HEIGHT/2 - 250)
    text(" "..multiplicationWrongAnswerTwo, WIDTH/2 + 100, HEIGHT/2 - 250)
    text(" "..multiplicationWrongAnswerThree, WIDTH/2 + 200, HEIGHT/2 - 250)
    text("Lives: "..amountOfLives, 900, 600)
    
    
end

function LevelsWorldThree:touched(touch)
    multiplicationAnswerButton:touched(touch)
    multiplicationIncorrectButton:touched(touch)
    multiplicationIncorrectButtonTwo:touched(touch)
    multiplicationIncorrectButtonThree:touched(touch)
    menuButtonThree:touched(touch)
    
    if(multiplicationAnswerButton.selected == true) then
        Scene.Change("multiplicationWinning")
        amountOfCoins = amountOfCoins + 1
        saveGlobalData("coins", amountOfCoins)
    elseif(multiplicationIncorrectButton.selected == true) then
        amountOfLives = amountOfLives - 1 
        Scene.Change("incorrect")
    elseif(multiplicationIncorrectButtonTwo.selected == true) then
        amountOfLives = amountOfLives - 1
        Scene.Change("incorrect")
    elseif(multiplicationIncorrectButtonThree.selected == true) then
        amountOfLives = amountOfLives - 1
        Scene.Change("incorrect")
    elseif(amountOfLives <= 0) then
        Scene.Change("play")
    end
    
    if(menuButtonThree.selected == true) then
        Scene.Change("play")
    end
    
end
