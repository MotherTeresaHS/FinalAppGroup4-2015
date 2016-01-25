LevelsWorldOne = class()
-- global to this file
local card
local numberOne
local numberTwo
local operator = "+"
local answer
local wrongAnswer
local wrongAnswerTwo
local wrongAnswerThree
local answerButton
local incorrectButton
local incorrectButtonTwo
local incorrectButtonThree
local menuButton

function LevelsWorldOne:init()
    -- sprite("Dropbox:equationCard")
    fill(255, 35, 0, 255)
    font("AmericanTypewriter")
    fontSize(50)
    card = SpriteObject("Dropbox:equationCard", vec2(WIDTH/2, 768))
    answerButton = Button("Dropbox:button", vec2(WIDTH/2, HEIGHT/2 - 300))
    incorrectButton = Button("Dropbox:button", vec2(WIDTH/2 - 100, HEIGHT/2 - 300))
    incorrectButtonTwo = Button("Dropbox:button", vec2(WIDTH/2 + 100, HEIGHT/2 - 300))
    incorrectButtonThree = Button("Dropbox:button", vec2(WIDTH/2 + 200, HEIGHT/2 - 300))
    menuButton = Button("Dropbox:Blue Back Circle Button", vec2(100, 600))
    
    additionTimer = ElapsedTime
    
    -- Make 2 wrong answers, not 2 right answers
    -- levels
    
    if (currentLevel == 1) then
        print(currentLevel)
        numberOne = (math.random(1,5))
        numberTwo = (math.random(1,5))
    end
    
    
    if (currentLevel == 2) then
        print(currentLevel)
        numberOne = (math.random(1,10))
        numberTwo = (math.random(1,10))
    end
    
    if (currentLevel == 3) then
        print(currentLevel)
        nummberOne = (math.random(1, 15))
        numberTwo = (math.random(1, 15))
    end
    
    if (currentLevel == 4) then
        print(currentLevel)
        numberOne = (math.random(1, 20))
        numberTwo = (math.random(1, 20))
    end
    
    if (currentLevel == 5) then
        print(currentLevel)
        numberOne = (math.random(1, 25))
        numberTwo = (math.random(1, 25))
    end
        
    -- answers
    
    if (currentLevel == 1) then
        answer = numberOne + numberTwo
        wrongAnswer = (math.random(1,10))
        wrongAnswerTwo = (math.random(1,10))
        wrongAnswerThree = (math.random(1,10))
    end

    
    if (currentLevel == 2) then
        answer = numberOne + numberTwo
        wrongAnswer = (math.random(1,20))
        wrongAnswerTwo = (math.random(1,20))
        wrongAnswerThree = (math.random(1,20))
    end
    
    if (currentLevel == 3) then
        answer = numberOne + numberTwo
        wrongAnswer = (math.random(1, 30))
        wrongAnswerTwo = (math.random(1, 30))
        wrongAnswerThree = (math.random(1, 30))
    end
    
    if (currentLevel == 4) then
        answer = numberOne + numberTwo
        wrongAnswer = (math.random(1, 40))
        wrongAnswerTwo = (math.random(1, 40))
        wrongAnswerThree = (math.random(1, 40))
    end
    
    if (currentLevel == 5) then
        answer = numberOne + numberTwo
        wrongAnswer = (math.random(1, 50))
        wrongAnswerTwo = (math.random(1, 50))
        wrongAnswerThree = (math.random(1, 50))
    end
    
end

function LevelsWorldOne:draw()
    sprite("Dropbox:additionForest", WIDTH/2, HEIGHT/2, 1024, 768)
    
    local cardLocation = vec2()

    cardLocation = card.objectCurrentLocation
    
    if (cardLocation.y >= 400) then
        cardLocation.y = cardLocation.y - 2
    end
    
    card.buttonLocation = objectCurrentLocation
    answerButton:draw()
    card:draw()
    incorrectButton:draw()
    incorrectButtonTwo:draw()
    incorrectButtonThree:draw()
    menuButton:draw()
    
    text(" "..numberOne.." "..operator.." "..numberTwo, cardLocation.x, cardLocation.y)
    text(answer, WIDTH/2, HEIGHT/2 - 250)
    text(wrongAnswer, WIDTH/2 - 100, HEIGHT/2 - 250)
    text(wrongAnswerTwo, WIDTH/2 + 100, HEIGHT/2 - 250)
    text(wrongAnswerThree, WIDTH/2 + 200, HEIGHT/2 - 250)
    text("Lives: "..amountOfLives, 900, 600)
    
end

function LevelsWorldOne:touched(touch)
    answerButton:touched(touch)
    incorrectButton:touched(touch)
    incorrectButtonTwo:touched(touch)
    incorrectButtonThree:touched(touch)
    menuButton:touched(touch)
    
    if(answerButton.selected == true) then
        Scene.Change("additionWinning")
        amountOfCoins = amountOfCoins + 1
        saveGlobalData("coins", amountOfCoins)
    elseif(incorrectButton.selected == true) then
        amountOfLives = amountOfLives - 1 
        Scene.Change("incorrect")
    elseif(incorrectButtonTwo.selected == true) then
        amountOfLives = amountOfLives - 1
        Scene.Change("incorrect")
    elseif(incorrectButtonThree.selected == true) then
        amountOfLives = amountOfLives - 1
        Scene.Change("incorrect")
    elseif(amountOfLives <= 0) then
        Scene.Change("play")
    end
    
    if(menuButton.selected == true) then
        Scene.Change("play")
    end
    
end
