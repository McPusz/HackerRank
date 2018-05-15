import Foundation

let input = 7
let numbers = [3,5,2,1,4,6,7]

class Node {
    var data: Int
    var left: Node?
    var right: Node?
    
    init(d: Int) {
        self.data = d
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

//EXECUTION
var root: Node?
let tree = Tree()

for num in 0..<numbers.count {
    root = tree.insert(root: root, data: numbers[num])
}

print(tree.getHeight(root: root))
