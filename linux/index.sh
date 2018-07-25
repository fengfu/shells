#!/bin/bash
# 工具箱入口
# @author: qufengfu@gmail.com

echo "      ___   _________   ________   ________   ___        ___  __     ___   _________     "
echo "     |\  \ |\___   ___\|\   __  \ |\   __  \ |\  \      |\  \|\  \  |\  \ |\___   ___\   "
echo "     \ \  \ |___ \  \_|\ \  \|\  \  \  \|\  \  \  \     \ \  \/  /|_\ \  \ |___ \  \_|   "
echo "   __ \ \  \    \ \  \  \ \  \ \  \  \  \ \  \  \  \     \ \   ___  \  \  \    \ \  \    "
echo "  |\   \_\  \    \ \  \  \ \  \ \  \  \  \ \  \  \  \____ \ \  \  \  \  \  \    \ \  \   "
echo "  \ \________\    \ \__\  \ \_______\  \_______\  \_______ \ \__\  \__\  \__\    \ \__\  "
echo "   \|________|     \|__|   \|_______| \|_______| \|_______| \|__| \|__| \|__|     \|__|  "
echo "                                                                                         "

echo "欢迎使用Linux开发工具箱,本工具箱提供以下问题的排查辅助:"
echo "1.Load高"
echo "2.GC问题"
echo "3.Swap高"
echo "4.JVM参数检查"
echo "5.工具安装"
echo "0.退出"

read -p "请输入选项编号:" num
echo "您的选择是:" $num

if [ $num -eq '1' ];then
  echo "1.显示Java线程栈的CPU时间占比"
  echo "2.线程CPU时间占比排行(VJTop)"
  echo "3.生成火焰图(10分钟)"
  echo "4.生成飞行记录JFR(10分钟)"
  read -p "请输入:" num
elif [ $num -eq '2' ];then
  echo "1.FullGC时间久"
  echo "2.FullGC不断"
  echo "3.FullGC频繁"
  echo "4.YoungGC时间久"
elif [ $num -eq '3' ];then
  echo "1.统计Swap使用情况"
  echo "2.关闭Swap"
  read -p "请输入:" num

  if [ $num -eq '1' ];then
    echo "执行show_swap_processes.sh..."
    sh show_swap_processes.sh
  elif [ $num -eq '2' ];then
    echo "关闭Swap"
  fi
elif [ $num -eq '4' ];then
  echo "敬请期待..."
elif [ $num -eq '5' ];then
  echo "1.安装async-profiler"
  echo "2.安装唯品会-VJTop"
elif [ $num -eq '0' ];then
  echo "Goodbye"
fi
