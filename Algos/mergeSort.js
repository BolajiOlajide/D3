function merge(left, right) {
	var result = [];

    while (left.length && right.length) {
        if (left[0] <= right[0]) {
            result.push(left.shift());
        } else {
            result.push(right.shift());
        }
    }

    while (left.length)
        result.push(left.shift());

    while (right.length)
        result.push(right.shift());

    return result;
}


/**
 * Merge sort first divides the array into equal halves until
 * you can divide no more and then combines them in a
 * sorted manner. Time complexity: O(n log n)
 */
function mergeSort(array) {
    if (array.length < 2)
       return array;

   var middle = parseInt(array.length / 2);
   var left   = array.slice(0, middle);
   var right  = array.slice(middle, array.length);

   return merge(mergeSort(left), mergeSort(right));
}


sampleArray = [45,3,2,5,390,20,88,10,15,6];
console.log(mergeSort(sampleArray));
