LevelsWorldOne = class()
-- global to this file
local dispenser
local card = {}
local numberOne
local numberTwo
local operator = "+"

function LevelsWorldOne:init()
    -- sprite("SpaceCute:Icon")
    fill(255, 0, 2, 255)
    font("AmericanTypewriter")
    fontSize(50)
    dispenser = SpriteObject("SpaceCute:Icon", vec2(WIDTH/2, 700))
    dispenser.draggable = false
    
    print(currentLevel)
    if (currentLevel == 1) then
        x=math.random(1,100)
        math.randomseed(x)
        for z= 1,1 do
            numberOne = (math.random(1,5))
        end
        x=math.random(1,100)
        math.randomseed(x)
        for z= 1,1 do
            numberTwo = (math.random(1,5))
        end
    end
end

function LevelsWorldOne:draw()
    background(0, 1, 255, 255)
    dispenser:draw()
    print(numberOne)
    text(" "..numberOne.." "..operator.." "..numberTwo, WIDTH/2, HEIGHT/2)
    
    if (#card > 0) then
        local cardCounter = 1
        while (cardCounter <= #card) do
            card[cardCounter]:draw()
            
            -- move cards down the screen
            card[cardCounter].objectCurrentLocation.y = card[cardCounter].objectCurrentLocation.y + 10
            
            -- remove cards
            if (card[cardCounter].objectCurrentLocation.y > 768) then 
                table.remove(card, cardCounter)
            end
            
            cardCounter = cardCounter + 1
        end
    end
end

function LevelsWorldOne:touched(touch)
    dispenser:touched(touch)
    -- sprite("Platformer Art:Block Special")
    if (dispenser.selected == true) then
        local aSingleCard
        aSingleCard = SpriteObject("Platformer Art:Block Special", vec2(WIDTH/2, 675))
        
        table.insert(card, aSingleCard)
    end
    
    print(#card)
end
