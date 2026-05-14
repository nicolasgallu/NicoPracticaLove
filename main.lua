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

--[[ 
num = io.read("*n") --> con '*n' nos aseguramos de solo tomar numbers
print(factorial(num))
]]

--Functions: Twice Example
function twice(x)
	return 2 * x
end

--8 QUEENS PUZZLE.
--the eight queen puzzle follows the next problem:
--try to place 8 queens in a chessboard, in a way that not any of the queens can't atack to each other.

--im gonna work with Tables

chessboard = {
	[1] = { 1, 2, 3, 4 },
	[2] = { 1, 2, 3, 4 },
	[3] = { 1, 2, 3, 4 },
	[4] = { 1, 2, 3, 4 },
}

--una vez tenemos definido el tablero, resolver:
--take input: col:fila, ejemplo 1:1.
--output: block entire row and column.
--if you choose row 1,is easy all rest values converts to "x"
--if you choose col 1, is also easy, iterate over each row to conver column value to "x"
--diagonals: think on movement over the matriz +1-1..etc without getting out the chessboard.
--restrictions over diagonals, u can not pass row1,4 and columns 1and 4.

user_inp = { ["row"] = 1, ["col"] = 1 }

for row, columns in ipairs(chessboard) do
	if row == user_inp["row"] then
		chessboard[row][1] = "x"
		chessboard[row][2] = "x"
		chessboard[row][3] = "x"
		chessboard[row][4] = "x"
	end
	columns[user_inp["col"]] = "x"
	if user_inp["row"] < 4 then
		chessboard[math.min(user_inp["row"] + row, 4)][math.min(user_inp["col"] + row, 4)] = "x"
	end
end

for i = 0, 3 do
	print(
		chessboard[4 - i][1]
			.. " "
			.. chessboard[4 - i][2]
			.. " "
			.. chessboard[4 - i][3]
			.. " "
			.. chessboard[4 - i][4]
	)
end
