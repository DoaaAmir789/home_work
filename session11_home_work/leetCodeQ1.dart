/*
- Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
- You must implement a solution with a linear runtime complexity and use only constant extra space.


Example 1:
Input: nums = [2,2,1]
Output: 1

Example 2:
Input: nums = [4,1,2,1,2]
Output: 4

Example 3:
Input: nums = [1]
Output: 1

Each element in the array appears twice except for one element which appears only once.


*/

void main() {
  List<int> nums = [4, 1, 2, 1, 2];
  print(singleNumber(nums));
}

int singleNumber(List<int> nums) {
  Set<int> seen = {};

  for (int i = 0; i < nums.length; i++) {
    int current = nums[i];
    if (seen.contains(current)) {
      seen.remove(current);
    } else {
      seen.add(current);
    }
  }
  return seen.first;
}
