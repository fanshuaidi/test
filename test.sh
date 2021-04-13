#!/bin/bash
for x in `awk -F ':' '{print $1}' test.txt|sort|uniq`#利用awk分割每行，sort排序，uniq去重得到[]序列
do 
    echo "[$x]" #输出[XXXXXXX]
    awk -v y=$x -F ':' '$1==y {print $2}' test.txt #获得每行字符串，匹配与[XXXXXXX]相同的：后序列，并输出
done

#O(n^2) n为行数
#限制：awk后的参数只能是file，如果可以是字符流的话会简化许多
