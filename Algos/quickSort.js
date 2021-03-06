function quickSort(arr) {
  if (arr.length === 0) {
    return arr;
  }

  const left = [];
  const right = [];
  const pivot = arr.pop(); // pick last element as the pivot

  arr.forEach((item) => {
    if (item <= pivot) {
      left.push(item);
    } else {
      right.push(item);
    }
  });

  return [].concat(quickSort(left), pivot, quickSort(right));
}

const myArray = [3, 0, 2, 5, -1, 4, 1];

console.log(myArray, quickSort(myArray));
