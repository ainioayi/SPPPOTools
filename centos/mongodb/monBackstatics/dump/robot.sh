#!/bin/bash
#delete_date=`date -d "5 days ago" +"%Y-%m-%d"`
delete_date1=`date -d "1 days ago" +"${delete_date}"`
name[0]="备份robotTask大于或等于${delete_date}数据"
execSQL[0]='{"startTime":{$gte:ISODate("'${delete_date1}T16:00:00Z'")}}'
collection[0]='robotTask'
length=${#name[@]}