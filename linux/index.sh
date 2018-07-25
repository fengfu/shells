#!/bin/bash
# 工具箱入口
# @author: qufengfu@gmail.com

echo 欢迎使用Linux开发工具箱,本工具箱提供以下问题的排查辅助:
echo 1.Load高
echo 2.GC问题
echo 3.Swap高
echo 4.JVM参数检查

read -p "请输入选项编号:" num
echo 您的选择是: $num
echo 1.统计Swap使用情况
echo 2.关闭Swap

read -p "请输入:" num
if [ $num -eq '1' ];then
  sh show_swap_processes.sh
elif [ $num -eq '2' ];then
  echo 关闭Swap
fi
