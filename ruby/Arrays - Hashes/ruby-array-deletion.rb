def end_arr_delete(arr)
    el = arr.last
    arr.delete_at(arr.length - 1)
    return el
    
end

def start_arr_delete(arr)
    el = arr.first
    arr.delete(el)
    return el
    
end

def delete_at_arr(arr, index)
    arr.delete_at(index)
    
end

def delete_all(arr, val)
    arr.delete(val)
    
end
