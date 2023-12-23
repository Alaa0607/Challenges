//1st challenge...(Reverse a List)
void reverseList(List<int> list) {
  Stack<int> stack = Stack<int>();
  
  // Push items onto the stack
  for (int item in list) {
    stack.push(item);
  }
  
  // Pop and print items from the stack
  while (!stack.isEmpty()) {
    print(stack.pop());
  }
}

//2nd challenge...(Balance the Parentheses)
bool isBalanced(String s) {
  Stack<String> stack = Stack<String>();
  
  for (int i = 0; i < s.length; i++) {
    if (s[i] == '(') {
      stack.push(s[i]);
    } else if (s[i] == ')') {
      if (stack.isEmpty() || stack.peek() != '(') {
        return false;
      }
      stack.pop();
    }
}