def capitalize(string):
    for el in string[:].split():
        string = string.replace(el, el.capitalize())
    return string
