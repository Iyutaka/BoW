#!/bin/bash

# ログファイルの場所
LOG_FILE=~/hdd_health.log

# Gmailの設定
EMAIL="hikaru.qw731@gmail.com"  # 送信先メールアドレス
SUBJECT="HDD 健康チェックの結果"
MESSAGE="HDD 健康チェックの結果をお送りいたします。"

# HDD 健康チェック
echo "Health Check on $(date)" >> $LOG_FILE
DISKS=("/dev/disk0")
for DISK in "${DISKS[@]}"; do
  echo "Checking $DISK ..." >> $LOG_FILE
  smartctl -H $DISK >> $LOG_FILE 2>&1
  smartctl -A $DISK >> $LOG_FILE 2>&1
done

echo "--------------------" >> $LOG_FILE

# uuencodeでログファイルを添付してメール送信
uuencode $LOG_FILE $(basename $LOG_FILE) | mail -s "$SUBJECT" $EMAIL << EOF
$MESSAGE

EOF
