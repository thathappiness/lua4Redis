local prefixToMatch = KEYS[1]
local newPrefix = KEYS[2]
local ks = redis.call('KEYS', prefixToMatch..'*')
for i = 1, #ks do
 redis.call('RENAME', ks[i], newPrefix..":"..tostring(ks[i]))
end
return "OK"
