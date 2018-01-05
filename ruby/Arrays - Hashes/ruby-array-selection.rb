def select_arr(arr)
  arr.keep_if {|a| a % 2 == 1}
  return arr
end

def reject_arr(arr)
  return arr.select {|a| a % 3 != 0}
end

def delete_arr(arr)
  arr.delete_if {|a| a < 0}
  return arr
end

def keep_arr(arr)
  return arr.reject {|a| a < 0}
end
