import numpy as np
from src.lib.sort import MergeSort


def test_list_sort():
    assert MergeSort.sort([5, 3, 1]) == [1, 3, 5]


def test_numpy_sort():
    np.testing.assert_array_equal(MergeSort.sort([5, 3, 1]), [1, 3, 5])
