LevelsWorldTwo = class()

local subtractionCard
local subtractionNumberOne
local subtractionNumberTwo
local subtractionOperator = "-"
local subtractionAnswer
local subtractionWrongAnswer
local subtractionWrongAnswerTwo
local subtractionWrongAnswerThree
local subtractionAnswerButton
local subtractionIncorrectButton
local subtractionIncorrectButtonTwo
local subtractionIncorrectButtonThree
local menuButtonTwo




function LevelsWorldTwo:init()
    -- sprite("Dropbox:equationCard")
    fill(255, 35, 0, 255)
    font("AmericanTypewriter")
    fontSize(50)
    subtractionCard = SpriteObject("Dropbox:equationCard", vec2(WIDTH/2, 768))
    subtractionAnswerButton = Button("Dropbox:button", vec2(WIDTH/2, HEIGHT/2 - 300))
    subtractionIncorrectButton = Button("Dropbox:button", vec2(WIDTH/2 - 100, HEIGHT/2 - 300))
    subtractionIncorrectButtonTwo = Button("Dropbox:button", vec2(WIDTH/2 + 100, HEIGHT/2 - 300))
    subtractionIncorrectButtonThree = Button("Dropbox:button", vec2(WIDTH/2 + 200, HEIGHT/2 - 300))
    menuButtonTwo = Button("Dropbox:Blue Back Circle Button", vec2(100, 600))
    
    -- Make 2 wrong answers, not 2 right answers
    
    -- levels
    
    if (currentLevel == 1) then
        print(currentLevel)
        subtractionNumberOne = (math.random(1,5))
        subtractionNumberTwo = (math.random(1,5))
    end
    
    
    if (currentLevel == 2) then
        print(currentLevel)
        subtractionNumberOne = (math.random(1,10))
        subtractionNumberTwo = (math.random(1,10))
    end
    
    if (currentLevel == 3) then
        print(currentLevel)
        subtractionNumberOne = (math.random(1, 15))
        subtractionNumberTwo = (math.random(1, 15))
    end
    
    if (currentLevel == 4) then
        print(currentLevel)
        subtractionNumberOne = (math.random(1, 20))
        subtractionNumberTwo = (math.random(1, 20))
    end
    
    if (currentLevel == 5) then
        print(currentLevel)
        subtractionNumberOne = (math.random(1, 25))
        subtractionNumberTwo = (math.random(1, 25))
    end
        
    -- answers
    
    if (currentLevel == 1) then
        subtractionAnswer = subtractionNumberOne - subtractionNumberTwo
        subtractionWrongAnswer = (math.random(1,10))
        subtractionWrongAnswerTwo = (math.random(1,10))
        subtractionWrongAnswerThree = (math.random(1,10))
    end

    
    if (currentLevel == 2) then
        subtractionAnswer = subtractionNumberOne - subtractionNumberTwo
        subtractionWrongAnswer = (math.random(1,20))
        subtractionWrongAnswerTwo = (math.random(1,20))
        subtractionWrongAnswerThree = (math.random(1,20))
    end
    
    if (currentLevel == 3) then
        subtractionAnswer = subtractionNumberOne - subtractionNumberTwo
        subtractionWrongAnswer = (math.random(1, 30))
        subtractionWrongAnswerTwo = (math.random(1, 30))
        subtractionWrongAnswerThree = (math.random(1, 30))
    end
    
    if (currentLevel == 4) then
        subtractionAnswer = subtractionNumberOne - subtractionNumberTwo
        subtractionWrongAnswer = (math.random(1, 40))
        subtractionWrongAnswerTwo = (math.random(1, 40))
        subtractionWrongAnswerThree = (math.random(1, 40))
    end
    
    if (currentLevel == 5) then
        subtractionAnswer = subtractionNumberOne - subtractionNumberTwo
        subtractionWrongAnswer = (math.random(1, 50))
        subtractionWrongAnswerTwo = (math.random(1, 50))
        subtractionWrongAnswerThree = (math.random(1, 50))
    end
    
end

function LevelsWorldTwo:draw()
    sprite("Dropbox:subtraction sea", WIDTH/2, HEIGHT/2, 1024, 768)
    
    local subtractionCardLocation = vec2()

    subtractionCardLocation = subtractionCard.objectCurrentLocation
    
    if (subtractionCardLocation.y >= 400) then
        subtractionCardLocation.y = subtractionCardLocation.y - 2
    end
    
    subtractionCard.buttonLocation = objectCurrentLocation
    subtractionAnswerButton:draw()
    subtractionCard:draw()
    subtractionIncorrectButton:draw()
    subtractionIncorrectButtonTwo:draw()
    subtractionIncorrectButtonThree:draw()
    menuButtonTwo:draw()
    
    text(" "..subtractionNumberOne.." "..subtractionOperator.." "..subtractionNumberTwo, subtractionCardLocation.x, subtractionCardLocation.y)
    
    text(" "..subtractionAnswer, WIDTH/2, HEIGHT/2 - 250)
    text(" "..subtractionWrongAnswer, WIDTH/2 - 100, HEIGHT/2 - 250)
    text(" "..subtractionWrongAnswerTwo, WIDTH/2 + 100, HEIGHT/2 - 250)
    text(" "..subtractionWrongAnswerThree, WIDTH/2 + 200, HEIGHT/2 - 250)
    text("Lives: "..amountOfLives, 900, 600)
    
    
end

function LevelsWorldTwo:touched(touch)
    subtractionAnswerButton:touched(touch)
    subtractionIncorrectButton:touched(touch)
    subtractionIncorrectButtonTwo:touched(touch)
    subtractionIncorrectButtonThree:touched(touch)
    menuButtonTwo:touched(touch)
    
    if(subtractionAnswerButton.selected == true) then
        Scene.Change("subtractionWinning")
        amountOfCoins = amountOfCoins + 1
        saveGlobalData("coins", amountOfCoins)
    elseif(subtractionIncorrectButton.selected == true) then
        amountOfLives = amountOfLives - 1 
        Scene.Change("subtractionIncorrect")
    elseif(subtractionIncorrectButtonTwo.selected == true) then
        amountOfLives = amountOfLives - 1
        Scene.Change("subtractionIncorrect")
    elseif(subtractionIncorrectButtonThree.selected == true) then
        amountOfLives = amountOfLives - 1
        Scene.Change("subtractionIncorrect")
    elseif(amountOfLives <= 0) then
        Scene.Change("play")
    end
    
    if(menuButtonTwo.selected == true) then
        Scene.Change("play")
    end
    
end
