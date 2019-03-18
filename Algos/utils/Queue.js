function Queue() {
    this.data = [];
}

Queue.prototype.enqueue = function (item) {
    this.data.push(item);
}

Queue.prototype.dequeue = function (item) {
    if (this.isEmpty()) {
        throw Error('Queue is empty')
    }
    this.data.shift();
    return this.data;
}

Queue.prototype.count = function () {
    return this.data.length;
}

Queue.prototype.isEmpty = function () {
    return this.count() === 0;
}

Queue.prototype.contains = function (item) {
    return this.data.includes(item);
}

Queue.prototype.peek = function () {
    if (this.isEmpty()) {
        throw Error('Queue is empty')
    }
    return this.data[0];
}
