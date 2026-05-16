--CALLBACK FUNCTIONS
--The callback functions are functions that works backwards, in a sense that this ones does not run after you call it,
--for example as with math.floor() that runs after u call, this by the other hand are called by LOVE at certain times.
--For example LOAD is a callback that runs just once when the program starts, so is where u would usually set up
--some init variables.

--LOAD: function that is called once on Love first Run.
function love.load()
	love.graphics.setNewFont(12)
	love.graphics.setColor(0, 0, 0)
	love.graphics.setBackgroundColor(255, 255, 255)
end

--UPDATE: This function is called continuisly, and is gonna be almost where most of your math is gonna get done.
--'dt' stands for "delta time" and is the amount of seconds since the last time this function was called
--(which is usually a small value like 0.025714).

function love.update(dt)
	if love.keyboard.isDown("up") then
		num = num + 100 * dt -- this would increment num by 100 per second
	end
end

--DRAW: Is where all drawing lives, and also the love.graphics methods, keep in mind that this function
--is also called continuisly by LOVE, so if for example u set a font color at the beggining and then change it,
--because the timing is fast u would never see it black?? to test.
--well already test it with the timer.sleep and yes is cause of that.
function love.draw()
	love.graphics.print("This text is not black because of the line below", 100, 100)
	--	love.timer.sleep(0.3)
	love.graphics.setColor(255, 0, 0)
	love.graphics.print("This text is red", 100, 200)
end

--MOUSEPRESSED: This functions is called whenever a mouse button is clicked, getting both coordinates,
--and clicked button.
--
function love.mousepressed(x, y, button, istouch)
	if button == 1 then
		imgx = x -- move image to where mouse clicked
		imgy = y
	end
end

--MOUSERELEASED: This function is triggered once the click is released, with both coordinates and button.

function love.mousereleased(x, y, button, istouch)
	if button == 1 then
		fireSlingshot(x, y) -- this totally awesome custom function is defined elsewhere
	end
end

--KEYPRESSED & RELEASED: This functions is the same as mouse, but focused on keyboard.
function love.keypressed(key)
	if key == "b" then
		text = "The B key was pressed."
	elseif key == "a" then
		a_down = true
	end
end
function love.keyreleased(key)
	if key == "b" then
		text = "The B key was released."
	elseif key == "a" then
		a_down = false
	end
end

--FOCUS: This functionss triggers once the user leaves the LOVE windows, giving us the chance of pause
--the game or do some other actions.

function love.focus(f)
	if not f then
		print("LOST FOCUS")
	else
		print("GAINED FOCUS")
	end
end

--QUIT: This functions is triggered once the user clicks the "x" button of the LOVE Window
--because we get this notification we can do things like saving state of the player, etc..
function love.quit()
	print("Thanks for playing! Come back soon!")
end
