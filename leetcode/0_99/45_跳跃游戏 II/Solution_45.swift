/*
 给你一个非负整数数组 nums ，你最初位于数组的第一个位置。
 数组中的每个元素代表你在该位置可以跳跃的最大长度。
 你的目标是使用最少的跳跃次数到达数组的最后一个位置。
 假设你总是可以到达数组的最后一个位置。
 示例 1:
 输入: nums = [2,3,1,1,4]
 输出: 2
 解释: 跳到最后一个位置的最小跳跃数是 2。
      从下标为 0 跳到下标为 1 的位置，跳 1 步，然后跳 3 步到达数组的最后一个位置。
 示例 2:
 输入: nums = [2,3,0,1,4]
 输出: 2
 提示:
 1 <= nums.length <= 10^4
 0 <= nums[i] <= 1000
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/jump-game-ii
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation
class Solution_45 {
    func jump(_ nums: [Int]) -> Int {
        var step = 0;
        var end = 0;
        var maxPosition = 0;
        for i in 0..<nums.count-1 {
            maxPosition = max(maxPosition, i + nums[i]);
            if (i == end) {
                end = maxPosition;
                step += 1;
            }
        }
        return step;
    }
}
