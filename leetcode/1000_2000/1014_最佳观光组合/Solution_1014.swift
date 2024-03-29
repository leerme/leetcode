/*
 给你一个正整数数组 values，其中 values[i] 表示第 i 个观光景点的评分，并且两个景点 i 和 j 之间的 距离 为 j - i。

 一对景点（i < j）组成的观光组合的得分为 values[i] + values[j] + i - j ，也就是景点的评分之和 减去 它们两者之间的距离。

 返回一对观光景点能取得的最高分。

  

 示例 1：

 输入：values = [8,1,5,2,6]
 输出：11
 解释：i = 0, j = 2, values[i] + values[j] + i - j = 8 + 5 + 0 - 2 = 11
 示例 2：

 输入：values = [1,2]
 输出：2
  

 提示：

 2 <= values.length <= 5 * 104
 1 <= values[i] <= 1000

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/best-sightseeing-pair
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

class Solution_1014 {
    // 双层for循环 超时
//    func maxScoreSightseeingPair(_ values: [Int]) -> Int {
//        var maxScore = 0;
//        for i in 0..<values.count-1 {
//            for j in i+1..<values.count {
//                maxScore = max(maxScore, values[i]+values[j]+i-j);
//            }
//        }
//        return maxScore
//    }

    
//    dp来做，稍微给这个公式变形成A[i]+i+A[j]-j，这样就可以看成是左A[i]+i和右A[j]-j两部分和的最大值。随着遍历数组，我们对两部分和取最大值，并且若当前的值—下标对之和比之前更大，我们就更新left部分的值即可。
    func maxScoreSightseeingPair(_ values: [Int]) -> Int {
        var left = values[0];
        var res = 0;
        for i in 1..<values.count {
            res = max(res, left+values[i]-i);
            left = max(left, values[i]+i);
        }
        return res;
    }
}
