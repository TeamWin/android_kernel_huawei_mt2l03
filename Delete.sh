#!/bin/bash

file_list=`find ./kernel/`
echo $file_list > file_list.txt

for file in $file_list
do
	#echo "$file"
	if [ -d $file ]; then
	    echo "skip $file"
	else
	    sed -i -e '/BU5D[0-9]\{5\}/d' $file
	    sed -i -e '/BK4D[0-9]\{5\}/d' $file
	    sed -i -e '/DTS[0-9]\{13\}/d' $file
	    #sed -i -e '/hanfeng/d' $file
	    #sed -i -e '/zhouzuohua/d' $file
	    #sed -i -e '/yuxuesong/d' $file
	    #sed -i -e '/durui/d' $file
	    #sed -i -e '/yinzhaoyang/d' $file
	    #sed -i -e '/zhangxiangdang/d' $file
	    #sed -i -e '/chuyuyan/d' $file
	    #sed -i -e '/zhangsheng/d' $file
    	    #sed -i -e '/mazhenhua/d' $file
	    #sed -i -e '/wuxiaojin/d' $file
	    #sed -i -e '/haoqingtao/d' $file
	    #sed -i -e '/wangquanli/d' $file
	    #sed -i -e '/guhaifeng/d' $file
	    #sed -i -e '/h00105634/d' $file
	    #sed -i -e '/dumingliang/d' $file
	    #sed -i -e '/liangzonglian/d' $file
	    #modify for update qualcom 2110 baseline begin
	    #modify for wifi baseline 20091126 begin
	    #sed -i -e 's/lxy: //' $file
	fi
done
