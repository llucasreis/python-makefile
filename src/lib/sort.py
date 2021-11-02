from typing import List


class MergeSort:
    def __init__(self) -> None:
        pass

    @staticmethod
    def sort(arr: List) -> List:
        if len(arr) <= 1:
            return arr
        mid = len(arr) // 2
        left = MergeSort.sort(arr[:mid])
        right = MergeSort.sort(arr[mid:])
        return MergeSort.__merge(left, right)

    @staticmethod
    def __merge(left: List, right: List):
        result = []
        i, j = 0, 0
        while i < len(left) and j < len(right):
            if left[i] <= right[j]:
                result.append(left[i])
                i += 1
            else:
                result.append(right[j])
                j += 1
        result = [*result, *left[i:]]
        result = [*result, *right[j:]]
        return result
