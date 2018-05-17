import Foundation


class Node {
    var data: Int
    var next: Node?
    
    init(d: Int) {
        data = d
    }
}


class LinkedList {
    func insert(head: Node?, data: Int) -> Node? {
        if head == nil {
            return Node(d: data)
        }
        
        head?.next = insert(head: head?.next, data: data)
        
        return head
    }
    
    func display(head: Node?) {
        if head != nil {
            print(head!.data, terminator: " ")
            display(head: head?.next)
        }
    }
    
    func removeDuplicates(head: Node?) -> Node? {
        var current = head
        while ((current?.next) != nil) {
            if current?.data == current?.next?.data {
                current?.next = current?.next?.next
            } else {
                current = current?.next
            }
        }
        return head
    }
}

var head: Node?
let linkedList = LinkedList()

let t = 6
let nums = [1,2,2,3,3,4]

for i in 0..<t {
    head = linkedList.insert(head: head, data: nums[i])
}

linkedList.display(head: linkedList.removeDuplicates(head: head))
