import random

with open("Chapter 1\\Generating Pseudonyms\\first names") as file:
    first_names = file.read().split("\n")

with open("Chapter 1\\Generating Pseudonyms\\last names") as file:
    last_names = file.read().split("\n")

while True:
    first_name = random.choice(first_names)
    last_name = random.choice(last_names)

    print(first_name, last_name)

    print("Would you like to generate another name? (y/n)")

    if input().lower() == "y":
        continue
    break
