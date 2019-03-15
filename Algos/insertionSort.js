/**
 * compare adjacent items, if i+1 is greater than i, swap then compare
 * the swapped value to the value left of it, repeat until sorted then
 * continue from last unsorted value. Complexity: O(n2)
 *
 * @param {object} arr unsorted array
 * @return {object}    sorted array
 */
function InsertionSort(arr) {
    let len  = arr.length,     	// number of items in the array
        value,                      // the value currently being compared
        i,                          // index into unsorted section
        j;                          // index into sorted section

    for(i = 1; i < len; i++) {
        // store the current value because it may shift later
        value = arr[i]
        j = i - 1

        // Whenever the value in the sorted section is greater than the value
        // in the unsorted section, shift all items in the sorted section over
        // by one. This creates space in which to insert the value.
        while (j >= 0 && arr[j] > value) {
            arr[j+1] = arr[j]
            j--
        }
        arr[j+1] = value
    }

    return arr
}


sampleArray = [45,3,2,5,390,20,88,10,15,6];
console.log(InsertionSort(sampleArray));
