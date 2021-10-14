--[[
    COLORS:

    none = '\27[0m',
    black = '\27[0;30m',
    red = '\27[0;31m',
    green = '\27[0;32m',
    yellow = '\27[0;33m',
    blue = '\27[0;34m',
    magenta = '\27[0;35m',
    cyan = '\27[0;36m',
    white = '\27[0;37m',
    Black = '\27[1;30m',
    Red = '\27[1;31m',
    Green = '\27[1;32m',
    Yellow = '\27[1;33m',
    Blue = '\27[1;34m',
    Magenta = '\27[1;35m',
    Cyan = '\27[1;36m',
    White = '\27[1;37m',
    _black = '\27[40m',
    _red = '\27[41m',
    _green = '\27[42m',
    _yellow = '\27[43m',
    _blue = '\27[44m',
    _magenta = '\27[45m',
    _cyan = '\27[46m',
    _white = '\27[47m'
]]

food = 10
local health = 100
local money = 0
local locations = {"Cave", "Town", "Mountain"}

function status()
    print("Your HP is: " .. health .. "/100")
    print("Your food is: " .. food .. "/100")
    print("Your money is: $" .. money)
end

--loads food loop from food.lua
require("food")

function location()
    status()
    print("Locations: " .. locations[1] .. ", " .. locations[2] .. ", " .. locations[3])
    local userInput = io.read()
    if userInput == locations[1] then
        print("Traveling to " .. locations[1] .. "!")
        travel(1)
    elseif userInput == locations[2] then
        print("Traveling to " .. locations[2] .. "!")
        travel(2)
    elseif userInput == locations[3] then
        print("Traveling to " .. locations[3] .. "!")
        travel(3)
    else
        print("Location is Unknown, please choose either the Cave, Town, or Mountain")
        location()
    end
end

print("\27[0;34mWelcome to my game! What would you like to do?\27[0m")
location()

--Version 0.012