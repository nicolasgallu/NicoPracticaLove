--simple character moving

local velocity = 3

function love.load()
	player = {}
	player.x = 200
	player.y = 200
end

function love.keypressed(key, scancode, isrepeat)
	if key == "escape" then
		love.event.quit()
	end
end

function love.update(dt)
	if love.keyboard.isDown("w") then
		player.y = player.y + velocity
	end

	if love.keyboard.isDown("s") then
		player.y = player.y - velocity
	end

	if love.keyboard.isDown("d") then
		player.x = player.x + velocity
	end

	if love.keyboard.isDown("a") then
		player.x = player.x - velocity
	end
end
function love.draw()
	love.graphics.circle("fill", player.x, player.y, 100)
	love.graphics.rectangle("fill", 0, 0, 50, 50)
end
