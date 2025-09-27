/*
- Given the head of a singly linked list, reverse the list, 
  and return the reversed list.

Example 1:
Input: head = [1,2,3,4,5]
Output: [5,4,3,2,1]

Example 2:
Input: head = [1,2]
Output: [2,1]

Example 3:
Input: head = []
Output: []
*/
class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
  @override
  String toString() {
    if (next == null) return '$val';
    return '$val -> $next';
  }
}

ListNode? reverseList(ListNode? head) {
  ListNode? current = head;
  ListNode? previous;

  while (current != null) {
    var next = current.next;
    current.next = previous;
    previous = current;
    current = next;
  }
  return previous;
}

void main() {
  ListNode node4 = ListNode(4, null);
  ListNode node3 = ListNode(3, node4);
  ListNode node2 = ListNode(2, node3);
  ListNode head = ListNode(1, node2);
  print(head.toString());

  print(reverseList(head));
}
