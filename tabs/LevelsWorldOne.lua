LevelsWorldOne = class()
-- global to this file
local dispenser
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
    -- sprite("Dropbox:Blue Back Circle Button")
    fill(255, 35, 0, 255)
    font("AmericanTypewriter")
    fontSize(50)
    card = SpriteObject("SpaceCute:Icon", vec2(WIDTH/2, 768))
    answerButton = Button("Dropbox:Green Cancel Button", vec2(WIDTH/2, HEIGHT/2 - 300))
    incorrectButton = Button("Dropbox:Red Cancel Button", vec2(WIDTH/2 - 100, HEIGHT/2 - 300))
    incorrectButtonTwo = Button("Dropbox:Red Cancel Button", vec2(WIDTH/2 + 100, HEIGHT/2 - 300))
    incorrectButtonThree = Button("Dropbox:Red Cancel Button", vec2(WIDTH/2 + 200, HEIGHT/2 - 300))
    menuButton = Button("Dropbox:Blue Back Circle Button", vec2(65, 710))
    
    -- Make 2 wrong answers, not 2 right answers
    
    print(currentLevel)
    if (currentLevel == 1) then
            numberOne = (math.random(1,5))
            numberTwo = (math.random(1,5))
    end
    
    print(currentLevel)
    if (currentLevel == 2) then
            numberOne = (math.random(1,10))
            numberTwo = (math.random(1,10))
        end
    
    print(currentLevel)
    if (currentLevel == 3) then
        nummberOne = (math.random(1, 15))
        numberTwo =(math.random(1, 15))
    end
        
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
    
    
end

function LevelsWorldOne:draw()
    sprite("Dropbox:additionForest", WIDTH/2, HEIGHT/2, 1024, 768)
    
    local cardLocation = vec2()

    cardLocation = card.objectCurrentLocation
    
    if (cardLocation.y >= 300) then
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
        Scene.Change("incorrect")
    elseif(incorrectButtonTwo.selected == true) then
        Scene.Change("incorrect")
    elseif(incorrectButtonThree.selected == true) then
        Scene.Change("incorrect")
    end
    
    if(menuButton.selected == true) then
        Scene.Change("play")
    end
    
end
