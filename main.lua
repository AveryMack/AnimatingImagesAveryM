-----------------------------------------------------------------------------------------
-- Title: Animating Images
-- Name: Avery Mack
-- Course: ICS2O/3C
-- This program displays 3 images moving in different directions, 
-- with some colour text and a background 
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- background image with width and height
local backgroundImage = display.newImageRect("Images/beach.png", 2048, 1536)

-- character image with width and height
local beachball1 = display.newImageRect("Images/beachball1.png", 150, 150)

-- global variables
scrollSpeed = 3

-- set the initial x and y position of beachball1
beachball1.x = 0
beachball1.y = display.contentHeight/3

-- set the rotation speed variable
local rotationSpeed = 3

-- Function: MoveBall
-- Input: this function accepts an event listener
-- Output: none 
-- Description: This function adds the scroll speed to the x-value of the ball
local function MoveBall1(event)
	-- add the scroll speed to the x-value of the ball
	beachball1.x = beachball1.x + scrollSpeed

    -- make the beach ball rotate
	beachball1.rotation = beachball1.rotation + rotationSpeed
end 

-- MoveBall will be called over and over again
Runtime:addEventListener("enterFrame", MoveBall1)

-- character image with width and height
local beachball2 = display.newImageRect("Images/beachBall2.png", 100, 50)

-- global variables
scrollSpeed2 = 4

-- set the initial x and y position of beachball2
beachball2.x = 1000
beachball2.y = display.contentHeight/2

-- make the rocketship visible
beachball2.alpha = 1

-- change the direction of the beachball
beachball2:scale(-1,1)

-- Function: Moveball2
-- Input: this function accepts an event listener
-- Output: none 
-- Description: This function adds the scroll speed to the x-value of the ball
local function MoveBall2(event)
	-- add the scroll speed to the x-value of the ball
	beachball2.x = beachball2.x - scrollSpeed2

	-- add the scroll speed to the x-value of the ball
	beachball2.y = beachball2.y - scrollSpeed2

	-- change the transparency of the ship everytime it moves so that it fades out 
	beachball2.alpha = beachball2.alpha - 0.00001
end 

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveBall2)



-- set the scroll speed of the ball
scrollSpeed3 = 4

-- character image with width and height
local beachball3 = display.newImageRect("Images/beachball3.png", 100, 50)

-- set the initial x and y position of heart
beachball3.x = display.contentWidth/2
beachball3.y = 1000

-- make the beach ball visible
beachball3.alpha = 1

-- change the direction of the beach ball
beachball3:scale(-1,1)

-- Function: MoveBall3 
-- Input: this function accepts an event listener
-- Output: none 
-- Description: This function adds the scroll speed to the x-value of the ball
local function MoveBall3(event)
	-- add the scroll speed to the x-value of the ball
	beachball3.y = beachball3.y - scrollSpeed3

	-- change the transparency of the ball everytime it moves so that it fades out 
	beachball3.alpha = beachball3.alpha - 0.001

	-- make the heart grow 
	beachball3.width = beachball3.width + scrollSpeed3
	beachball3.height = beachball3.height + scrollSpeed3
end 

-- MoveBall3 will be called over and over again
Runtime:addEventListener("enterFrame", MoveBall3)

-- create the text object with the text size of 14
textObjectBeachBalls = display.newText ("Look at all the beach balls", 25, 50, nil, 30)

-- set the color of the text object
textObjectBeachBalls:setFillColor (110/255, 0/255, 0/255)

-- anchor the text object
textObjectBeachBalls.anchorX = 0
textObjectBeachBalls.anchorY = 0
textObjectBeachBalls.x = 25
textObjectBeachBalls.y = 500

-- play sound
local correctSound = audio.loadSound( "Sounds/sound.mp3")
local correctSoundChannel

correctSoundChannel = audio.play(correctSound)















