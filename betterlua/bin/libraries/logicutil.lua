local result
local not_state

function is_not(arg1, arg2)
    if arg1 and arg2 == not rawequal then
        not_state = "yes"
    end
end

function compare(arg1, arg2)
    if arg1 == arg2 then
        result = 0
    end
    is_not(arg1, arg2)
    if not_state == "yes" then
        result = 1
    end
end

function input()
    os.execute("python inputlip.py")
end
local input = input()