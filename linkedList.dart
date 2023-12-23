//1st Challenge...(Print in Reverse)
void printLinkedListReversed(Node head) {
  Stack<Node> stack = Stack<Node>();
  Node temp = head;
  
  // Push nodes onto the stack
  while (temp != null) {
    stack.push(temp);
    temp = temp.next;
  }
  
  // Pop and print nodes from the stack
  while (!stack.isEmpty()) {
    Node node = stack.pop();
    print(node.data);
  }
}

//2nd challenge...(Find the Middle Node)
Node findMiddleNode(Node head) {
  if (head == null) {
    return null;
  }
  
  Node slow = head;
  Node fast = head;
  
  while (fast != null && fast.next != null) {
    slow = slow.next;
    fast = fast.next.next;
  }
  
  return slow;
}

//3rd challenge...(Reverse a Linked List)
Node reverseLinkedList(Node head) {
  Node prev = null;
  Node current = head;
  Node next;
  
  while (current != null) {
    next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }
  
  return prev;
}

//4th challenge...(Remove All Occurrences)
Node removeAllOccurrences(Node head, int value) {
  Node prev = null;
  Node current = head;
  
  while (current != null) {
    if (current.data == value) {
      if (prev != null) {
        prev.next = current.next;
      } else {
        head = current.next;
      }
      current = current.next;
    } else {
      prev = current;
      current = current.next;
    }
  }
  
  return head;
}