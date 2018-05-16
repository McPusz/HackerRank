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
    
    func levelOrder(root: Node?) -> Void {
        if root != nil {
            var queue: [Node?] = []
            var orderedData: [Int] = []
            queue.append(root)
            orderedData.append(root!.data)
        
            while !queue.isEmpty {
                let last = queue.removeFirst()
                if let left = last?.left {
                    queue.append(left)
                    orderedData.append(left.data)
                }
                if let right = last?.right {
                    queue.append(right)
                    orderedData.append(right.data)
                }
            }
            
            print(orderedData.map {String($0)}.joined(separator: " "))
        }
    }
    
    func inOrder(root: Node?) -> Void {
        if root == nil {
            return
        }
        inOrder(root: root?.left)
        print(root?.data)
        inOrder(root: root?.right)
    }
    
    func preOrder(root: Node?) -> Void {
        if root == nil {
            return
        }
        print(root?.data)
        preOrder(root: root?.left)
        preOrder(root: root?.right)
    }
    
    func postOrder(root: Node?) -> Void {
        if root == nil {
            return
        }
        postOrder(root: root?.left)
        postOrder(root: root?.right)
        print(root?.data)
    }
    
}

var root: Node?
let tree = Tree()

let t = 6
let nums = [3, 5, 4, 7, 2, 1]

for i in 0..<t {
    root = tree.insert(root: root, data: nums[i])
}

tree.levelOrder(root: root)
//tree.preOrder(root: root)
//tree.postOrder(root: root)
//tree.inOrder(root: root)
