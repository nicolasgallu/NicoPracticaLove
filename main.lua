--[[
Nicolas Gallucci Lua (love) Bible.

What is Love?
Is basically a framework to develop 2D games in Lua.
Thas why is important to resume some basic Lua material.
--]]

--Functions: Factorial Example
function factorial(num)
	if num < 0 or not num then
		return "ingrese un numero mayor a 0"
	end
	if num == 0 then
		return 1
	else
		return num * factorial(num - 1)
	end
end

num = io.read("*n") --> con '*n' nos aseguramos de solo tomar numbers
print(factorial(num))

--Functions: Twice Example

function twice(x)
	return 2 * x
end
