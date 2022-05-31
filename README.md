this project is a tool box with some scripts written in lua and shell, tries to make redis batch operation easy.

## how to use
#### 1. count the keys with given key prefix 'xxx'
```
./do.sh match_key.lua xxx
```
#### 2. find the keys with given key prefix 'xxx' then rename them with a new prefix 'kkk'
```
./do.sh rename_key.lua xxx kkk          // xxx:name => kkk:xxx:name
```
#### 3. find the keys with given key prefix 'xxx' then replace them with a new prefix 'kkk'
```
./do.sh rename_key.lua xxx kkk          // xxx:name => kkk:name
```
#### the result will be like:
```
--------Task start----------
start time: 2022-05-31 02:25:29

> current shell script: ./do.sh
> the input arg number: 2
> lua script file name: match_key.lua
> the prefix to change: xxx
> new prefix to be add: kkk
> number of keys processed:
(integer) 3

end time: 2022-05-31 02:25:29
-------Task end------------
```
