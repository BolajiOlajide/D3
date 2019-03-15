// THis is a very simple and most basic search algorithm. It works by iteratively
// going through every item in a collection which most times is an array and checking
// if the particular irwm is what you want. It does so until it either finds a match
// completes the iteration

function linearSearch(collection, query) {
    for (let counter = 0; counter < collection.length; counter++) {
        if (collection[counter] === query) {
            return true;
        }
    }
    return false;
}


let sampleCollection = ['Jane', 'John', 'Blessing', 'Aminat', 'James', 'Jerry'];
let sampleQuery = 'Jerry';

console.log(linearSearch(sampleCollection, sampleQuery));
console.log(linearSearch(sampleCollection, 'Bolaji'));
