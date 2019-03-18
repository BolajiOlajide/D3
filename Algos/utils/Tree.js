function Tree (root) {
  this.value = root;
  this.children = [];
}

Tree.prototype.addNode = function addNode(value) {
  const tree = new Tree(value);
  const rightValue = this.children[0] ? this.children[0].value : null;

  if (this.children.length < 1) {
    this.children[0] = tree;
  } else if (value <= rightValue) {
    if (this.children[0] !== undefined) {
      this.children[1] = this.children[0];
    }

    this.children[0] = tree;
  } else {
    if (this.children[1] !== undefined) {
      this.children[0] = this.children[1];
    }

    this.children[1] = tree;
  }

  return tree;
}

module.exports = Tree;
