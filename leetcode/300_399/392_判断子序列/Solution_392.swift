/*给定字符串 s 和 t ，判断 s 是否为 t 的子序列。
 
 字符串的一个子序列是原始字符串删除一些（也可以不删除）字符而不改变剩余字符相对位置形成的新字符串。（例如，"ace"是"abcde"的一个子序列，而"aec"不是）。

 进阶：

 如果有大量输入的 S，称作 S1, S2, ... , Sk 其中 k >= 10亿，你需要依次检查它们是否为 T 的子序列。在这种情况下，你会怎样改变代码？

 致谢：

 特别感谢 @pbrother 添加此问题并且创建所有测试用例。

  

 示例 1：

 输入：s = "abc", t = "ahbgdc"
 输出：true
 示例 2：

 输入：s = "axc", t = "ahbgdc"
 输出：false
  

 提示：
 0 <= s.length <= 100
 0 <= t.length <= 10^4
 两个字符串都只由小写字符组成。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/is-subsequence
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

class Solution_392 {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var i = 0,j = 0;
        while (i<s.count && j<t.count) {
            if s[s.index(s.startIndex, offsetBy: i)] == t[t.index(t.startIndex, offsetBy: j)]{
                i+=1;
                j+=1;
            }else{
                j+=1;
            }
        }
        return i==s.count;
    }
//    func isSubsequence(_ s: String, _ t: String) -> Bool {
//        var dic:Dictionary = Dictionary<Character, Array<Int>>.init();
//        for (index,item) in t.enumerated() {
//            if s.contains(item){
//                if (dic[item] != nil) {
//                    dic[item]!.append(index);
//                }else{
//                    dic[item] = [index];
//                }
//            }
//        }
//
//        var i = -1;
//        var mach = false;
//        for (_,item) in s.enumerated() {
//            if (dic[item] != nil) {
//                mach = false;
//                for (_,index) in dic[item]!.enumerated() {
//                    if index > i{
//                        i = index
//                        mach = true;
//                        break
//                    }
//                }
//                if !mach {
//                    return false
//                }
//            }else{
//                return false
//            }
//        }
//        return true;
//    }
}
//class Solution {
//public:
//    bool isSubsequence(string s, string t) {
//        int n = s.size(), m = t.size();
//
//        vector<vector<int> > f(m + 1, vector<int>(26, 0));
//        for (int i = 0; i < 26; i++) {
//            f[m][i] = m;
//        }
//
//        for (int i = m - 1; i >= 0; i--) {
//            for (int j = 0; j < 26; j++) {
//                if (t[i] == j + 'a')
//                    f[i][j] = i;
//                else
//                    f[i][j] = f[i + 1][j];
//            }
//        }
//        int add = 0;
//        for (int i = 0; i < n; i++) {
//            if (f[add][s[i] - 'a'] == m) {
//                return false;
//            }
//            add = f[add][s[i] - 'a'] + 1;
//        }
//        return true;
//    }
//};
