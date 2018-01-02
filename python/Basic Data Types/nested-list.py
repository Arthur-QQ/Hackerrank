if __name__ == '__main__':
    the_list = []
    for _ in range(int(input())):
        name = input()
        score = float(input())
        the_list.append([name, score])
    the_list.sort(key=lambda x: x[1])
    # print(the_list)
    for _, grade in the_list:
        if grade != the_list[0][1]:
            second_grade = grade
            break
    the_names = [name for name, grade in the_list if grade == second_grade]
    the_names.sort()
    print('\n'.join(the_names))
