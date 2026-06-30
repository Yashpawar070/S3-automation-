#!/bin/bash


create_bucket() {

read -p "Enter bucket name:  " bucket

aws s3 mb s3://$bucket

}

upload_files() {

read -p "Bucket Name " bucket
read -p "File path: " file

aws s3 cp $file s3://$bucket/

}

downloads_file() {

read -p "Bucket name: " bucket
read -p "File name: " file

aws s3 cp s3://$bucket/$file .

}

delete_file() {

read -p "Bucket name: " bucket
read -p "File path: " file

aws s3 rm s3://$bucket/$file

}

delete_bucket() {

read -p "Enter name: "  bucket
aws s3 rb s3://$bucket

}

while true

do

echo "1 Create_bucket"
echo "2 upload_file"
echo "3 Downloas_files"
echo "4 Delete files"
echo "5 Delete bucket"
echo "6 exit"

read -p "Enter choice: " choice

case $choice in 

1) create_bucket ;;
2) upload_files ;;
3) downloads_file ;;
4) delete_file ;;
5) delete_bucket ;;
6) exit ;; 
*) echo "Invalid choice"
esac
done 
















