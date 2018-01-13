# Your code here
def take(list, v=1)
    outcome = []
    for i in (v..list.length-1)
        outcome << list[i]
    end
    return outcome
end
