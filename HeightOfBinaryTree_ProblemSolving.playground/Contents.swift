import Foundation

class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    init(d : Int) {
        data  = d
    }
}

class Tree {
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }
        
        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }
        
        return root
    }
    
    
    func getHeight(root: Node?) -> Int {
        if root == nil {
            return -1
        }
        let leftHeight = getHeight(root: root?.left)
        let rightHeight = getHeight(root: root?.right)
        
        return 1 + max(leftHeight, rightHeight)
    }
}

var root: Node?
let tree = Tree()

let t = 7

let inputNodes = [3, 2, 1, 5, 4, 6, 7]

for index in 0..<t {
    root = tree.insert(root: root, data: inputNodes[index])
}

print(tree.getHeight(root: root))
