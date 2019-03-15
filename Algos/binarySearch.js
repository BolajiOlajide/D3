function binarySearch(array, searchElement) {
	var minIndex = 0;
    var maxIndex = array.length - 1;
    var currentIndex;
    var currentElement;

    while (minIndex <= maxIndex) {
        currentIndex = (minIndex + maxIndex) / 2 | 0;
        currentElement = array[currentIndex];

        if (currentElement < searchElement) {
            minIndex = currentIndex + 1;
        }
        else if (currentElement > searchElement) {
            maxIndex = currentIndex - 1;
        }
        else {
            return currentIndex;
        }
    }
    return -1;
};


let sampleCollection2 = [100, 120, 140, 160, 250, 400];
let sampleQuery2 = 120;

console.log(binarySearch(sampleCollection2, sampleQuery2));
console.log(binarySearch(sampleCollection2, 150));
