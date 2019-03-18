const Tree = require('./utils/Tree');

const t = new Tree(8)
t.addNode(14).addNode(13).addNode(10)
let b1 = t.addNode(3)
b1.addNode(1)
let b2 = b1.addNode(6)
b2.addNode(4)
b2.addNode(7)

// Depth First

const preOrderTraverse = (node, array) => {
  if (!node) return array
  array.push(node.value)
  preOrderTraverse(node.children[0], array)
  preOrderTraverse(node.children[1], array)
  return array
}

const inOrderTraversal = (node, array) => {
  if (!node) return array
  array = inOrderTraversal(node.children[0], array)
  array.push(node.value)
  array = inOrderTraversal(node.children[1], array)
  return array
}

const postOrderTraversal = (node, array) => {
  if (!node) return array
  array = postOrderTraversal(node.children[0], array)
  array = postOrderTraversal(node.children[1], array)
  array.push(node.value)
  return array
}

console.log(preOrderTraverse(t, []))
console.log(inOrderTraversal(t, []))
console.log(postOrderTraversal(t, []))
