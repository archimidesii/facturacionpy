class NumSet:
    def __init__(self):
        self.nums = set(range(1, 101))

    def extract(self, num):
        if num not in self.nums:
            raise ValueError("Number must be between 1 and 100.")
        self.nums.remove(num)

    def missing_num(self):
        return sum(range(1, 101)) - sum(self.nums)

def main(num):
    num_set = NumSet()
    num_set.extract(num)
    missing = num_set.missing_num()
    print(f"The missing number is {missing}.")

if __name__ == "__main__":
    main(int(input("Enter a number between 1 and 100: ")))