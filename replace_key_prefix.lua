-- 字符串拆分函数封装
local function split(str, separator)
    local startIndex = 1
    local splitIndex = 1
    local result = {}
    while true do
        local nFindLastIndex = string.find(str, separator, startIndex)
        if not nFindLastIndex then
            result[splitIndex] = string.sub(str, startIndex, string.len(str))
            break
        end
        result[splitIndex] = string.sub(str, startIndex, nFindLastIndex - 1)
        startIndex = nFindLastIndex + string.len(separator)
        splitIndex = splitIndex + 1
    end
    return result
end

-- key前缀替换主逻辑
local prefixToMatch = KEYS[1]
local newPrefix = KEYS[2]
local ks = redis.call('KEYS', prefixToMatch..'*')
for i = 1, #ks do
    local arr = split(ks[i], prefixToMatch..':')
    redis.call('RENAME', ks[i], newPrefix..":"..arr[2])
end
return "OK"
