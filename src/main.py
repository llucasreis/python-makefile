from lib.sort import MergeSort

if __name__ == "__main__":
    arr = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    MergeSort.sort(arr)
    print(f'Sorted array: {arr}')
