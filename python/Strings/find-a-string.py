def count_substring(string, sub_string):
    return sum([int(string[i:len(sub_string)+i] == sub_string) for i in range(len(string) - len(sub_string) + 1)])
