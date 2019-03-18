const Tree = require('./utils/Tree');

// Breadth First
const at = new Tree('A')
const b = at.addNode('B')
const c = at.addNode('C')
const d = b.addNode('D').addNode('G')
const e = b.addNode('E').addNode('H').addNode('K')
const f = c.addNode('F')
f.addNode('I')
f.addNode('J')

const breadthFirstTraverse = (queue, array) => {
  if (!queue || !queue.length) return array

  while(queue.length) {
    const node = queue.shift()
    array.push(node.value)
    node.children[0] && queue.push( node.children[0])
    node.children[1] && queue.push( node.children[1])
  }
  return array
}

console.log(JSON.stringify(at, null, 2))
console.log(breadthFirstTraverse([at], []))