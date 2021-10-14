--Wait function (use wait(seconds))
function wait(seconds)
    local start = os.time()
    repeat until os.time() > start + seconds
end

--[[while food ~= 0 do
    
end]]