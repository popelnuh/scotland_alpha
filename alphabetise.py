import pandas

data = pandas.read_csv("north_south.csv", header=0)
towns = list(data.NAME)
alpha = []

current_letter = "A"

for elem in towns:
    if elem[0] == current_letter:
        alpha.append(elem)
        current_letter = chr(ord(current_letter) + 1)
    print(alpha)


#alphaplaces = data[['NAME', 'X','Y']]

alphaplaces[data.NAME.isin(alpha)]

print(alphaplaces)

