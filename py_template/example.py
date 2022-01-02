def foo() -> None:
    my_data = [1, 2, 3]
    print(my_data)


def main() -> None:
    print("main")


regular_formatting = [0, 1, 2, 3, 4, 5, 6, 7, 8]
# fmt: off
custom_formatting = [
    0, 1, 2,
    3, 4, 5,
    6, 7, 8,
]
