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

print("Welcome to my game! What would you like to do?")
location()

--Version 0.01