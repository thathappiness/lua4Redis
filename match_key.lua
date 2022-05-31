local ks = redis.call('KEYS', KEYS[1]..'*')
return #ks
