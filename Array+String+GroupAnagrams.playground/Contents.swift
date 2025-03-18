import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var map = [String: [String]]()
    for str in strs {
        map[String(str.sorted()), default: []].append(str)
    }
    return Array(map.values)
}

print(groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]))
print(groupAnagrams([""]))
print(groupAnagrams(["a"]))
