#!/usr/bin/python
import sys
import re

if __name__ == '__main__':
    file_name = sys.argv[1]
    main_dict = dict()
    with open(file_name, 'r') as f:
        while f.readable():
            line = f.readline()
            if line == '':
                break
            line = re.sub("\!|\,|\.|\n", "", line)
            line = line.split()

            for word in line:
                if word in main_dict.keys():
                    main_dict[word] += 1
                else:
                    main_dict[word] = 1
    
    # print(main_dict)

    main_dict = list(sorted(main_dict.items(), key = lambda x : x[1], reverse=True))

    # print(main_dict)

    for i in range(int(sys.argv[2])):
        print('{:<10}{:>10}'.format(main_dict[i][0], main_dict[i][1]))

